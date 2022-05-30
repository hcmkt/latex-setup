#!/bin/sh

sudo apt update
sudo apt upgarade -y
sudo apt install texlive-lang-japanese texlive-science -y
sudo wget -P /usr/share/texlive/texmf-dist/tex/latex/ http://mirrors.ctan.org/macros/latex/contrib/here/here.sty
sudo mktexlsr
echo "----- Please set C:/latex-tools.sh -----"
