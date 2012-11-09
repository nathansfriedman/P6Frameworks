/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mdelite;

import P4.reflect;

/**
 *
 */
public class javaByteCode extends MDELite{
   String directory;
   String javaPackageName;

    @Override
    public String fileType() {
        return ".class";
    }

    @Override
    public String partialFileType() {
        return "";
    }

    public javaByteCode(String javaPackageName, String directory ){
        this.directory = directory;
        this.javaPackageName = javaPackageName;
    }

    /* the following are transformations */
    public mydb P4() {
        String[] args = {javaPackageName,directory,"N","Y"};
        try {
            reflect.main(args);
        } catch(Exception e) {
            //e.printStackTrace();
        }
        return new mydb(javaPackageName +".pl");
    }
    
}
