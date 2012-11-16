//
//import java.io.BufferedWriter;
//import java.io.File;
//import java.io.FileWriter;
//import java.io.IOException;
//import java.lang.reflect.Constructor;
//import java.lang.reflect.Field;
//import java.lang.reflect.Method;
//import java.lang.reflect.Modifier;
//import java.util.Arrays;
//import java.util.Comparator;
//
//public class reflect {
//
//    //computeYuml and yumlData are both used when the user specifes to create a yuml file.
//    static boolean computeYuml = false;
//    static boolean computePl = false;
//    static String plClass = "";
//    static String plAttribute = "";
//    static String plMethod = "";
//    static String plParameter = "";
//    static Integer classid = 1;
//    static Integer attributeid = 1;
//    static Integer methodid = 1;
//    static Integer parameterid = 1;
//    static String yumlData = "";
//    static String yumlDataSpecs = "";
//    static String[] fieldFriends;
//    /**
//     * @param args the command line arguments
//     * Input arguments should be the name of a qualified package, a directory, followed by an option Y if user wants a YUML file created.
//     */
//    public static void main(String[] arg) throws ClassNotFoundException, IOException {
//        computeYuml = false;
//        checkArgs(arg);
//        if (arg.length == 3 && arg[2].equals("Y")){
//            computeYuml = true;
//        }
//        if (arg.length == 4 && arg[3].equals("Y")){
//            computePl = true;
//        }
//        Class[] locationClasses;
//        locationClasses = getClassFiles(arg[1], arg[0]);
//        if(computeYuml){
//            P2(locationClasses, arg[0]);
//        }
//        else if(computePl){
//            P4(locationClasses, arg[0]);
//        }
//        else{
//            P1(locationClasses, arg[0]);
//        }
//
//    }
//    
//    public static void P1(Class[] locationClasses, String packageName){
//        String results;
//        for (int i = 0; i < locationClasses.length; i++){
//            results = getClassInfo(locationClasses[i], packageName, i);
//            System.out.println(results);
//        }
//    }
//    
//    public static void P2(Class[] locationClasses, String packageName) throws ClassNotFoundException, IOException{
//        String results;
//        fieldFriends = new String[locationClasses.length];
//        Arrays.fill(fieldFriends, "");
//        for (int i = 0; i < locationClasses.length; i++){
//            results = getClassInfo(locationClasses[i], packageName, i);
//            System.out.println(results);
//            String superclass = locationClasses[i].getSuperclass().getName();
//            for (int j = 0; j < locationClasses.length; j++){
//                if (superclass.equals(locationClasses[j].getName())){
//                    yumlDataSpecs = yumlDataSpecs + "[" + javaTrim(superclass, packageName) + "]^-.-[" + javaTrim(locationClasses[i].getName(), packageName) + "]\n";
//                    break;
//                }
//            }           
//        }
//        for (int i = 0; i < locationClasses.length; i++){
//            if (!fieldFriends[i].equals("")){
//                String[] foundTypes = fieldFriends[i].split(" ");
//                String[] typeNumbers = new String[foundTypes.length];
//                int differentTypes = 0;
//                for (int j = 0; j < foundTypes.length; j++){
//                    boolean inserted = false;
//                    String current = foundTypes[j];
//                    for (int k = 0; k < differentTypes; k++){
//                       String[] numInfo = typeNumbers[k].split(" ");
//                       if (current.equals(numInfo[0])){
//                           inserted = true;
//                           typeNumbers[k] = numInfo[0] + " " + Integer.toString(Integer.parseInt(numInfo[1]) + ((Integer)1));
//                       }
//                    }
//                    if (!inserted){
//                       typeNumbers[differentTypes] = current + " " + Integer.toString((Integer)1);
//                       differentTypes++;
//                    }
//                    }
//               for (int j = 0; j < differentTypes; j++){
//                   String[] numInfo = typeNumbers[j].split(" ");
//                   yumlDataSpecs = yumlDataSpecs + "[" + javaTrim(locationClasses[i].getName(), packageName) + "]<>-" + numInfo[1] + ">[" + numInfo[0] + "]\n";
//               }
//            }
//        }
//        File yumlWriteFile = new File(packageName + ".yuml");
//        BufferedWriter yumlOutput = new BufferedWriter(new FileWriter(yumlWriteFile.toString()));
//        yumlOutput.write(yumlData + yumlDataSpecs);
//        yumlOutput.close();
//            Runtime.getRuntime().exec("java mdelite.Convert yuml violet " + yumlWriteFile.toString());
//    }
//    
//    public static void P4(Class[] locationClasses, String packageName) throws ClassNotFoundException, IOException{
//        String results;
//        for (int i = 0; i < locationClasses.length; i++){
//            results = getClassInfo(locationClasses[i], packageName, i);
//            System.out.println(results);
//        }
//        if (plClass.equals("")){
//        plClass = ":- dynamic class/2";
//        }
//        if (plAttribute.equals("")){
//        plAttribute = ":- dynamic attribute/6";
//        }
//        if (plMethod.equals("")){
//            plMethod = ":- dynamic method/6";
//        }
//        if (plParameter.equals("")){
//            plParameter = ":- dynamic parameter/3";
//        }
//        File plWriteFile = new File(packageName + ".pl");
//        BufferedWriter plOutput = new BufferedWriter(new FileWriter(plWriteFile.toString()));
//        plOutput.write(":- style_check(-discontiguous).\n\n" + plClass + "\n" + plAttribute + "\n" + plMethod + "\n" + plParameter);
//        plOutput.close();
//    }
//
//    public static void checkArgs(String[] arg){
//            if (arg.length < 2 || arg.length > 4){
//            System.out.println("Incorrect parameter amount: name-of-qualified-package directory (Y/N for yuml file) (Y/N for prolog file)");
//            System.exit(0);
//        }
//    }
//    
//    /**
//     * Locates the Class files within the given path as well as formatting them into a class[].
//     */
//    public static Class[] getClassFiles(String location, String packageName) throws ClassNotFoundException{
//        Class[] classArray;
//        File Path = new File(location);
//        assert (Path.isDirectory()): "Given Path is not a Directory.";
//        File[] filelist = Path.listFiles();
//        classArray = new Class[filelist.length];
//        int arrCounter = 0;
//        for (int i = 0; i < filelist.length; i++){
//            File current =  filelist[i];
//            String currentString = filelist[i].getName();
//            if (isClassFile(current)){
//                Class<?> c;
//                c = Class.forName(packageName + "." + currentString.substring(0,currentString.length() - 6));
//                classArray[i] = c;
//                arrCounter++;
//            }
//        }
//        Class[] finalClassArray;
//        finalClassArray = new Class[arrCounter];
//        int count = 0;
//        for (int i = 0; i < classArray.length; i++){
//            if (classArray[i] != null){
//                finalClassArray[count] = classArray[i];
//                count++;
//            }
//        }
//        return finalClassArray;
//    }
//    /**
//     *Determines if inputted file is a Class file and makes sure it does not contain a $ char in its name.
//     */
//    public static boolean isClassFile(File inputFile){
//        String input = inputFile.getName();
//        char[] chars = input.toCharArray();
//        if (!(input).endsWith(".class")){
//            return false;
//        }
//        for (int i = 0; i < chars.length; i++){
//            if (chars[i] == '$'){
//                return false;
//            }
//        }
//        return true;
//    }
//    /**
//     *Goes through the presented class finding the constructors, fields, and methods as well as presnting them in correct fashion.
//     */
//    public static String getClassInfo(Class<?> c, String packageName, int index){
//        String complete;
//        String className = c.getName().substring(packageName.length() + 1);
//        complete = "class " + className + "\nConstructors\n";
//        if (computeYuml){
//            yumlData= yumlData + "[" + className;
//        }
//        if (computePl){
//            plClass = plClass + "class('class" + classid + "','" + className + "').\n";
//        }
//        //Constructors of the class
//        Constructor[] cons = c.getDeclaredConstructors();
//        Arrays.sort(cons, new ConstructorCompare());
//        for (int j = 0; j < cons.length; j++) {
//            String conName = javaTrim(cons[j].getName(), packageName);
//            Class<?>[] params = cons[j].getParameterTypes();
//            boolean isfirst = true;
//            if (computePl) {
//                plMethod = plMethod + "method('method"+ methodid + "','" + conName + "','" + conName + "','PUBLIC','STATIC','class" + classid + "').\n";
//            }
//            String constructor = conName + "( ";
//            for (int i = 0; i < params.length; i++){
//                String currentParam;
//                if (!isfirst){
//                    currentParam = javaTrim(params[i].getName(), packageName);
//                    constructor = constructor + "," + currentParam;
//                }
//                else{
//                    isfirst = false;
//                    currentParam = javaTrim(params[i].getName(), packageName);
//                    constructor = constructor + currentParam;
//                }
//                if (computePl) {
//                    plParameter = plParameter + "parameter('parameter" + parameterid++ + "','" + currentParam + "','method" + methodid + "').\n";
//                }
//            }
//            if (computePl) {
//                ++methodid;
//            }
//            complete = complete + constructor + " )\n";
//        }
//        complete = complete + "Fields\n";
//        
//        //Fields of the class
//        Field[] fields = c.getDeclaredFields();
//        Arrays.sort(fields, new FieldCompare());
//        for (int i = 0; i < fields.length; i++){
//            int modif = fields[i].getModifiers();
//            String isStat = "";
//            if (Modifier.isStatic(modif)){
//                isStat = "static ";
//            }
//            String currentName = fields[i].getName();
//            String currentType;
//            if (fields[i].getType().toString().startsWith("class ")){
//                String typeTemp = fields[i].getType().toString().substring(6);
//                if (computeYuml && Modifier.isPublic(modif) && typeTemp.length() >= packageName.length() && typeTemp.substring(0,packageName.length()).equals(packageName)){
//                    fieldFriends[index] = fieldFriends[index] + javaTrim(typeTemp, packageName) + " ";
//                }
//                currentType = javaTrim(typeTemp, packageName);
//            }
//            else{
//                currentType = fields[i].getType().toString();
//            }
//            if (computePl) {
//                String pubOrPri = "PRIVATE";
//                String plStatic = "";
//                if (!isStat.equals("")){
//                    plStatic = "STATIC";
//                }
//                if (Modifier.isPublic(modif)){
//                    pubOrPri = "PUBLIC";
//                }
//                plAttribute = plAttribute + "attribute('attribute" + attributeid++ + "','" + currentName + "','class" + currentType + "','" + pubOrPri + "','" + plStatic + "','class" + classid + "').\n";
//            }
//            if (Modifier.isPublic(modif)){
//                complete = complete + isStat + currentType + " " + currentName + "\n";
//            }
//        }
//        complete = complete + "Methods\n";
//        
//        //Methods of the class
//        Method[] methods = c.getDeclaredMethods();
//        Arrays.sort(methods, new MethodCompare());
//        boolean firstYuml = true;
//        for (int i = 0; i < methods.length; i++){
//            String isStat = "";
//            int modif = methods[i].getModifiers();
//            if (Modifier.isStatic(modif)){
//                isStat = "static ";
//            }
//            if (Modifier.isPublic(modif)){
//                String currentName = methods[i].getName() + "( ";
//                Class<?>[] params;
//                params = methods[i].getParameterTypes();
//                boolean morethantwo = false;
//                String currentType = javaTrim(methods[i].getReturnType().getName(), packageName);
//                if (computePl) {
//                    String plStatic = "";
//                    if (!isStat.equals("")){
//                        plStatic = "STATIC";
//                    }
//                    plMethod = plMethod + "method('method"+ methodid + "','" + methods[i].getName() + "','" + currentType + "','PUBLIC','"+ plStatic + "','class" + classid + "').\n";
//                }
//                for (int k = 0; k < params.length; k++){
//                    String currentParam = javaTrim(params[k].getName(), packageName);
//                    if (morethantwo){
//                        currentName = currentName + "," + currentParam;
//                    }
//                    else{
//                        morethantwo = true;
//                        currentName = currentName + currentParam;
//                    }
//                    if (computePl) {
//                        plParameter = plParameter + "parameter('parameter" + parameterid++ + "','" + currentParam + "','method" + methodid + "').\n";
//                    } 
//                }
//                complete = complete + isStat + currentType + " " + currentName + " )\n";
//                if (firstYuml && computeYuml){
//                    yumlData= yumlData + "|" + currentName.replace("[]","#").replace(","," ") + " )";
//                    firstYuml = false;
//                }
//                else if (computeYuml){
//                    yumlData= yumlData + ";" + currentName.replace("[]","#").replace(","," ") + " )";
//                }
//                if (computePl) {
//                    ++methodid;
//                }
//            }
//            else if (computePl) {
//                Class<?>[] params;
//                params = methods[i].getParameterTypes();
//                String currentType = javaTrim(methods[i].getReturnType().getName(), packageName);
//                String plStatic = "";
//                if (!isStat.equals("")){
//                    plStatic = "STATIC";
//                }
//                plMethod = plMethod + "method('method"+ methodid + "','" + methods[i].getName() + "','" + currentType + "','PRIVATE','"+ plStatic + "','class" + classid + "').\n";
//                for (int k = 0; k < params.length; k++){
//                    String currentParam = javaTrim(params[k].getName(), packageName);
//                    plParameter = plParameter + "parameter('parameter" + parameterid++ + "','" + currentParam + "','method" + methodid + "').\n";
//                }
//            }
//        }
//        complete = complete.replace(",", ", ");
//        if (computeYuml){
//            yumlData= yumlData + "]\n";
//        }
//        if (computePl){
//            ++classid;
//        }
//        return complete + "----";
//    }
//    
//    /**
//     *Trims off the java. prefexes for the fields section type.
//     */
//    public static String javaTrim(String raw, String packageName){
//        String[] javaTrim = {"java.lang.", "java.util.", "java.awt.event.", "java.awt.", "java.io.", "javax.swing.", packageName + "."};
//        if (raw.startsWith("[L")){
//            raw = raw.substring(2,(raw.length()-1)) + "[]";
//        }
//        for (int i = 0; i < javaTrim.length; i++){
//            if (raw.startsWith(javaTrim[i])){
//                return raw.substring(javaTrim[i].length());
//            }
//        }
//        return raw;
//    }
//
//}
//
///**
// *compare function used to sort Constructor in lexiographic order
// */
//class ConstructorCompare implements Comparator{
//    @Override
//    public int compare(Object constructorA, Object constructorB){
//        String A = ((Constructor)constructorA).toString();
//        String B = ((Constructor)constructorB).toString();
//        return A.compareTo(B);
//    }
//}
//
///**
// *compare function used to sort Methods in lexiographic order
// */
//class MethodCompare implements Comparator{
//    @Override
//    public int compare(Object methodA, Object methodB){
//        String A = ((Method)methodA).toString();
//        String B = ((Method)methodB).toString();
//        return A.compareTo(B);
//    }
//}
//
///**
// *compare function used to sort Fields in lexiographic order
// */
//class FieldCompare implements Comparator{
//    @Override
//    public int compare(Object fieldA, Object fieldB){
//        String A = ((Field)fieldA).toString();
//        String B = ((Field)fieldB).toString();
//        return A.compareTo(B);
//    }
//}
