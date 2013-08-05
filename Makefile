all : test
	echo OK

jni/Main.h: bin/classes/Main.class
	mkdir -p bin/classes jni
	javah -d jni -classpath bin/classes Main

bin/classes/Main.class: src/Main.java
	mkdir -p bin/classes jni
	javac -classpath bin/classes -encoding UTF-8 -d bin/classes -s src src/Main.java

JAM: jni/Main.h
	b2 link=shared --stage=libs

test: bin/classes/Main.class JAM
	java -classpath bin/classes -Djava.library.path=libs Main
