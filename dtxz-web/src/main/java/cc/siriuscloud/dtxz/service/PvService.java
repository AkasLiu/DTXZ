package cc.siriuscloud.dtxz.service;

import java.util.List;
import java.util.Map;

import cc.siriuscloud.dtxz.bean.Pv;

public interface PvService {

	public List<Pv> selectByDay(Map<String, Object> map);
	
}
