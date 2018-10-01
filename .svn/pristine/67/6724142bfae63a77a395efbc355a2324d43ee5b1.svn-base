package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Problem;

public interface ProblemMapper {
    int deleteByPrimaryKey(String probId);

    int insert(Problem record);

    int insertSelective(Problem record);

    Problem selectByPrimaryKey(String probId);

    int updateByPrimaryKeySelective(Problem record);

    int updateByPrimaryKey(Problem record);
    
    /**
	 * 插入一条问题
	 * @return
	 */
    int insertProblemByUUID(Problem problem);
    
    /**
	 * 查询所有问题
	 * @return
	 */
    List<Problem> selectAll();
    
    /**
   	 * 查询n条记录
   	 * @return
   	 */
    List<Problem> selectN(int size);
    
    Long selectCountAll();
    
    Long selectCountByUserId(String userId);
    
    /**
	 * 更新回答数
	 * @return
	 */
    
    
    /**
	 * 查询某个用户发出的问题
	 * @return
	 */
    List<Problem> selectProblemByUserId(String userId);  
    
    
    /*
     * 根据title查询问题
     * @author Ace
     * 
     */
    List<Problem> selectProblemLikeTitle(String title);  
    
}