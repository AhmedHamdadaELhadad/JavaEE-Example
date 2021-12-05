
package model;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class interacation {
    
    public static void writer(String id,String name,String sal){
    
    
    FileWriter fw;
        try {
            fw = new FileWriter("E:\\JAVA\\NetBeansProjects\\CustomerEx\\Customer.txt");
        
        BufferedWriter bwf=new BufferedWriter(fw);
        bwf.append(id);
        bwf.newLine();
        bwf.append(name);
        bwf.newLine();
        bwf.append(sal);
        bwf.close();
        } catch (IOException ex) {
            Logger.getLogger(interacation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
