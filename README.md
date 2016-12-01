# database

Don't get too excited. We're not talking to a database yet. But soon.

stack new jammin
stack build
stack exec jammin-exe

** you may need to install sqlite3 on your machine**

add sqlite-simple and text to the .cabal file

paste this in your shell:
sqlite3 test.db "CREATE TABLE test (id INTEGER PRIMARY KEY, str text);\
INSERT INTO test (str) VALUES ('test string');"

stack build
stack exec jammin-exe

should get this as a result:
TestField 1 "test string"
TestField 2 "test string 2"
