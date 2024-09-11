all : test_print test_parse

test_print : test_print.c cJSON.c cJSON.h
	gcc test_print.c cJSON.c -o test_print
test_parse : test_parse.c cJSON.c cJSON.h
	gcc test_parse.c cJSON.c -o test_parse

#mv :
	mv test_print test_parse ./out/

.PHONY : clean
clean :
	rm ./out/*