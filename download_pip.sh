#!/bin/bash

read -p "Version de python utilisée: " pythonVer
read -p "Paquet à installer: " package
read -p "Version du paquet à installer: (appuyer sur Entrée si pas de version demandée)" packageVer

pathDownload=$package$packageVer-python$pythonVer

echo "Téléchargement de $package et des dépendances"
echo "Les paquets sont dans le dossier: $pathDownload"
mkdir $pathDownload

echo "Version :"
if [[ "$packageVer" == "" ]]
then
    echo "Dernière version compatible"
    cd $pathDownload
    pip download --python-version $pythonVer --only-binary=:all: $package 
else
    echo $2
    cd $1
    pip download --python-version $pythonVer --only-binary=:all: $package==$packageVer
fi