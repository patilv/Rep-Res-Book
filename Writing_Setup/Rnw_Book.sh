##########
# Shell script to create directories & files for Reproducible Research in R/RStudio
# With LaTeX
# Christopher Gandrud
# Updated 16 July 2012
# Helpful information found in "The Linux Command Line: A Complete Introduction" (Shotts 2012)
##########

#!/bin/bash

cd /git_repositories/Rep-Res-Book

mkdir Source

cd /git_repositories/Rep-Res-Book/Source

## Create 15 chapters and add main source files and image directories
## Use loops for 14 Chapters

for i in `seq 1 14`;
do

    cd /git_repositories/Rep-Res-Book/Source

    CHP_NAME=Chapter$i 
 
    mkdir $CHP_NAME
    
    cd /git_repositories/Rep-Res-Book/Source/$CHP_NAME
    
    mkdir images$i

    ## Template Text

    CHAPTER="Chapter $i"
    CURRENT_TIME=$(date +"%x %r %Z")

cat > chapter$i.Rnw << _EOF_
% Chapter $CHAPTER For Reproducible Research in R and RStudio
% Christopher Gandrud
% Created: $CURRENT_TIME
% Updated: 

_EOF_

done

echo "Finished"