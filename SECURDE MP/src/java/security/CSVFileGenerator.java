/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package security;

import java.io.FileWriter;

/**
 *
 * @author MSI LEOPARD
 */
public class CSVFileGenerator {
    private static final String COMMA_DELIMITER = ",";
    private static final String NEW_LINE_SEPARATOR = "\n";
    private static final String FILE_HEADER = "username,password";
    
    
    public static void writeCsvFile(String fileName, String username, String password) {
        FileWriter fileWriter = null;
        try{
            fileWriter = new FileWriter(fileName);
            fileWriter.append(FILE_HEADER.toString());
            fileWriter.append(NEW_LINE_SEPARATOR);
            fileWriter.append(username);
            fileWriter.append(COMMA_DELIMITER);
            fileWriter.append(password);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
                try {
                    fileWriter.flush();
                    fileWriter.close();
                } catch (java.io.IOException e) {

                e.printStackTrace();
            }
        }
    }
}
