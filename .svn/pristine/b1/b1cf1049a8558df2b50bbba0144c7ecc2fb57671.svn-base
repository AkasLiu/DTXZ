package cc.siriuscloud.dtxz.utils;


import java.util.Date;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.junit.Test;

/**
 * 邮件发送工具
 * @author sirius
 * 
 *
 */
public class EmailPoster {
	
	
	
//	 * maven 依赖**********************************
//	 * 	
//	 * <dependency>
//		    <groupId>javax.mail</groupId>
//		    <artifactId>mail</artifactId>
//		    <version>1.4.7</version>
//		</dependency>
		
		
	
	//发送者昵称
	private String senderName="";		//
	//发送者邮箱
    private String senderMail =null;	// ;//myEmailAccount
    //发送者密匙
    private String  senderPass=null;	// ;//myEmailPassword
    //smtp主机
    private String smtpHost = null;//"smtp.qq.com";//myEmailSMTPHost
    //接收者
    private String receiveMail;
    
    private String receiveName=null;
    private String encoding="UTF-8";
    
    //会话
    private Session session=null;
    private MimeMessage message=null;//信息体
    
    private String subject="邮件工具类";
    
    private String content="工具类测试";
    private String contentType="text/html;charset=UTF-8"; 
    
    
    
    
    /**
     * @param senderName 发送者昵称
     * @param senderMail 发送者邮箱
     * @param senderPass 发送者密码
     * @param smtpHost 发送主机
     * @param receiveMail 接收邮箱
     * @param receiveName 接受昵称
     * @param subject 主题
     * @param content 内容
     */
    public EmailPoster(String senderName, String senderMail, String senderPass, String smtpHost, String receiveMail,
			String receiveName, String subject, String content) {
		super();
		this.senderName = senderName;
		this.senderMail = senderMail;
		this.senderPass = senderPass;
		this.smtpHost = smtpHost;
		this.receiveMail = receiveMail;
		this.receiveName = receiveName;
		this.subject = subject;
		this.content = content;
	}

    
    
    /**
     * 示例方法
     * @throws Exception
     */
    public static void testPostEmail() throws Exception{
		
		
		//构造参数
		String senderName="大题小作管理员";
		String senderMail="575863672@qq.com";
		String senderPass="。。。。。。";//密码
		String smtpHost="smtp.qq.com";
		String receiveMail="943265906@qq.com";
		String receiveName="凌兮";
		String subject="大题小作测试邮件";
		String content="邮件正文";
		
		//生成邮件发送者
		EmailPoster poster=new EmailPoster(senderName, senderMail, senderPass,
				smtpHost, receiveMail, receiveName, subject, content);
		
		//发送
		poster.send();
		
		
		
	}

    
    public void send() throws Exception {
    	
    	// 1.准备参数			
    	Properties props = new Properties();                    // 
    	props.setProperty("mail.transport.protocol", "smtp");   // 协议
    	props.setProperty("mail.smtp.host", smtpHost);   // smtp地址
    	props.setProperty("mail.smtp.auth", "true");            // 认证
    	props.put("mail.smtp.starttls.enable","true");			// 开启ssl
    	
    	/*
         
        final String smtpPort = "465";					//加密的stmp端口
        props.setProperty("mail.smtp.port", smtpPort);	//
        //给一个socket工厂
        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.socketFactory.port", smtpPort);
    	 */
    	
    	// 2. 传入参数
    	session = Session.getDefaultInstance(props);
    	session.setDebug(true);                           // 显示调试信息
    	
    	// 3. 构建mime信息对象
    	createMimeMessage();
    	
    	// 4. 拿到会话Session 
    	Transport transport = session.getTransport();
    	
    	// 5. 连接
    	transport.connect(senderMail, senderPass);
    	
    	// 6. 调用 message.getAllRecipients() 把信息发送出去
    	transport.sendMessage(message, message.getAllRecipients());
    	
    	transport.close();
    }
    
    
    
    protected void createMimeMessage() throws Exception {
    	// 1. 创建当前会话的消息对象
    	message = new MimeMessage(session);
    	
    	// 2. From: 来源，发送者邮箱，发送者名字(显示在发送人那里的名字) ,编码
    	message.setFrom(new InternetAddress(this.senderMail, this.senderName, this.encoding));
    	
    	// 3. To: 设置接收者 
    	message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(this.receiveMail,this.receiveName, this.encoding));
    	
    	// 4. Subject: 主题
    	message.setSubject(this.subject, this.encoding);
    	
    	// 5. Content: html格式的内容
    	message.setContent(this.content, this.contentType);
    	
    	// 6. 设置一下发送时间，当前
    	message.setSentDate(new Date());
    	
    	// 7. 保存一下邮件内容
    	message.saveChanges();
    	
    }
	public String getSenderName() {
		return senderName;
	}



	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}



	public String getSenderMail() {
		return senderMail;
	}



	public void setSenderMail(String senderMail) {
		this.senderMail = senderMail;
	}



	public String getSenderPass() {
		return senderPass;
	}



	public void setSenderPass(String senderPass) {
		this.senderPass = senderPass;
	}



	public String getSenderSMTPHost() {
		return smtpHost;
	}



	public void setSenderSMTPHost(String senderSMTPHost) {
		this.smtpHost = senderSMTPHost;
	}



	public String getReceiveMail() {
		return receiveMail;
	}



	public void setReceiveMail(String receiveMail) {
		this.receiveMail = receiveMail;
	}



	public String getReceiveName() {
		return receiveName;
	}



	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}



	public String getEncoding() {
		return encoding;
	}



	public void setEncoding(String encoding) {
		this.encoding = encoding;
	}



	public Session getSession() {
		return session;
	}



	public void setSession(Session session) {
		this.session = session;
	}



	public MimeMessage getMessage() {
		return message;
	}



	public void setMessage(MimeMessage message) {
		this.message = message;
	}



	public String getSubject() {
		return subject;
	}



	public void setSubject(String subject) {
		this.subject = subject;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getContentType() {
		return contentType;
	}



	public void setContentType(String contentType) {
		this.contentType = contentType;
	}




}
