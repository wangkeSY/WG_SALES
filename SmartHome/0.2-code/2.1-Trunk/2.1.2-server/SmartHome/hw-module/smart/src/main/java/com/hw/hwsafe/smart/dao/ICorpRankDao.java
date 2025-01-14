package com.hw.hwsafe.smart.dao;

import java.util.List;
import java.util.Map;

import com.hw.hwsafe.platform.dao.IBaseDao;
import com.hw.hwsafe.smart.pojo.CorpCrmPO;
import com.hw.hwsafe.smart.pojo.CorpRankPO;

public interface ICorpRankDao extends IBaseDao {

	
	/**
	 * 按月查询
	 */
	List<CorpRankPO> retrieveRankByMonth(Map<String, Object> map) throws Exception;
	/**
	 * 按星期查询
	 */
	List<CorpRankPO> retrieveRankByWeek(Map<String, Object> map) throws Exception;
	/**
	 * 查询各个地区的排名
	 */
	List<Map<String, Object>> rankOnCondition(Map<String, Object> map) throws Exception;
	
	/**
	 * 查询用户的排名
	 */
	List<Map<String, Object>> rankByUser(Map<String, Object> map) throws Exception;
	/**
	 * 查询排名中的市
	 */
	List<Map<String, Object>> retrieveCityInRank(Map<String, Object> map) throws Exception;
}
