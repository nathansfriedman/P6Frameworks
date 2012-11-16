/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package P4;

import AbsP.*;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author Nathan
 */
public class P4 extends AbsP{
    public static void main(String[] arg) throws ClassNotFoundException, IOException {
        Reflect.reflect.main(arg, new P4());
    }
    
    public void createFile(Class[] locationClasses, String packageName) throws ClassNotFoundException, IOException {
        String results;
        for (int i = 0; i < locationClasses.length; i++){
            results = Reflect.reflect.getClassInfo(locationClasses[i], packageName, i);
            System.out.println(results);
        }
        if (Reflect.reflect.plClass.equals("")){
        Reflect.reflect.plClass = ":- dynamic class/2";
        }
        if (Reflect.reflect.plAttribute.equals("")){
        Reflect.reflect.plAttribute = ":- dynamic attribute/6";
        }
        if (Reflect.reflect.plMethod.equals("")){
            Reflect.reflect.plMethod = ":- dynamic method/6";
        }
        if (Reflect.reflect.plParameter.equals("")){
            Reflect.reflect.plParameter = ":- dynamic parameter/3";
        }
        File plWriteFile = new File(packageName + ".pl");
        BufferedWriter plOutput = new BufferedWriter(new FileWriter(plWriteFile.toString()));
        plOutput.write(":- style_check(-discontiguous).\n\n" + Reflect.reflect.plClass + "\n" + Reflect.reflect.plAttribute + "\n" + Reflect.reflect.plMethod + "\n" + Reflect.reflect.plParameter);
        plOutput.close();
    }
}
