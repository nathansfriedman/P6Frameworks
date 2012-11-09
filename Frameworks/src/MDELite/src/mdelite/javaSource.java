/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mdelite;

/**
 *
 */
public class javaSource extends MDELite{

    String directory;
    
    @Override
    public String fileType() {
        return ".java";
    }

    @Override
    public String partialFileType() {
        return "";
    }

    public javaSource(String directory) {
        this.directory = directory;
    }

    /* the following are transformations */
    /*
    public Yumlpl toYumlpl() {
        String[] args = {filename};
        yumlparser.Main.main(args);
        return new Yumlpl(filename);
    }
    */
}
