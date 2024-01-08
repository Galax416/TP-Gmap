#!/bin/sh
bindir=$(pwd)
cd /home/galax/Bureau/M1 Imagine/HAI714I_Modélisation_et_géométrie_discrète/gmap_exercise/src/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/galax/Bureau/M1\ Imagine/HAI714I_Modélisation_et_géométrie_discrète/gmap_exercise/build/gmap 
	else
		"/home/galax/Bureau/M1\ Imagine/HAI714I_Modélisation_et_géométrie_discrète/gmap_exercise/build/gmap"  
	fi
else
	"/home/galax/Bureau/M1\ Imagine/HAI714I_Modélisation_et_géométrie_discrète/gmap_exercise/build/gmap"  
fi
