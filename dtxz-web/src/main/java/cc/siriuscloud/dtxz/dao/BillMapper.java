package cc.siriuscloud.dtxz.dao;

import cc.siriuscloud.dtxz.bean.Bill;

public interface BillMapper {
    int deleteByPrimaryKey(String billId);

    int insert(Bill record);

    int insertSelective(Bill record);

    Bill selectByPrimaryKey(String billId);

    int updateByPrimaryKeySelective(Bill record);

    /**
     * 
     * @param record
     * @return
     */
    int updateByPrimaryKey(Bill record);
}