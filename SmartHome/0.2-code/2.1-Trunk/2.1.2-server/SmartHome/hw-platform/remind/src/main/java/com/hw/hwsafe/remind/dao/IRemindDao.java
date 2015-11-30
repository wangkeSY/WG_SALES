/**
 * 文件名：IRemindDao.java
 *
 * 版本信息：
 * 日期：2013-4-11
 * Copyright 河南汉威电子股份有限公司软件部 Corporation 2013 
 * 版权所有
 *
 */
package com.hw.hwsafe.remind.dao;

import java.util.List;

import com.hw.hwsafe.remind.po.RemindPO;

/**
 * 
 * 项目名称：hw-remind
 * 类名称：IRemindDao
 * 类描述：
 * 创建人：陈浙东
 * 创建时间：2013-4-11 下午3:41:21
 * 修改人：陈浙东
 * 修改时间：2013-4-11 下午3:41:21
 * 修改备注：
 * @version 
 * 
 */
public interface IRemindDao {
	/**
	 * 函 数 名：insertRemind
	 * 功能描述：插入业务消息提醒数据
	 * 输入参数：
	 * @param remindPO
	 * 创建人：陈浙东
	 * 创建时间：2013-4-11 下午3:14:57
	 * 修改人：
	 * 修改时间：
	 * 修改原因描述：
	 */
	public void insertRemind(RemindPO remindPO) throws Exception;
	
	/**
	 * 函 数 名：getRemindTotal
	 * 功能描述：获取某一个人的业务消息提醒的总数
	 * 输入参数：
	 * @param receive 接收人员id 对应MA009字段
	 * 返 回 值： 
	 * @return int 总数
	 * 创建人：陈浙东
	 * 创建时间：2013-4-11 下午3:18:44
	 * 修改人：
	 * 修改时间：
	 * 修改原因描述：
	 */
	public int getRemindTotal(String receive) throws Exception;
	
	/**
	 * 
	 * 函 数 名：deleteRemind
	 * 功能描述：
	 * 输入参数：
	 * @param remindId 业务消息提醒id
	 * 创建人：陈浙东
	 * 创建时间：2013-4-11 下午3:32:23
	 * 修改人：
	 * 修改时间：
	 * 修改原因描述：
	 */
	public void deleteRemind(String remindId) throws Exception;
	
	/**
	 * 
	 * 函 数 名：getRemindList
	 * 功能描述：
	 * 输入参数：
	 * @param receive 接收人员id 对应MA009字段
	 * 返 回 值： 
	 * @return List<RemindPO>
	 * 创建人：陈浙东
	 * 创建时间：2013-4-11 下午3:34:39
	 * 修改人：
	 * 修改时间：
	 * 修改原因描述：
	 */
	public List<RemindPO> getRemindList(String receive) throws Exception;
	
	/**
	 * 
	 * 函 数 名：getRemindInfo
	 * 功能描述：根据id获取业务提醒信息
	 * 输入参数：
	 * @param remindId
	 * @throws Exception
	 * 返 回 值： 
	 * @return RemindPO
	 * 创建人：陈浙东
	 * 创建时间：2013-4-11 下午4:30:10
	 * 修改人：
	 * 修改时间：
	 * 修改原因描述：
	 */
	public RemindPO getRemindInfo(String remindId) throws Exception;
}	
