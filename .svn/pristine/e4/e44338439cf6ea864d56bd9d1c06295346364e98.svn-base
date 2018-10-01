package cc.siriuscloud.dtxz.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.SubmitVo;
import cc.siriuscloud.dtxz.dao.SubmitMapper;
import cc.siriuscloud.dtxz.service.SubmitService;

@Service
public class SubmitServiceImpl implements SubmitService{

	@Resource
	private SubmitMapper submitDao;

	@Override
	public PageBean<SubmitVo> findErrorSubmitsByUserId(PageBean<SubmitVo> page,String userId) {

		//先查询总条目
		Long totalRecord = submitDao.selectErrorSubmitCount(userId);
		page.setTotalRecord(totalRecord);
		page.buildParams();
		
		PageHelper.startPage(page.getPageNum(), page.getPageSize(),false);
		List<SubmitVo> submits = submitDao.selectErrorSubmits(userId);		
		page.setData(submits);
		
		return page;
	}

	@Override
	public SubmitVo findSubmitVo(String submitId) {

		if(submitId!=null){
			
			return submitDao.selectSubmitVoBySubmitId(submitId);
		}
		return null;
	}
	
	
	
	
	
	
	

}
