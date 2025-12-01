# Generate a .tvs file with random test vectors for the ExecUnit.
# Columns per line: A B FuncClass LogicFN ShiftFN AddnSub ExtWord Y Zero AltB AltBu

import random
from pathlib import Path

N = 64
NUM_VECTORS = 100
outfile = Path("Exec00.tvs")

WIDTH_HEX = (N + 3) // 4  # hex digits needed

def to_hex(width, value):
    return f"{value:0{width}X}"  # upper-case hex, zero-padded

mask = (1 << N) - 1

def generate_vectors(n, count):
    """Generate vectors with columns:
    A B FuncClass LogicFN ShiftFN AddnSub ExtWord Y Zero AltB AltBu
    Implements ExecUnit semantics described in the assignment.
    """
    lines = []
    mask64 = (1 << n) - 1

    def to_signed(x):
        return x if x < (1 << (n - 1)) else x - (1 << n)

    def ext_word(x):
        low32 = x & ((1 << 32) - 1)
        sign31 = (low32 >> 31) & 1
        top32 = ((-sign31) & ((1 << 32) - 1))
        return ((top32 << 32) | low32) & mask64

    for _ in range(count):
        A_u = random.getrandbits(n) & mask64
        B_u = random.getrandbits(n) & mask64

        # Control fields (2-bit fields)
        FuncClass = random.getrandbits(2)  # 0..3
        LogicFN = random.getrandbits(2)    # 0..3
        ShiftFN = random.getrandbits(2)    # 0..3
        AddnSub = random.randint(0, 1)     # 0 = add, 1 = sub
        ExtWord = random.randint(0, 1)     # 0 = full 64-bit, 1 = sign-extend 32-bit

        # Adder: compute S = A + B (or A - B) with carry-out and overflow
        if AddnSub == 0:
            tmp = A_u + B_u
        else:
            # A - B = A + (~B) + 1
            tmp = A_u + ((~B_u) & mask64) + 1

        S = tmp & mask64
        Cout = 1 if (tmp >> n) & 1 else 0

        A_sign = (A_u >> (n - 1)) & 1
        S_sign = (S >> (n - 1)) & 1
        if AddnSub == 0:
            Ovfl = 1 if (A_sign == ((B_u >> (n - 1)) & 1) and S_sign != A_sign) else 0
        else:
            Ovfl = 1 if (A_sign != ((B_u >> (n - 1)) & 1) and S_sign != A_sign) else 0

        Zero = 1 if S == 0 else 0

        # AltB (signed less-than) and AltBu (unsigned less-than)
        AltB = (Ovfl ^ S_sign) & 1
        AltBu = 1 if Cout == 0 else 0

        # SHIFT path candidates
        shift = B_u & 0x3F
        Y_LL = (A_u << shift) & mask64
        Y_RL = (A_u >> shift) & mask64
        A_s = to_signed(A_u)
        Y_RA = (A_s >> shift) & mask64

        # Left/Right base selection
        if (ShiftFN & 1) == 0:
            Y_LorS = S
            Y_R = Y_RL
        else:
            Y_LorS = Y_LL
            Y_R = Y_RA

        # Apply ExtWord if requested
        if ExtWord == 1:
            Y_LorS_ext = ext_word(Y_LorS)
            Y_R_ext = ext_word(Y_R)
        else:
            Y_LorS_ext = Y_LorS
            Y_R_ext = Y_R

        # final shift/arithmetic result selected by ShiftFN[1]
        if ((ShiftFN >> 1) & 1) == 0:
            Y_shift_or_arith = Y_LorS_ext & mask64
        else:
            Y_shift_or_arith = Y_R_ext & mask64

        # LOGIC path
        if LogicFN == 0:
            imm20 = B_u & ((1 << 20) - 1)
            sign = (imm20 >> 19) & 1
            top32 = ((-sign) & ((1 << 32) - 1))
            Y_logic = ((top32 << 32) | (imm20 << 12)) & mask64
        elif LogicFN == 1:
            Y_logic = (A_u ^ B_u) & mask64
        elif LogicFN == 2:
            Y_logic = (A_u | B_u) & mask64
        elif LogicFN == 3:
            Y_logic = (A_u & B_u) & mask64
        else:
            Y_logic = 0

        # Select final Y based on FuncClass
        if FuncClass == 0:
            Y = Y_shift_or_arith & mask64
        elif FuncClass == 1:
            Y = Y_logic & mask64
        elif FuncClass == 2:
            Y = AltB & 1
        elif FuncClass == 3:
            Y = AltBu & 1
        else:
            Y = 0

        Y = Y & mask64

        lines.append(
            f"{to_hex(WIDTH_HEX, A_u)} {to_hex(WIDTH_HEX, B_u)} {format(FuncClass, '02b')} {format(LogicFN, '02b')} {format(ShiftFN, '02b')} {AddnSub} {ExtWord} {to_hex(WIDTH_HEX, Y)} {Zero} {AltB} {AltBu}"
        )

    return lines

MARKER = "-- ===== Randomly Generated Test Cases ====="

header_line = "-- Columns: A B FuncClass LogicFN ShiftFN AddnSub ExtWord Y Zero AltB AltBu (hex hex int int int bit int hex bit bit bit)"

# Generate the random vectors
vectors = generate_vectors(N, NUM_VECTORS)

# If the file exists, preserve content up to the marker, otherwise create a basic header
if outfile.exists():
    text = outfile.read_text()
    if MARKER in text:
        before, _sep, _after = text.partition(MARKER)
        new_text = before.rstrip() + "\n" + MARKER + "\n" + "\n".join(vectors) + "\n"
    else:
        # append marker and vectors to existing file
        new_text = text.rstrip() + "\n\n" + MARKER + "\n" + "\n".join(vectors) + "\n"
else:
    # create file with header, marker and vectors
    new_text = header_line + "\n\n" + MARKER + "\n" + "\n".join(vectors) + "\n"

outfile.write_text(new_text)
print("Wrote/Updated:", outfile)
