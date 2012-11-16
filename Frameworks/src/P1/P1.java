/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package P1;

import AbsP.*;
import Reflect.*;
import java.io.IOException;

/**
 *
 * @author Nathan
 */
public class P1 extends AbsP{
    public static void main(String[] arg) throws ClassNotFoundException, IOException {
        reflect.main(arg, new P1());
    }
    
    public void createFile(Class[] locationClasses, String packageName){}
}
