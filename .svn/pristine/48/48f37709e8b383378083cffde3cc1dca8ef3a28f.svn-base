package cc.siriuscloud.dtxz.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class MyStringUtils {

	
	public static String String2Md5(String value){
		
		
		try {
			MessageDigest digest=MessageDigest.getInstance("MD5");
			
			byte[] digest2 = digest.digest(value.getBytes());
		
			
			
			
			BigInteger integer=new BigInteger(1,digest2);
			
			//前置长度补充
			String md5=integer.toString(16);
			while(md5.length()<32){
				md5='0'+md5;
			}
			return md5;
		
		} catch (NoSuchAlgorithmException e) {

			e.printStackTrace();
			
			return value;
		}
		
	}
	
	
	public static String getUUID(){
		
		return UUID.randomUUID().toString().replaceAll("-", "");
		
	}
	
	public static void main(String[] args) {
		
		System.out.println(MyStringUtils.String2Md5("sirius"));
	}
	
}
