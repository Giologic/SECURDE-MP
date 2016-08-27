/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package security;

/**
 *
 * @author MSI LEOPARD
 */
public class SampleDriver {
    public static void main(String[] args){
        String username = "WilliamDionio";
        String newPw = RandomPasswordGenerator.getRandomPassword();
        System.out.println(newPw);
        CSVFileGenerator.writeCsvFile(username + "_accountinfo.csv", username, newPw);
        String hashPW = BCrypt.hashpw(newPw, BCrypt.gensalt(12));
        System.out.println(hashPW);
        
        System.out.println(BCrypt.checkpw(newPw, hashPW));
    }
}
