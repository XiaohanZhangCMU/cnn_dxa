#!/bin/bash
source activate py2
scriptdir=/home/xzhang11/Planet/Libs/MD++.git/scripts/work/pydxa/ni/
dirname=/home/xzhang11/Planet/Libs/MD++.git/runs/pydxa/ni/
echo $dirname

cd ${dirname}
shopt -s nullglob
num_lammps_files=(ni*lammps.gz)
numlammpsfiles=${#num_lammps_files[@]}  
echo $numlammpsfiles
/home/xzhang11/usr/ovito/ovito-2.7.1-x86_64/bin/ovitos ${scriptdir}/DXA_analysis.py $numlammpsfiles

cd $scriptdir
