# MCSB Bootcamp --- Project 7: Bacterial growth and parameter fitting

`PS7_bacterial-growth.qmd` is the source of the problem set, lifted unchanged from the full course repository so that it can be edited and tested on its own.
Edit the `.qmd`; the `.ipynb` students open is generated from it and is not tracked here.
The experimental data that part (b) loads is not part of this repository.

## QuickStart

1. Install [uv](https://docs.astral.sh/uv/getting-started/installation/): `curl -LsSf https://astral.sh/uv/install.sh | sh`
2. Install [Quarto](https://quarto.org/docs/get-started/) (on macOS, `brew install quarto`).
3. Generate the notebook: `./make_ipynb.sh` --- this creates the `.venv` on first run and writes `PS7_bacterial-growth.ipynb`.
4. Register that environment as a Jupyter kernel, once: `uv run python -m ipykernel install --user --name mcsb-ps7 --display-name "MCSB PS7"`
5. Open `PS7_bacterial-growth.ipynb` in VSCode and pick **MCSB PS7** from the kernel picker at the top right.
