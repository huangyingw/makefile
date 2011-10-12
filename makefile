main:
	gcc -shared max.c -o libmax.so
	gcc -L/media/volgrp/myproject/git/cplusplus/linux/fundamental/makefile/ test_so.c -o test_so -lmax
	export LD_LIBRARY_PATH=.
	#sudo ldconfig
