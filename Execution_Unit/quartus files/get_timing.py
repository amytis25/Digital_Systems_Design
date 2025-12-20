"""Collect timing output files from Quartus candidate folders.

Searches the tree under the given root for directories named "timing".
For each such directory the script looks in its parent (the candidate folder)
for `FP.vho` and `FP_vhd.sdo`. Found files are copied into a `timing_files`
directory under the root and renamed to `(candidate).vho` and `(candidate).sdo`.

Usage:
	python get_timing.py            # runs on the script's parent folder
	python get_timing.py --root "C:\path\to\quartus files"

By default the script will not overwrite existing files unless `--force`
is passed.
"""

from __future__ import annotations

import argparse
import os
import shutil
from pathlib import Path
from typing import Iterable


def find_timing_dirs(root: Path) -> Iterable[Path]:
	"""Yield directories named 'timing' under `root`.

	Only exact-name matches (case-sensitive) are considered. If you need case-
	insensitive matching on a case-insensitive filesystem, this still works.
	"""
	for dirpath, dirnames, _ in os.walk(root):
		# Check immediate directory name quickly
		if Path(dirpath).name == "timing":
			yield Path(dirpath)
		# Otherwise continue walking; os.walk will traverse children anyway


def collect_files(root: Path, dest: Path, force: bool = False) -> int:
	"""Collect FP.vho and FP_vhd.sdo files and copy/rename them.

	Returns number of files copied.
	"""
	dest.mkdir(parents=True, exist_ok=True)
	copied = 0

	for timing_dir in find_timing_dirs(root):
		candidate_dir = timing_dir.parent
		candidate_name = candidate_dir.name

		# The timing outputs (.vho/.sdo) are located inside the timing directory.
		mapping = [
			(timing_dir / "FP.vho", dest / f"{candidate_name}.vho"),
			(timing_dir / "FP_vhd.sdo", dest / f"{candidate_name}.sdo"),
		]

		for src, dst in mapping:
			if not src.exists():
				print(f"Skipping missing: {src}")
				continue
			if dst.exists() and not force:
				print(f"Exists, skipping (use --force to overwrite): {dst}")
				continue

			try:
				shutil.copy2(src, dst)
				copied += 1
				print(f"Copied: {src} -> {dst}")
			except Exception as e:
				print(f"Failed to copy {src} -> {dst}: {e}")

	return copied


def main() -> None:
	parser = argparse.ArgumentParser(description="Collect FP timing files from Quartus runs")
	parser.add_argument("--root", "-r", type=Path, default=Path(__file__).resolve().parent,
						help="Root folder to search (default: the script's directory)")
	parser.add_argument("--dest", "-d", type=Path, default=None,
						help="Destination folder (default: <root>/timing_files)")
	parser.add_argument("--force", "-f", action="store_true", help="Overwrite existing files")

	args = parser.parse_args()

	root = args.root
	dest = args.dest or (root / "timing_files")

	print(f"Searching under: {root}")
	print(f"Destination: {dest}")

	copied = collect_files(root, dest, force=args.force)
	print(f"Done. Files copied: {copied}")


if __name__ == "__main__":
	main()

