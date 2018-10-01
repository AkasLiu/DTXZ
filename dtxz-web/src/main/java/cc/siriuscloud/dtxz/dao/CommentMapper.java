package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Answer;
import cc.siriuscloud.dtxz.bean.Comment;
import cc.siriuscloud.dtxz.bean.Problem;
import cc.siriuscloud.dtxz.bean.User;

public interface CommentMapper {
    int deleteByPrimaryKey(String commentId);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(String commentId);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
    
    
    /**
	 * 插入一条评论
	 * @return
	 */
    int insertComment(Comment comment);
    
    
    /**
     * @author Keyblade
     *	查询某个答案的所有评论
     */
    List<Comment> selectAllByAnswerId(String answerId);
    
    
}