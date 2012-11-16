package AbsP;

import Reflect.*;
import java.io.IOException;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Nathan
 */
public abstract class AbsP {
    public abstract void createFile(Class[] locationClasses, String packageName) throws ClassNotFoundException, IOException;
    
    public static void reflect(Class[] locationClasses, String packageName){
        String results;
        for (int i = 0; i < locationClasses.length; i++){
            results = reflect.getClassInfo(locationClasses[i], packageName, i);
            System.out.println(results);
        }
    }
         

//    public static void P4(Class[] locationClasses, String packageName) throws ClassNotFoundException, IOException{
//        String results;
//        for (int i = 0; i < locationClasses.length; i++){
//            results = reflect.getClassInfo(locationClasses[i], packageName, i);
//            System.out.println(results);
//        }
//        if (reflect.plClass.equals("")){
//        reflect.plClass = ":- dynamic class/2";
//        }
//        if (reflect.plAttribute.equals("")){
//        reflect.plAttribute = ":- dynamic attribute/6";
//        }
//        if (reflect.plMethod.equals("")){
//            reflect.plMethod = ":- dynamic method/6";
//        }
//        if (reflect.plParameter.equals("")){
//            reflect.plParameter = ":- dynamic parameter/3";
//        }
//        File plWriteFile = new File(packageName + ".pl");
//        BufferedWriter plOutput = new BufferedWriter(new FileWriter(plWriteFile.toString()));
//        plOutput.write(":- style_check(-discontiguous).\n\n" + reflect.plClass + "\n" + reflect.plAttribute + "\n" + reflect.plMethod + "\n" + reflect.plParameter);
//        plOutput.close();
//    }
}
