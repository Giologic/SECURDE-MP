package security;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.StringJoiner;

/**
 * Created by MSI LEOPARD on 7/14/2016.
 */
public class AESEncryption {

    public static void main(String[] args) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException {
        String plainText = "Hello Earth!";
        String ALGORITHM = "AES";
        byte[] encrypted;
        byte[] decrypted;

        //Generate Keys

        String sKey = "1234567890123456";
        Key k = new SecretKeySpec(sKey.getBytes(), ALGORITHM);
        //Symmetric algorithm - One Key To Rule Them All


        //encryption
        Cipher aesCipher = Cipher.getInstance(ALGORITHM);
        aesCipher.init(Cipher.ENCRYPT_MODE, k);
        encrypted = aesCipher.doFinal(plainText.getBytes());
        System.out.println(Base64.getEncoder().encodeToString(encrypted));

        aesCipher.init(Cipher.DECRYPT_MODE, k);
        decrypted = aesCipher.doFinal(encrypted);
        System.out.println(new String(decrypted));

        KeyGenerator keyGenerator = KeyGenerator.getInstance(ALGORITHM);
        keyGenerator.init(128);
        k = keyGenerator.generateKey();
    }
}
