package security;

import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by MSI LEOPARD on 7/14/2016.
 */
public class AES {
    private static final String keyValue = "ThisIsTheKeyValueAwesome";
    private static final String ALGORITHM = "AES";

    public void encrypt() {
        Key k = new SecretKeySpec(keyValue.getBytes(), ALGORITHM);
        try {
            Cipher c = Cipher.getInstance(ALGORITHM);
            c.init(Cipher.ENCRYPT_MODE, k);
            byte[] encrypted = c.doFinal();
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            Logger.getLogger(AES.class.getName()).log(Level.SEVERE, null, e);
        } catch (InvalidKeyException e) {
            Logger.getLogger(AES.class.getName()).log(Level.SEVERE, null, e);
        } catch (BadPaddingException e) {
            Logger.getLogger(AES.class.getName()).log(Level.SEVERE, null, e);
        } catch (IllegalBlockSizeException e) {
            Logger.getLogger(AES.class.getName()).log(Level.SEVERE, null, e);
        }
    }
}
