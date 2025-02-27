/**
 * 文件名：ISysOperationService.java
 *
 * 版本信息：
 * 日期：2012-10-9
 * Copyright 河南汉威电子股份有限公司软件部 Corporation 2012 
 * 版权所有
 *
 */
package com.hwsensor.permission.service;

import java.util.List;
import java.util.Map;

import com.hw.hwsafe.platform.exception.system.SystemException;
import com.hw.hwsafe.platform.service.IBaseService;
import com.hwsensor.permission.action.SysOperationAction;
import com.hwsensor.permission.pojo.SysOperationPO;

/**
 * 
 * 
 * 项目名称：framework
 * 类名称：ISysOperationService
 * 类描述：系统业务操作dao
 * 创建人：杜群星
 * 创建时间：2012-10-9 下午2:19:35
 * 修改人：杜群星
 * 修改时间：2012-10-9 下午2:19:35
 * 修改备注：
 * @version 
 *
 */
public interface ISysOperationService extends IBaseService {

	/**
	 * 添加业务操作
	 */
	public Integer insertSysOperation(SysOperationPO sysOperationPO)
			throws SystemException;

	/**
	 * 修改业务操作
	 */
	public Integer updateSysOperation(SysOperationPO sysOperationPO)
			throws SystemException;

	/**
	 * 动态修改业务操作
	 */
	public Integer updateSysOperationByMap(Map map) throws SystemException;

	/**
	 * 删除业务操作
	 */
	public Integer deleteSysOperation(SysOperationPO sysOperationPO)
			throws SystemException;

	/**
	 * 动态删除业务操作
	 */
	public Integer deleteSysOperationByMap(Map map) throws SystemException;

	/**
	 * 按条件查询业务操作列表
	 */
	public List<SysOperationPO> retrieveByCondition(Map map)
			throws SystemException;

	/**
	 * 按条件查询业务操作对象
	 */
	public SysOperationPO retrieveSysOperationByMap(Map map)
			throws SystemException;

	/**
	 * 查询操作列表业务 retrieveSysOperationList
	 * 
	 * @param name
	 * @return String
	 */
	public void retrieveSysOperationList(SysOperationAction sysOperationAction)
			throws SystemException;

	/**
	 * 添加操作业务 insertSysOperationBP
	 * 
	 * @param name
	 * @return String
	 */
	public void insertSysOperationBP(SysOperationAction sysOperationAction)
			throws SystemException;

	/**
	 * 删除操作业务 deleteSysOperationBP
	 * 
	 * @param name
	 * @return String
	 */
	public void deleteSysOperationBP(SysOperationAction sysOperationAction)
			throws SystemException;

	/**
	 * 通过页面Id,删除页面下所有操作及对应资源 deleteSysOperationsByMENUID
	 * 
	 * @param name
	 * @return String
	 */
	public void deleteSysOperationsByMENUID(String id) throws SystemException;

	/**
	 * 查询所有的操作 retrieveAllOperations
	 * 
	 * @param name
	 * @return String
	 */
	public List<SysOperationPO> retrieveAllOperations() throws SystemException;

	/**
	 * 查询企业政府管非理员角色拥有的操作 retrieveOperationsByMap
	 * 
	 * @param name
	 * @return String
	 */
	public List<SysOperationPO> retrieveOperationsByMap(Map map)
			throws SystemException;

	/**
	 * 查询系统非管理员和企业政府管理员角色拥有的操作 retrieveAllOperationsByMap
	 * 
	 * @param name
	 * @return String
	 */
	public List<SysOperationPO> retrieveAllOperationsByMap(Map map)
			throws SystemException;
}
