# MCSB Bootcamp --- Project 7: Bacterial growth and parameter fitting

`PS7_bacterial-growth.qmd` is the source of the problem set, taken from the full course repository, and `PS7_bacterial-growth.ipynb` is the notebook rendered from it.
Both are committed: propose changes against whichever of the two is more convenient.
The experimental data that part (b) loads is not part of this repository.

## QuickStart

1. Install [uv](https://docs.astral.sh/uv/getting-started/installation/): `curl -LsSf https://astral.sh/uv/install.sh | sh`
2. Install [Quarto](https://quarto.org/docs/get-started/) (on macOS, `brew install quarto`).
3. Regenerate the notebook after editing the `.qmd`: `quarto render PS7_bacterial-growth.qmd`
4. Create the environment and register it as a Jupyter kernel, once: `uv sync && uv run python -m ipykernel install --user --name mcsb-ps7 --display-name "MCSB PS7"`
5. Open `PS7_bacterial-growth.ipynb` in VSCode and pick **MCSB PS7** from the kernel picker at the top right.
