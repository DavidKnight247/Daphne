#! /bin/sh

echo "Loading $1";
fullfilename=$(basename "$1");
filename="${fullfilename%.*}";
framefile="${1%.*}";


#specify if we need to do HW downscaling for resolution widths greater than 320
if [ $filename = "laireuro" ]
then
echo "daphne.bin $filename vldp -framefile $framefile.txt -x 360 -y 288";
exec ./daphne.bin "$filename" vldp -framefile "$framefile".txt -x 360 -y 288 -gcwrom "$1";
#elif [ $filename = "gpworld" ]
#then
#echo "daphne.bin $filename vldp -framefile $framefile.txt -x 360 -y 256";
#exec ./daphne.bin "$filename" vldp -framefile "$framefile".txt -x 360 -y 256 -gcwrom "$1";
elif [ $filename = "firefox" ]
then
echo "daphne.bin $filename vldp -framefile $framefile.txt -x 512 -y 512";
exec ./daphne.bin "$filename" vldp -framefile "$framefile".txt -x 512 -y 512 -gcwrom "$1";
else
echo "daphne.bin $filename vldp -framefile $framefile.txt";
exec ./daphne.bin "$filename" vldp -framefile "$framefile".txt -gcwrom "$1";
fi
