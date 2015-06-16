#!/bin/bash
if [ -n "$1" ] 
then
  cp $1/config.tex config.tex
  if [ -n "$2" ] 
  then 
	  ./adif2contacts.pl < $2 > ./contacts.tex
    export TEXINPUTS=.:./Layout//:../../:
    pdflatex Layout/A4_24labels/labelmaker.tex &&
# pdflatex Layout/A4_4cards/qsl.tex &&
    #pdflatex Layout/A4_4cards/qsl-back.tex &&
    #pdflatex Layout/A4_4cards/qsl-front.tex &&
    #pdflatex Layout/A4_4cards/printA4-front.tex &&
    #pdflatex Layout/A4_4cards/printA4-back.tex &&
    rm *.aux *.log 
#contacts.tex
  fi
  rm config.tex
else
  echo "Give some input!"
fi
