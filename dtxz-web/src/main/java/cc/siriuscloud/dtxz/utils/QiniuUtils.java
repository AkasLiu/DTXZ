package cc.siriuscloud.dtxz.utils;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import com.qiniu.util.StringMap;

public class QiniuUtils {
	
	
	private String accessKey;
	private String secretKey;
	private String bucket;
	
	
	public QiniuUtils() {
		this.accessKey = "akdXSWa-_G0PNd6GoAE-K5VHMyzT_9A1zmdpP_z4";
		this.secretKey = "vWmsiGFyHtNgCSa1SRNcYcnuLOtIUgZOALMN5HoI";
		this.bucket = "dtxz";
		
	}

	public QiniuUtils(String accessKey, String secretKey, String bucket) {

		
		
		this.accessKey = accessKey;
		this.secretKey = secretKey;
		this.bucket = bucket;
	}

	public String getToken(){
		

		Auth auth = Auth.create(accessKey, secretKey);
		StringMap putPolicy = new StringMap();
		putPolicy.put("returnBody", "{\"key\":\"$(key)\",\"hash\":\"$(etag)\",\"bucket\":\"$(bucket)\",\"fsize\":$(fsize)}");
		long expireSeconds = 3600;
		String upToken = auth.uploadToken(bucket, null, expireSeconds, putPolicy);
		return upToken;
	}
	
	
	
	
	/**
	 * @param localFilePath
	 * @return 返回文件哈希，错误为空
	 */
	public String uploadWithPath(String localFilePath){
		//构造一个带指定Zone对象的配置类
		Configuration cfg = new Configuration(Zone.zone0());
		//...其他参数参考类注释
		UploadManager uploadManager = new UploadManager(cfg);
		//...生成上传凭证，然后准备上传
//		String accessKey = "your access key";
//		String secretKey = "your secret key";
//		String bucket = "your bucket name";
		//如果是Windows情况下，格式是 D:\\qiniu\\test.png
		
		//默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = null;

		String upToken = getToken();
		try {
		    Response response = uploadManager.put(localFilePath, key, upToken);
		    //解析上传成功的结果
		    DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
//		    System.out.println(putRet.key);
//		    System.out.println(putRet.hash);
		   
		    return putRet.hash;
		    
		} catch (QiniuException ex) {
		    Response r = ex.response;
		    System.err.println(r.toString());
		    try {
		        System.err.println(r.bodyString());
		    } catch (QiniuException ex2) {
		        //ignore
		    }
		}
		return null;
		
	}
	
	public String uploadWithBytes(ByteArrayInputStream byteInputStream){
		//构造一个带指定Zone对象的配置类
		Configuration cfg = new Configuration(Zone.zone0());
		//...其他参数参考类注释
		UploadManager uploadManager = new UploadManager(cfg);
		//...生成上传凭证，然后准备上传

		//默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = null;

		String upToken = getToken();
		try {
		    Response response = uploadManager.put(byteInputStream,key,upToken,null, null);
		    //解析上传成功的结果
		    DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
		    
		    return putRet.hash;
		} catch (QiniuException ex) {
		    Response r = ex.response;
		    System.err.println(r.toString());
		    try {
		        System.err.println(r.bodyString());
		    } catch (QiniuException ex2) {
		        //ignore
		    }
		}
		return null;
	}
	
	
	public static void main(String[] args) throws IOException {
		
		String accessKey = "akdXSWa-_G0PNd6GoAE-K5VHMyzT_9A1zmdpP_z4";
		String secretKey = "vWmsiGFyHtNgCSa1SRNcYcnuLOtIUgZOALMN5HoI";
		String bucket = "dtxz";
		QiniuUtils qn=new QiniuUtils(accessKey,secretKey,bucket);
		String token = qn.getToken();
		
		String hash = qn.uploadWithPath("e:\\hongerbei.jpg");
		
		String src = qn.getSrc(hash);
		

		
	}
	
	
	public String getSrc(String hash) throws UnsupportedEncodingException{
		
		String domainOfBucket = "http://p2838kkmn.bkt.clouddn.com";
		String encodedFileName = URLEncoder.encode(hash, "utf-8");
		String finalUrl = String.format("%s/%s", domainOfBucket, encodedFileName);
		
		return finalUrl;	
	}
	
	
}
