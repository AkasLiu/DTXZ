package cc.siriuscloud.dtxz.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cc.siriuscloud.dtxz.bean.Pv;
import cc.siriuscloud.dtxz.dao.PvMapper;
import cc.siriuscloud.dtxz.service.PvService;

@Service
public class PvServiceImpl implements PvService {

	@Resource
	PvMapper pvDao;
	
	public List<Pv> selectByDay(Map<String, Object> map){
		
		return  pvDao.selectByDay(map);
	}

}
