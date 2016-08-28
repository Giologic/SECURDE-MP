/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package security;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

/**
 *
 * @author William
 */
public class AuditLogger {
    private final String FILE_NAME = "Audit Log.txt";
    private File logFile;
    private StringBuilder sb;
    private Timestamp timeStamp;
    
    public AuditLogger(){
        logFile = new File(FILE_NAME);
        
    }
    public void logEvent(String location, String username,String privilege, String action ) throws IOException{
        System.out.println("Logging Start");
        sb = new StringBuilder();
        if(!logFile.exists()){
            System.out.println("new logfile");
            logFile.createNewFile();
            
        }
        System.out.println(logFile.getAbsolutePath());
        timeStamp = new Timestamp(System.currentTimeMillis());
        sb.append(timeStamp.toString() + " ");
        sb.append("In " +location +" : ");
        sb.append(privilege + " " +username);
        sb.append(" attempted action: " +action);
        FileWriter fw = new FileWriter(logFile.getAbsoluteFile(),true);
        BufferedWriter bw = new BufferedWriter(fw);
        System.out.println(sb.toString());
        bw.write(sb.toString());
        bw.newLine();
        bw.close();
        fw.close();
    }
    
}
