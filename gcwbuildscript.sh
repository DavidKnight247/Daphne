#! /bin/sh

cd vldp2;
make -f Makefile.gcw0;
cd ..;
cp Makefile.vars.gcw0 Makefile.vars;
make;
mv ../daphne.bin gcwopk;
mksquashfs gcwopk/ Daphne.opk -all-root -noappend -no-exports -no-xattrs;
