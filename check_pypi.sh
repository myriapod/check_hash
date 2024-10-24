#!/bin/bash

# Si le paquet téléchargé vient de pypi

#package_name=$1
hash=$1
file_downloaded=$2


file_sum=$(sha256sum -file $file_downloaded)

