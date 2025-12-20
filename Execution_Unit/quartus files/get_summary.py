"""Collect Fitter Summary boxes from Quartus `FP.fit.rpt` files.

Searches under the given root (default: this script's directory) for
`FP.fit.rpt` files, extracts the boxed "Fitter Summary" section from each
report, replaces the title "Fitter Summary" with "(candidate) Summary" where
`(candidate)` is the name of the folder containing the report, and appends the
result to `quartus_summaries.txt` in the root directory.

Usage:
    python get_summary.py
    python get_summary.py --root "C:\path\to\quartus files" --out summaries.txt
"""

from __future__ import annotations

import argparse
from pathlib import Path
from typing import List, Optional


def extract_fitter_summary(lines: List[str]) -> Optional[List[str]]:
    """Return the lines of the Fitter Summary boxed section, or None if not found.

    The function looks for a line containing '; Fitter Summary' and then
    expands upward to the nearest box top (a line starting with '+') and
    downward to the third box border after that top (i.e. the closing border
    that follows the two-column summary table). This captures everything
    between the first '+' and the third '+' inclusive, matching the user's
    request.
    """
    for i, line in enumerate(lines):
        if '; Fitter Summary' in line:
            # find top border (search backwards)
            start = i
            while start > 0 and not lines[start].lstrip().startswith('+'):
                start -= 1
            # find the third '+' line after start (inclusive)
            plus_count = 0
            end = start
            while end < len(lines):
                if lines[end].lstrip().startswith('+'):
                    plus_count += 1
                    if plus_count == 3:
                        return lines[start : end + 1]
                end += 1
            # fallback: return from start to first subsequent '+' if 3 not found
            # (preserves previous behavior)
            end = start
            while end < len(lines) and not lines[end].lstrip().startswith('+'):
                end += 1
            return lines[start : min(end + 1, len(lines))]
    return None


def process_report(rpt_path: Path) -> Optional[str]:
    """Read `rpt_path` and return the modified fitter summary as a string.

    Returns None if no Fitter Summary block is found.
    """
    try:
        text = rpt_path.read_text(errors='ignore').splitlines()
    except Exception:
        return None

    block = extract_fitter_summary(text)
    if not block:
        return None

    candidate = rpt_path.parent.name
    # join and replace the title text
    joined = "\n".join(block)
    replaced = joined.replace('Fitter Summary', f'{candidate} Summary')
    return replaced


def find_reports(root: Path) -> List[Path]:
    """Return list of FP.fit.rpt files under `root` (recursive)."""
    return list(root.rglob('FP.fit.rpt'))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--root', '-r', type=Path, default=Path(__file__).resolve().parent,
                        help='Root folder to search (default: script directory)')
    parser.add_argument('--out', '-o', type=Path, default=None,
                        help='Output summaries file (default: <root>/quartus_summaries.txt)')
    args = parser.parse_args()

    root = args.root
    out_path = args.out or (root / 'quartus_summaries.txt')

    reports = find_reports(root)
    if not reports:
        print('No FP.fit.rpt files found under', root)
        return

    summaries: List[str] = []
    for rpt in sorted(reports):
        summary = process_report(rpt)
        if summary:
            summaries.append(summary)
            print(f'Collected summary from: {rpt.parent.name}')
        else:
            print(f'No Fitter Summary in: {rpt}')

    if summaries:
        out_path.write_text('\n\n'.join(summaries) + '\n', encoding='utf-8')
        print(f'Wrote summaries to: {out_path} ({len(summaries)} entries)')
    else:
        print('No summaries extracted.')


if __name__ == '__main__':
    main()
