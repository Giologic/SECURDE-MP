package security;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

/**
 * Created by MSI LEOPARD on 7/19/2016.
 */
public class RSA {

    public static void main(String[] args) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException {
        String plainText = "Hail Hydra";
        String ALGORITHM = "RSA";
        byte[] encrypted;
        byte[] decrypted;

        KeyPair aliciaKeys;
        aliciaKeys = KeyPairGenerator.getInstance(ALGORITHM).generateKeyPair();

        //encryption

        Cipher rsaCipher = Cipher.getInstance(ALGORITHM);
        rsaCipher.init(Cipher.ENCRYPT_MODE,aliciaKeys.getPublic());
        encrypted = rsaCipher.doFinal(plainText.getBytes());
        System.out.println(Base64.getEncoder().encodeToString(encrypted));

        rsaCipher.init(Cipher.DECRYPT_MODE, aliciaKeys.getPrivate());
        decrypted = rsaCipher.doFinal(encrypted);
        System.out.println(new String(decrypted));

    }
}
