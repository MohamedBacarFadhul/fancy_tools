#!/bin/bash

mkdir ~/src
~/src git clone https://github.com/MohamedBacarFadhul/fancy_tools.git
chm1="~/src"
var1="source $way/.aliases"
var3="source $way/fancy_function.sh"
var2=$(<~/.bashrc)
var4="export PATH=$PATH:~/bin"



if [ -d ~/src ]; then
        echo "le fichier src existe déjà "

fi

if [ -d ~/scr/bin ]; then

        echo "fancy_tools: fichier déjà cloner "
else


if grep -q "$var1" <<< "$var2"; then
        echo "Le fichier '.aliases' se trouve déjà dans le .bashrc"
else
        echo "source $chm1/.aliases" >> ~/.bashrc
        echo "Ajout de :'.aliases' "
fi


if grep -q "$var3" <<< "$var2"; then
                        echo "Le fichier 'fancy_function.sh' existe déjà dans .bashrc"
else
        echo "source $chm1/fancy_function.sh" >> ~/.bashrc
        echo "Ajout du fichier"
fi

if [ -d ~/bin ]
then
        echo "Ce dossier est déjà présent"
else
        mkdir ~/bin
fi


if  grep -q "$var4" <<< "$var2"; then
        echo "fichier bin déjà existant dans le PATH"
else
        echo $var3 >> ~/.bashrc
fi

cp ~/src/bin/updateFancyTools ~/bin/updateFancyTools
                                                     
