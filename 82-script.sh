#!/bin/bash

# This script dowloads some victim (for legal purposes , legal files) files,
# creates directories, compress, and reports.
# Murillo 12/2/2023
# Creates Directories

mkdir ~/zip
mkdir ~/gzip
mkdir ~/bzip2
mkdir ~/xz
cd ~/zip

# Download files
wget  "PUT A WEBSITE HERE"

#Copy to other directories
cp ~/zip/*.pdf ~/gzip
cp ~/zip/*.pdf ~/bzip2
cp ~/zip/*.pdf ~/xz

# zip the ~/zip directory
echo "Yo, these are zip files." >> ~/compress_report01.txt
zip -v answer.zip *
rm *.pdf
ls -la ~/zip/* >> ~/compress_report01.txt
echo "Hey these are unzip files." >> ~/compress_report01.txt
unzip answer.zip
ls -la ~/zip/* >> ~/compress_report01.txt

#add the source code
cat ~/scripts/$0 >> ~/compress_report01.txt

#Show the results
cat ~/compress_report01.txt

