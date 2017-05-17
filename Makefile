.PHONY : clean

clean:
	find . -name "*~" -exec rm {} \;

aes:
	./src/translate.pl -in test-cases/aes/aes-ctr.q -out test-cases/aes/aes-ctr.c -ext-variables "aes_tablex:ucp;aes_table2:ucp;aes_table1:ucp;aes_table0:ucp;aes_table3:uip;lr_table0:uip;lr_table1:uip"
	sed -i '1i #include "constants.h"\n#include "macros.h"\n' test-cases/aes/aes-ctr.c
	gcc -Wall -O3 -S test-cases/aes/aes-ctr.c
	mv aes-ctr.s test-cases/aes/aes-ctr.s

aes-safe:
	./src/translate.pl -in test-cases/aes/aes-ctr.q -out test-cases/aes/aes-ctr-safe.c -map-file "./config/map-safe" -ext-variables "aes_tablex:ucp;aes_table2:ucp;aes_table1:ucp;aes_table0:ucp;aes_table3:uip;lr_table0:uip;lr_table1:uip"
	sed -i '1i #include "constants.h"\n#include "macros.h"\n' test-cases/aes/aes-ctr-safe.c
	gcc -Wall -O3 -S test-cases/aes/aes-ctr-safe.c
	mv aes-ctr-safe.s test-cases/aes/aes-ctr-safe.s


aes-direct:
	./src/translate.pl -in test-cases/aes/aes-ctr.q -out test-cases/aes/aes-ctr-direct.c -map-file "./config/map-direct" -ext-variables "aes_tablex:vp;aes_table2:vp;aes_table1:vp;aes_table0:vp;aes_table3:vp;lr_table0:vp;lr_table1:vp"
	sed -i '1i #include "constants-direct.h"\n#include "macros.h"\n' test-cases/aes/aes-ctr-direct.c
	gcc -Wall -O3 -S test-cases/aes/aes-ctr-direct.c
	mv aes-ctr-direct.s test-cases/aes/aes-ctr-direct.s

aes-translate-only:
	./src/translate.pl -in test-cases/aes/aes-ctr.q -out test-cases/aes/aes-ctr.c -ext-variables "aes_tablex:ucp;aes_table2:ucp;aes_table1:ucp;aes_table0:ucp;aes_table3:uip;lr_table0:uip;lr_table1:uip"
	sed -i '1i #include "constants.h"\n#include "macros.h"\n' test-cases/aes/aes-ctr.c

aes-indent:
	indent -orig -l150 -nut -ts0 -sob test-cases/aes/aes-ctr.c

aes-print-parsed:
	./src/translate.pl -print-parsed -print-parsed-exit -in test-cases/aes/aes-ctr.q -ext-variables "aes_tablex:ucp;aes_table2:ucp;aes_table1:ucp;aes_table0:ucp;aes_table3:uip;lr_table0:uip;lr_table1:uip"

profile:
	perl -d ./src/translate.pl -in test-cases/aes/aes-ctr.q -out test-cases/aes/aes-ctr.c -ext-variables "aes_tablex:ucp;aes_table2:ucp;aes_table1:ucp;aes_table0:ucp;aes_table3:uip;lr_table0:uip;lr_table1:uip"

#rc4:
#	./src/translate.pl -in test-cases/rc4/rc4.q -out test-cases/rc4/rc4.h -in-variables "in:rucp;" && \
#	indent -sob -prs -br -ce -nut -ts3 -i4 -l150 test-cases/rc4/rc4.h && \
#	sed -i 's/@ \*/@\*/g' test-cases/rc4/rc4.c && \
#	sed -i 's/[ ]@/@/g' test-cases/rc4/rc4.c


# make aes && make aes-indent && make aes-copy && make aes-bench-original && make aes-bench-translated && make aes-diff
# make aes-direct && make aes-indent && make aes-copy && make aes-bench-original && make aes-bench-translated && make aes-diff


