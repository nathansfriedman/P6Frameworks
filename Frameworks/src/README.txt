S===Source Files===
MDELite/src/mdelite/Script.java is a java file that runs P4 and toJava on a given package and directory.
MDELite/src/mdelite/javaByteCode.java is an MDELite class representing a package of Java classes.
MDELite/src/mdelite/mydb.java is an MDELite class representing a mydb prolog database.
MDELite/src/mdelite/javaSource.java is an MDELite class representing a directory of Java files.
(toJava)
MDELite/toJava/toJava.java handles the toJava conversion of mydb -> Java
MDELite/libvm/mydb2java.vm is the vm2t template file for mydb -> Java.
(P4)
MDELite/src/P4/reflect.java handles the P4 conversion of bytecode -> mydb.
MDELite/libpl/mydb.schema.pl contains the mydb schema, with addition of public/private and static/non-static fields.
MDELite/libpl/mydb.conform.pl contains some prolog constraints on mydb files.

===Building===
To run P4 and toJava, first set the CLASSPATH by running `. ./setclasspath.sh` (or `source ./setclasspath.sh`). Then, run `java mdelite.Script <java-package-name> <directory>`.
To run P4 only, run `java P4.reflect <java-package-name> <directory>`.
To run toJava only, run `java toJava.toJava <mydb-file> <template-file>.

To run P4 and toJava on the packages in "otherclasses/", run `make`.

Output files are located in "outputs/". P4 outputs (mydb files) are located in "outputs/p4/" and toJava outputs (java files) are located in "outputs/toJava/" in a folder corresponding to the package name.
