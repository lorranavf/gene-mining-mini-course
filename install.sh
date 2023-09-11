#!/bin/bash

# from repo apt (ubuntu store)
sudo apt install mafft
sudo apt install iqtree
sudo apt install hmmer
sudo apt install ncbi-blast+
sudo apt install emboss

# from repo pip (python store)
pip install pandas
pip install biopython
pip install pybiolib
pip install cialign
pip install gdown

# from other sources
mkdir programs
cd programs

curl -O -L https://github.com/UCLOrengoGroup/cath-tools/releases/download/v0.16.10/cath-resolve-hits.ubuntu-20.04
sudo mv cath-resolve-hits.ubuntu-20.04 /usr/bin/cath-resolve-hits
chmod 755 /usr/bin/cath-resolve-hits

gdown --id 1msW1RpyZHW9pUOANH4phI6tYenh4gQV5 --output deeploc2.tar.gz
pip install deeploc2.tar.gz

gdown --id 1gbTfAi_i6HnBGkLtvbo6_nocKUltOeo9 --output signalp6.tar.gz
tar -xzvf signalp6.tar.gz
pip install signalp6_fast/signalp-6-package/
SIGNALP_DIR=$(python3 -c "import signalp; import os; print(os.path.dirname(signalp.__file__))" )
sudo cp -r signalp6_fast/signalp-6-package/models/* $SIGNALP_DIR/model_weights/

