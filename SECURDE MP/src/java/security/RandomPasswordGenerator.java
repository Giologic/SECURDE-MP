/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package security;

import java.security.SecureRandom;
import org.apache.commons.lang3.RandomStringUtils;


/**
 *
 * @author MSI LEOPARD
 */
public class RandomPasswordGenerator {
    private static String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~`!@#$%^&*()-_=+[{]}\\|;:\'\",<.>/?";
    public static String getRandomPassword() {
        return RandomStringUtils.random( 15, 0, 0, false, false, characters.toCharArray(), new SecureRandom() );
    }
}



