package cc.siriuscloud.dtxz.sirius;

import org.junit.Test;

import cc.siriuscloud.dtxz.utils.EmailPoster;

public class EmailPostTest {

	
	
	
	@Test
	public void testPostEmail() throws Exception{
		
		
		//构造参数
		String senderName="大题小作管理员";
		String senderMail="575863672@qq.com";
		String senderPass="segzspmufhzobbaj";
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
}
