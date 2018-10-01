package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Answer;
import cc.siriuscloud.dtxz.bean.Problem;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.AnswerVo;

/**
 * @author sirius
 *
 */
public interface AnswerMapper {
    int deleteByPrimaryKey(String answerId);

    int insert(Answer record);

    int insertSelective(Answer record);

    Answer selectByPrimaryKey(String answerId);

    int updateByPrimaryKeySelective(Answer record);

    int updateByPrimaryKey(Answer record);
    
    /**
     * @author Keyblade
     *	插入一条回答
     */
    int insertAnswerByUUID(Answer answer);
    
    /**
     * @author Keyblade
     *	查询某个问题一页的回答
     */
    List<Answer> selectAll(String porbId);
    
    /**
     * @author Keyblade
     *	查询某个问题的回答数
     */
    Long selectAnswerCountByProbId(String probId);

	/**
	 * 根据id查询所有回答视图
	 * @param probId
	 * @return
	 */
	List<AnswerVo> selectAnswerVos(String probId);


	/**
	 * 根据用户id查询出回答数
	 * @param userId
	 */
	Long countAnswerByUserId(String userId);


	/**
	 * 获取本人总的获赞数
	 * @param userId
	 * @return
	 */
	Long countPraiseByUserId(String userId);


}