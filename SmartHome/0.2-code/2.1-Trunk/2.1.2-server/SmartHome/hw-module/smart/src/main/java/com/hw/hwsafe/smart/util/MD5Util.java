package com.hw.hwsafe.smart.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	 public final static String MD5(String s) {
	 char hexDigits[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};       
     try {
         byte[] btInput = s.getBytes();
         // 获得MD5摘要算法的 MessageDigest 对象
         MessageDigest mdInst = MessageDigest.getInstance("MD5");
         // 使用指定的字节更新摘要
         mdInst.update(btInput);
         // 获得密文
         byte[] md = mdInst.digest();
         // 把密文转换成十六进制的字符串形式
         int j = md.length;
         char str[] = new char[j * 2];
         int k = 0;
         for (int i = 0; i < j; i++) {
             byte byte0 = md[i];
             str[k++] = hexDigits[byte0 >>> 4 & 0xf];
             str[k++] = hexDigits[byte0 & 0xf];
         }
         return new String(str);
     } catch (Exception e) {
         e.printStackTrace();
         return null;
     }
	 }
	 public final static String MD5_16(String plainText){
		 String result = null;
		  try {
		   MessageDigest md = MessageDigest.getInstance("MD5");
		   md.update(plainText.getBytes());
		   byte b[] = md.digest();
		   int i;
		   StringBuffer buf = new StringBuffer("");
		   for (int offset = 0; offset < b.length; offset++) {
		    i = b[offset];
		    if (i < 0)
		     i += 256;
		    if (i < 16)
		     buf.append("0");
		    buf.append(Integer.toHexString(i));
		   }
		   // result = buf.toString();  //md5 32bit
		   // result = buf.toString().substring(8, 24))); //md5 16bit
		   result = buf.toString().substring(8, 24);
		   System.out.println("mdt 16bit: " + buf.toString().substring(8, 24));
		   System.out.println("md5 32bit: " + buf.toString() );
		  } catch (NoSuchAlgorithmException e) {
		   e.printStackTrace();
		  }
		  return result;

	 }
}
