/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mdelite;

import toJava.*;
import java.io.*;

/**
 *
 */
public class mydb extends GProlog{

    String filename;
    
    @Override
    public String fileType() {
        return ".mydb.pl";
    }

    @Override
    public String partialFileType() {
        return ".mydb";
    }

    mydb( String filename) {
        this.filename = filename;
    }

    public javaSource toJava() {
        final String template = Common.homePath + "../libvm/mydb2java.vm";
        String args[] = {("outputs/p4/"+filename), template};
        toJava.main(args);
        String dirN = "outputs/toJava/"+
                filename.substring(0,filename.lastIndexOf('.'));
        return new javaSource(dirN);
    }

    @Override
    public void conform() {
        conform(Common.homePath + "libpl/conform.pl");
    }
    
    public void conform(String filename) {
        String[] list = {fullName, filename, Common.homePath + "libpl/mydb.conform.pl"};
        SDB tmpconform = new SDB("tmpconform", list);
        tmpconform.executeProlog();
        tmpconform.delete();
    }
    /*
    public mydb(String filename, String[] array) {
        super(filename, array);
    }
     
    */

    /*
    // the following are transformation
    public SDB toSDB() {
        return toSDB("");
    }

    public SDB toSDB(String extra) {
        String[] array = {this.fullName, Common.homePath + "libpl/yuml2sdb.pl", Common.homePath + "libpl/sdb.schema.pl", Common.homePath + "libpl/print.pl", Common.homePath + "libpl/sdb.run.pl"};
        SDB tmp = new SDB("tmp", array);
        SDB result = new SDB(filename + extra);
        tmp.executeProlog(result);
        result.conform();
        tmp.delete();
        return result;
    }
    */
}
