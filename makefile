main:
	gcc -shared max.c -o libmax.so
	export LD_LIBRARY_PATH=/media/volgrp/myproject/git/cplusplus/linux/fundamental/makefile/:${LD_LIBRARY_PATH}
	sudo ldconfig
	gcc -lmax  test_so.c -o test_so
