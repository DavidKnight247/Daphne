#! /bin/sh

echo "Loading $1\n";
fullfilename=$(basename "$1");
filename="${fullfilename%.*}";
framefile="${1%.*}";
echo "daphne.bin $filename vldp -framefile $framefile.txt\n";
exec ./daphne.bin $filename vldp -framefile $framefile.txt -gcwrom $1;
