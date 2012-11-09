/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mdelite;

/**
 *
 */
public class Script {

   //calling sequence Script <directory> <JavaPackage>
   //example > java Script  otherclasses/quark    quark
   //that is, invoking the above method is equivalent to running the shell script (2 program calls) above

    public static void main( String[] args ) {
        javaByteCode jp = new javaByteCode(args[0],args[1]);//create an object that represents the JavaPackage of args
        mydb m = jp.P4();// convert JavaPackage into a mydb.pl object called m
        javaSource js = m.toJava();// convert m to a JavaSource object
        System.out.println("Done!");
   }
    
}
