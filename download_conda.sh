#!/bin/bash

read -p "Anaconda version: (ex: 2024.06) " anacondaVer
pathAnaconda="/home/codes/ANACONDA3/$anacondaVer"

if [ ! -d $pathAnaconda ]; then echo "Version $pathAnaconda non présente dans le système"; exit; fi

export PATH=/home/codes/ANACONDA3/$anacondaVer/bin:$PATH

read -p "Paquet à installer: " package
read -p "Channel (condaforge, anaconda....): " channel

mkdir $package

old_pkgs_dir=$CONDA_PKGS_DIRS
export CONDA_PKGS_DIRS=$package

conda install --download-only $package=$packageVer -c $channel

echo "packages available at $CONDA_PKGS_DIRS"