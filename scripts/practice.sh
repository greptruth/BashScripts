#!/bin/bash
#hashbang shebang
#chmod +x practice
#./practice

# ls
# touch
# #.................fxvkff
# rm *
# echo
# echo "hfhd      jfesfjskfjs dsjfhsjf"
# rm this is multiple file names
# rm "this is one file name"
# alias cds="cd SHELDON" #not to be use in scripts
# []
# [[  ]]
# varname=vardata #no space
# varname="vardata with spaces"
# echo $varname #parameter expansion
# echo "$varname" #good practice


#DIR=$(cd "$(dirname "$0")"; pwd)
#echo $DIR
#DIR="$(dirname "$DIR")"
#$@ $1 $2 $#


echo $(cd "$(dirname "$0")"; pwd)
DIR="$(dirname "$(dirname $(cd "$(dirname "$0")"; pwd))")""satya"
echo $DIR
echo $(cd "$(dirname "$0")"; pwd)




