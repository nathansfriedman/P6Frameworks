/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package toJava;

import java.io.*;

/**
 *
 */
public class toJava {
        
    public static void main(String args[]) {
        File inputdir = new File("outputs/toJava/");
        inputdir.mkdir();
        vm2t.Main.main(args);
        File outputdir = new File("outputs/toJava/"+
                args[0].substring(args[0].lastIndexOf('/'),
                    args[0].lastIndexOf('.')) + "/");
        outputdir.mkdir();
        System.out.println(outputdir);
        for(File f: inputdir.listFiles()) {
            if(f.getName().contains(".java")) {
                if(!f.renameTo(new File(outputdir.getAbsolutePath(),f.getName()))) {
                    System.out.println("Error in moving files.");
                }
            }
        }

    }
    
}

