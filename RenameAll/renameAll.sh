#!/bin/bash
# Author: Alektos

soft_name=$0   # nome script
dir=$1         # directory
ext=$2         # estensione files
new=$3         # nuovo nome per il files
ren="mv"

function usage {
    echo "Uso: "$soft_name" <dir> <ext> <new_name>";
    echo "Programma che rinomina tutti i files con estensione <ext>"
    echo "all'interno di una directory <dir>";
    echo "";
}

function renameAll {
    i=0

    for file_name in $dir*.$ext
    do
        if [ $file_name ==  $dir"*.$ext" ]
        then
            echo "Attenzione:"
            echo "Nessun files con estensione '"$ext"' trovato!";
        else
            let i=i+1 # incremento il contatore
            $ren $file_name $dir$new$i.$ext
            echo "> "$file_name $dir$new$i.$ext" > done"
        fi
    done
    echo "Rinominati "$i" files"
}

if [ $# != 3 ] # conto il numero di argomenti
then
    usage;
else
    renameAll;
fi

