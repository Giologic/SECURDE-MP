/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package security;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 *
 * @author MSI LEOPARD
 */
public class SampleDriver {
    private final static int EXPIRY_DURATION = 120;
    public static void main(String[] args){
//        String username = "Nica";
//        String newPw = "ilovepaolo69";
//        System.out.println(newPw);
//        String hashPW = BCrypt.hashpw(newPw, BCrypt.gensalt(12));
//        CSVFileGenerator.writeCsvFile(username + "_accountinfo.csv", username, hashPW);
//        
//        System.out.println(hashPW);
//        
        System.out.println(BCrypt.checkpw("12345678", "$12$7cHe2yxICqBqaNoq7Lywp.h2ya9b1qRoTZV9JXEtSTkoHAZ859r8q"));
//    
//        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//        Calendar cal = new GregorianCalendar();
//        System.out.println(dateFormat.format(cal.getTime()));
//        cal.add(Calendar.DATE, EXPIRY_DURATION);
//        System.out.println(dateFormat.format(cal.getTime()));
//        

    }
}
