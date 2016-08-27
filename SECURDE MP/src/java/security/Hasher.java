package security;
import com.sun.javafx.geom.transform.BaseTransform;
import javafx.beans.binding.StringBinding;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Hasher {
	MessageDigest md;

	public Hasher(){
		 try {
			md = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException ex) {

			Logger.getLogger(Hasher.class.getName()).log(Level.SEVERE,null,ex);

		}

		 String text = "Hello World";

		 hashMessage(text);
	}

	public void hashMessage(String text){
		md.update(text.getBytes());
		BASE64Encoder encoder = new BASE64Encoder();
        String password = encoder.encode(md.digest());
		System.out.println(encoder.encode(md.digest()));

	}


	public static void main(String[] args) {
		Hasher h = new Hasher();

	}
}
