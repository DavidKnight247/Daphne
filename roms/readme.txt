DAPHNE supports a ROM system similar to that of MAME.  You can create "game name" directories and put uncompressed ROM images inside
them or you can just put a .ZIP file containing the rom images in this directory.

Example, for Dragon's Lair, you could either have:

	./lair.zip

OR

	./lair/dl_f2_u1.bin
	./lair/dl_f2_u2.bin
	etc ...


The daphne_log.txt file (create when daphne runs) 
will tell you which files DAPHNE is looking for.
You should use it to figure out where to put files if you are confused.
