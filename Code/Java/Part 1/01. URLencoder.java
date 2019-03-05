import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class URLencoder {

	public static void main(String[] args){
	
		String str="�ڹ�";
		System.out.println("Encoding �� = " + str);
		
		String encoded=null;
		
		try {
			encoded = URLEncoder.encode(str, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		System.out.println("Encoding �� = " + encoded);
	}
}
