package com.hw.hwsafe.smart.dao;

import java.util.List;

import com.hw.hwsafe.platform.dao.IBaseDao;
import com.hw.hwsafe.smart.pojo.ScenePO;

public interface ISceneDao extends IBaseDao {
	
	/**
	 * 通过id获取实例
	 */
	ScenePO retrieveInstanceById(String ma001) throws Exception;
	
	/**
	 * 通过PO获取实例
	 */
	List<ScenePO> retrieveInstanceByPO(ScenePO scenePO) throws Exception;
	/**
	 * 获得全部
	 */
	List<ScenePO> retrieveAllInstance() throws Exception;

	/**
	 * 添加实例
	 */
	void insertInstance(ScenePO scenePO) throws Exception;

	/**
	 * 修改实例
	 */
	void updateInstance(ScenePO scenePO) throws Exception;

	/**
	 * 通过id删除实例
	 */
	void deleteInstanceById(String ma001) throws Exception;
	/**
	 * 清除该空气设备
	 */
	void clearAirAllInstance(ScenePO scenePO) throws Exception;
	/**
	 * 清除该燃气设备
	 */
	void clearGasAllInstance(ScenePO scenePO) throws Exception;
}
