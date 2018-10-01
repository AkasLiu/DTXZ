package cc.siriuscloud.dtxz;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.service.FinanceService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class FinanceTest {

	@Resource
	private FinanceService financeService;
	
	/**
	 * 测试一把充值
	 */
	@Test
	public void updateMoneyTest(){
				
		String userId = "102";
		
		//修改用户表行数据
		int row = financeService.updateMoney(userId, 1500.0);

	}
	
	/**
	 * 测试一把转账
	 */
	@Test
	public void updateFromToTest(){
				
		String from = "101";
		String to = "102";
		
		//修改用户表行数据
		int row = financeService.updateFromTo(from, to, 500.0);

	}
	
}
