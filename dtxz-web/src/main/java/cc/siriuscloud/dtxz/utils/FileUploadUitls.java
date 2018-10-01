package cc.siriuscloud.dtxz.utils;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

public class FileUploadUitls {

	/**
	 * 多文件上传类
	 * @param request 
	 * @return 返回src List<String> 
	 * @throws IOException
	 */
	public static ArrayList<String> upload(HttpServletRequest request) throws IOException{

		//实例化七牛云工具
		QiniuUtils qn=new QiniuUtils();
		
		
		//获得多视图解析器实例
		CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(request.getSession().getServletContext());
		
		ArrayList<String> srcList = new ArrayList<String>();
		
		//是多类型上传
		if(multipartResolver.isMultipart(request))
		      {
		            //将request变成多部分request
		            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
		           //获取multiRequest 中所有的文件名
		            Iterator iter=multiRequest.getFileNames();
		             
		            while(iter.hasNext())
		            {
		                //一次遍历所有文件
		                MultipartFile file=multiRequest.getFile(iter.next().toString());
		                if(file!=null)
		                {
		            
		                    byte[] bytes = file.getBytes();


		            		
		            		ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
		            		String hash = qn.uploadWithBytes(byteArrayInputStream);
		            		
		            		String src = qn.getSrc(hash);
		            		
		            		
		            		srcList.add(src);

		                }
		                 
		            }
		           
		        }
		return srcList;
		
		
		
	}



}
