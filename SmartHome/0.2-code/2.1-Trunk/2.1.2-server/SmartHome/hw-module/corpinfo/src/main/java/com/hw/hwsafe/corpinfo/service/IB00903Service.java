package com.hw.hwsafe.corpinfo.service;

import java.util.List;

import com.hw.hwsafe.corpinfo.action.B00903Action;
import com.hw.hwsafe.corpinfo.pojo.B00903PO;
import com.hw.hwsafe.platform.service.IBaseService;

public interface IB00903Service extends IBaseService {
	/**
	 * 
	 * @Title: retrieveAllB00903
	 * @Description: TODO 
	 * 作者：刁海港
	 * @param @return
	 * @param @throws Exception
	 * @return List<B00903PO>
	 * @throws
	 */
	
	public List<B00903PO> retrieveAllB00903() throws Exception;
	
	/**
	 * 
	 * @Title: retrieveB00903ByID
	 * @Description: TODO 
	 * 作者：刁海港
	 * @param @param b00903ID
	 * @param @return
	 * @param @throws Exception
	 * @return B00903PO
	 * @throws
	 */
	public B00903PO retrieveB00903ByID(String b00903ID) throws Exception;
	
	/**
	 * 
	 * @Title: retrieveB00903ByPO
	 * @Description: TODO 
	 * 作者：刁海港
	 * @param @param b00903PO
	 * @param @return
	 * @param @throws Exception
	 * @return List<B00903PO>
	 * @throws
	 */
	
	public List<B00903PO> retrieveB00903ByPO(B00903PO b00903PO) throws Exception;
	
	/**
	 * 
	 * @Title: insertB00903
	 * @Description: TODO 
	 * 作者：刁海港
	 * @param @param b00903PO
	 * @param @throws Exception
	 * @return void
	 * @throws
	 */
	public void insertB00903(B00903PO b00903PO,B00903Action b00903Action) throws Exception;
	
	
	/**
	 * 
	 * @Title: updateB00903
	 * @Description: TODO 
	 * 作者：刁海港
	 * @param @param b00903PO
	 * @param @throws Exception
	 * @return void
	 * @throws
	 */
	public void updateB00903(B00903PO b00903PO,B00903Action b00903Action) throws Exception;
	
	
	/**
	 * 
	 * @Title: deleteB00903ByID
	 * @Description: TODO 
	 * 作者：刁海港
	 * @param @param userID
	 * @param @throws Exception
	 * @return void
	 * @throws
	 */
	public void deleteB00903ByID(String userID,B00903Action b00903Action) throws Exception;
	public List<B00903PO> retrieveB00903ByParentID(String id) throws Exception;
}

