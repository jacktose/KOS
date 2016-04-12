#!/bin/bash
set -ev

echo "Build using dummy assemblies."
wget --quiet https://github.com/KSP-KOS/KSP_LIB/blob/master/kos-${KSP_VERSION}.tar?raw=true -O kos-${KSP_VERSION}.tar

mkdir -p Resources
tar -xvf kos-${KSP_VERSION}.tar -C Resources/

python --version
pip --version
# workaround for not being able to use pip outside of a python project
export PATH=$HOME/.local/bin:$PATH
pip install --user $USER sphinx_rtd_theme