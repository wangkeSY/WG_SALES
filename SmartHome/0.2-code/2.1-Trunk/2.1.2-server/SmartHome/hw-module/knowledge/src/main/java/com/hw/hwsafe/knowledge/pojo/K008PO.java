/**
 * 文件名：K008PO.java
 *
 * 版本信息：1.0
 * 日期：2012-09-29
 * Copyright 河南汉威电子股份有限公司软件部 Corporation 2012 
 * 版权所有
 *
 */
package com.hw.hwsafe.knowledge.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * K008PO类
 *
 */
public class K008PO implements Serializable {

	private static final long serialVersionUID = 1L;

	// -------------- fields --------------

	/**
	 * 主键
	 */
	private String ma001;

	/**
	 * 名称
	 */
	private String ma002;

	/**
	 * 编号
	 */
	private String ma003;

	/**
	 * 类别
	 */
	private String ma004;

	/**
	 * 发布日期
	 */
	private Date ma005;

	/**
	 * 是否有效 0有效 1无效
	 */
	private String ma006;

	/**
	 * 颁布机构
	 */
	private String ma007;

	/**
	 * 创建人
	 */
	private String ma008;

	/**
	 * 创建日期
	 */
	private Date ma009;

	/**
	 * 内容概要
	 */
	private String ma010;

	/**
	 * 备用1
	 */
	private String ma011;

	/**
	 * 备用2
	 */
	private String ma012;

	/**
	 * 备用3
	 */
	private String ma013;

	/**
	 * 备用4
	 */
	private String ma014;
	
	
	private List<K00801PO> k00801List;
	/**
	 * 有效
	 */
	public static String ISVALID_OK = "0";
	/**
	 * 无效
	 */
	public static String ISVALID_NO = "1";

	// -------------- getter and setter --------------

	public String getMa001() {
		return ma001;
	}

	public void setMa001(String ma001) {
		this.ma001 = ma001;
	}

	public String getMa002() {
		return ma002;
	}

	public void setMa002(String ma002) {
		this.ma002 = ma002;
	}

	public String getMa003() {
		return ma003;
	}

	public void setMa003(String ma003) {
		this.ma003 = ma003;
	}

	public String getMa004() {
		return ma004;
	}

	public void setMa004(String ma004) {
		this.ma004 = ma004;
	}

	public Date getMa005() {
		return ma005;
	}

	public void setMa005(Date ma005) {
		this.ma005 = ma005;
	}

	public String getMa006() {
		return ma006;
	}

	public void setMa006(String ma006) {
		this.ma006 = ma006;
	}

	public String getMa007() {
		return ma007;
	}

	public void setMa007(String ma007) {
		this.ma007 = ma007;
	}

	public String getMa008() {
		return ma008;
	}

	public void setMa008(String ma008) {
		this.ma008 = ma008;
	}

	public Date getMa009() {
		return ma009;
	}

	public void setMa009(Date ma009) {
		this.ma009 = ma009;
	}

	public String getMa010() {
		return ma010;
	}

	public void setMa010(String ma010) {
		this.ma010 = ma010;
	}

	public String getMa011() {
		return ma011;
	}

	public void setMa011(String ma011) {
		this.ma011 = ma011;
	}

	public String getMa012() {
		return ma012;
	}

	public void setMa012(String ma012) {
		this.ma012 = ma012;
	}

	public String getMa013() {
		return ma013;
	}

	public void setMa013(String ma013) {
		this.ma013 = ma013;
	}

	public String getMa014() {
		return ma014;
	}

	public void setMa014(String ma014) {
		this.ma014 = ma014;
	}

	public List<K00801PO> getK00801List() {
		return k00801List;
	}

	public void setK00801List(List<K00801PO> k00801List) {
		this.k00801List = k00801List;
	}

}