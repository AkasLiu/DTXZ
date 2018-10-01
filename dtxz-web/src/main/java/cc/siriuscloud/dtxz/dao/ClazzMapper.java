package cc.siriuscloud.dtxz.dao;

import java.util.ArrayList;
import java.util.List;

import cc.siriuscloud.dtxz.bean.Clazz;

public interface ClazzMapper {
    /**
     * 主键删除
     * @param clazzId
     * @return
     */
    int deleteByPrimaryKey(String clazzId);

    /**
     * 全插
     * @param record
     * @return
     */
    int insert(Clazz record);

    int insertSelective(Clazz record);

    Clazz selectByPrimaryKey(String clazzId);

    int updateByPrimaryKeySelective(Clazz record);

    int updateByPrimaryKey(Clazz record);

	/**
	 * 根据老师id查询出所有学生
	 * @param userId
	 * @return
	 */
	ArrayList<Clazz> selectByTeacherId(String userId);
	
	
	/**
	 * 根据userId查询出所属班级
	 * 涉及表：user_clazz ,clazz
	 * @param userId
	 * @return
	 */
	List<Clazz> selectByUserId(String userId);

	/**
	 * 根据userId查询出所属班级数目
	 * @param userId
	 * @return
	 */
	Long selectCountByUserId(String userId);

}