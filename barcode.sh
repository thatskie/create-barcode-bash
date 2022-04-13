#!/bin/bash
read -p "Enter Data: " data
if [[ -z ${data} ]] ; then
    echo "No Data was encoded!"
else
    read -p "Enter File Name: " fname
    if [[ -z ${fname} ]] ; then
        export fname="default"
    fi
    wget "https://barcode.tec-it.com/barcode.ashx?data=${data}" -O ${fname}.jpg
    echo "${fname}.jpg was saved to directory"
fi