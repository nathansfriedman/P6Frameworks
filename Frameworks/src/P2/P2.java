/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package P2;

import AbsP.*;
import Reflect.*;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;

/**
 *
 * @author Nathan
 */
public class P2 extends AbsP{
    public static void main(String[]arg) throws ClassNotFoundException, IOException {
        reflect.main(arg, new P2());
    }
    
    public void createFile(Class[] locationClasses, String packageName) throws ClassNotFoundException, IOException {
        String results;
        reflect.fieldFriends = new String[locationClasses.length];
        Arrays.fill(reflect.fieldFriends, "");
        for (int i = 0; i < locationClasses.length; i++){
            results = reflect.getClassInfo(locationClasses[i], packageName, i);
            System.out.println(results);
            String superclass = locationClasses[i].getSuperclass().getName();
            for (int j = 0; j < locationClasses.length; j++){
                if (superclass.equals(locationClasses[j].getName())){
                    reflect.yumlDataSpecs = reflect.yumlDataSpecs + "[" + reflect.javaTrim(superclass, packageName) + "]^-.-[" + reflect.javaTrim(locationClasses[i].getName(), packageName) + "]\n";
                    break;
                }
            }           
        }
        for (int i = 0; i < locationClasses.length; i++){
            if (!reflect.fieldFriends[i].equals("")){
                String[] foundTypes = reflect.fieldFriends[i].split(" ");
                String[] typeNumbers = new String[foundTypes.length];
                int differentTypes = 0;
                for (int j = 0; j < foundTypes.length; j++){
                    boolean inserted = false;
                    String current = foundTypes[j];
                    for (int k = 0; k < differentTypes; k++){
                       String[] numInfo = typeNumbers[k].split(" ");
                       if (current.equals(numInfo[0])){
                           inserted = true;
                           typeNumbers[k] = numInfo[0] + " " + Integer.toString(Integer.parseInt(numInfo[1]) + ((Integer)1));
                       }
                    }
                    if (!inserted){
                       typeNumbers[differentTypes] = current + " " + Integer.toString((Integer)1);
                       differentTypes++;
                    }
                    }
               for (int j = 0; j < differentTypes; j++){
                   String[] numInfo = typeNumbers[j].split(" ");
                   reflect.yumlDataSpecs = reflect.yumlDataSpecs + "[" + reflect.javaTrim(locationClasses[i].getName(), packageName) + "]<>-" + numInfo[1] + ">[" + numInfo[0] + "]\n";
               }
            }
        }
        File yumlWriteFile = new File(packageName + ".yuml");
        BufferedWriter yumlOutput = new BufferedWriter(new FileWriter(yumlWriteFile.toString()));
        yumlOutput.write(reflect.yumlData + reflect.yumlDataSpecs);
        yumlOutput.close();
        Runtime.getRuntime().exec("java mdelite.Convert yuml violet " + yumlWriteFile.toString());
    }
}
