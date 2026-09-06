#!/bin/sh
# Renders the problem set source to a runnable .ipynb beside it.
#
# The two pandoc extensions on `--to` are not cosmetic: without them the `a.`/`b.` parts of the problem come out as `1.` and every list restarts at one, so the notebook would say "1." where the source says "c.".
#
# The .qmd sets `execute: enabled: false`, so nothing is run at render time and this needs no kernel --- but it does need the .venv, because quarto's jupyter shim imports yaml before it does anything else and the system python3 may not have it.
set -eu
cd "$(dirname "$0")"

uv sync --quiet
QUARTO_PYTHON="$PWD/.venv/bin/python3" quarto render PS7_bacterial-growth.qmd --to ipynb+fancy_lists+startnum

# Quarto bakes this machine's absolute path to the kernel into the notebook's kernelspec.
# It is not part of the nbformat spec and no client needs it --- `name` is what VSCode and JupyterLab resolve a kernel from --- so drop it.
uv run --quiet python - PS7_bacterial-growth.ipynb <<'PY'
import json, sys
path = sys.argv[1]
nb = json.load(open(path))
if nb.get("metadata", {}).get("kernelspec", {}).pop("path", None):
    json.dump(nb, open(path, "w"), indent=1, ensure_ascii=False)
PY

echo "Wrote PS7_bacterial-growth.ipynb"
