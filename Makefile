all: native-lib java-app

native-lib:
	gcc HelloJNI.c -I/usr/lib/jvm/java-7-openjdk-amd64/include/ -shared -fPIC -o libhello.so

java-app:
	javac HelloJNI.java

test: all
	java -Djava.library.path=`pwd` HelloJNI
