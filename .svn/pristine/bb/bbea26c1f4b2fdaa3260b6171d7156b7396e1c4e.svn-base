package cc.siriuscloud.dtxz;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.bean.Pv;
import cc.siriuscloud.dtxz.bean.vo.PvVo;
import cc.siriuscloud.dtxz.service.PvService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class PvTest {

	@Resource
	SqlSessionFactoryBean factory;
	
	@Resource
	private PvService pvService;
	
	
	@Test
	public void test() throws Exception {
		System.out.println
		(factory.getObject().openSession().getConnection());
	}
	
	@Test
	public void select() throws Exception {
		Map<String, Object> dateMap =  new HashMap<String, Object>(); 
		List<Pv> list = new ArrayList<Pv>();
		List<PvVo> pvs = new ArrayList<PvVo>();
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		SimpleDateFormat sdf1=new SimpleDateFormat("yyyy/MM/dd");  
		Date today = new Date();
		String start_year = ""+ (today.getYear() + 1900);
		String start_month = ""+ (today.getMonth() + 1);
		String start_date = ""+ (today.getDate()-5);
		String startTime = start_year+"-"+start_month + "-" + start_date + " " + "00:00:00";
		
		dateMap.put("startTime", startTime );  
		dateMap.put("endTime",sdf.format(new Date()));  
//		System.out.println(dateMap);  
//		System.out.println(pvService.selectByDay(dateMap).size());    	
		
		list = pvService.selectByDay(dateMap);
		
		int maxNum = 0;
		for(int i = 0; i<list.size(); i++){
			if(Integer.parseInt(list.get(i).getPv()) > maxNum){
				maxNum = Integer.parseInt(list.get(i).getPv());
			}
			
			PvVo pvvo = new PvVo();
			pvvo.setPvId(list.get(i).getPvId());
			pvvo.setDay(sdf1.format(list.get(i).getHour()));
			pvvo.setPv(list.get(i).getPv());
			
			pvs.add(pvvo);
			
			System.out.println(pvvo.getDay()+", "+pvvo.getPv());
		}
	}
	
}
