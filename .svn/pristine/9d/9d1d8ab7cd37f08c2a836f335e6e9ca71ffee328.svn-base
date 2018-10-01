package cc.siriuscloud.dtxz.ms.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import cc.siriuscloud.dtxz.bean.Pv;
import cc.siriuscloud.dtxz.bean.vo.PvVo;
import cc.siriuscloud.dtxz.service.PvService;

@Controller
@RequestMapping("ms/data")
public class DataMsController {

	@Resource
	private PvService pvService;
	
	@RequestMapping("flowannaly")
	public String flowannaly(HttpServletRequest request){
		
		Map<String, Object> dateMap =  new HashMap<String, Object>(); 
		List<Pv> list = new ArrayList<Pv>();
		List<PvVo> pvs = new ArrayList<PvVo>();
		List<Integer> pvNum = new ArrayList<Integer>();
		
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
			
			pvNum.add(Integer.parseInt(list.get(i).getPv()));
			
			PvVo pvvo = new PvVo();
			pvvo.setPvId(list.get(i).getPvId());
			pvvo.setDay(sdf1.format(list.get(i).getHour()));
			pvvo.setPv(list.get(i).getPv());
			
			pvs.add(pvvo);
			
//			System.out.println(pvvo.getDay()+", "+pvvo.getPv());
		}
		
		maxNum = (maxNum / 100 + 1) * 108;
		
		List<Integer> nums = new ArrayList<Integer>();
		for(int i = 8; i > 0; i--){
			nums.add(maxNum / 9 * i);
		}
		
		if(pvs != null){
			
			Gson gson=new Gson();
//			String pvNums=gson.toJson(pvNum);
			
			
			request.setAttribute("pvNum", pvNum);
			request.setAttribute("pvs", pvs);	
			request.setAttribute("maxNum", maxNum);
			request.setAttribute("nums", nums);
		}
		
		return "/ms/flowannaly";
	}
	
}
