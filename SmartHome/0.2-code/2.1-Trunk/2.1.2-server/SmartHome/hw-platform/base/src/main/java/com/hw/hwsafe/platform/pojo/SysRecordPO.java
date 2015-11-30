/**
 * 文件名：SysRecordPO.java
 *
 * 版本信息：1.0
 * 日期：2012-09-29
 * Copyright 河南汉威电子股份有限公司软件部 Corporation 2012 
 * 版权所有
 *
 */
package com.hw.hwsafe.platform.pojo;
import java.io.Serializable;
import java.util.Date;

/**
 * SYS_RECORDPO类
 *
 */
public class SysRecordPO implements Serializable {

	private static final long serialVersionUID = 1L;

	// -------------- fields --------------

	/**
	 * 主键
	 */
	private String ma001;

	/**
	 * 表名
	 */
	private String ma002;

	/**
	 * 关联的主键
	 */
	private String ma003;

	/**
	 * 列名
	 */
	private String ma004;

	/**
	 * 旧的值
	 */
	private String ma005;

	/**
	 * 新的值
	 */
	private String ma006;

	/**
	 * 修改日期
	 */
	private Date ma007;

	/**
	 * 修改人
	 */
	private String ma008;

	/**
	 * 同次标志 随机生成一个就好
	 */
	private String ma009;

	/**
	 * 备用1
	 */
	private String ma010;

	/**
	 * 备用2
	 */
	private String ma011;

	/**
	 * 备用3
	 */
	private String ma012;

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

	public String getMa005() {
		return ma005;
	}

	public void setMa005(String ma005) {
		this.ma005 = ma005;
	}

	public String getMa006() {
		return ma006;
	}

	public void setMa006(String ma006) {
		this.ma006 = ma006;
	}

	public Date getMa007() {
		return ma007;
	}

	public void setMa007(Date ma007) {
		this.ma007 = ma007;
	}

	public String getMa008() {
		return ma008;
	}

	public void setMa008(String ma008) {
		this.ma008 = ma008;
	}

	public String getMa009() {
		return ma009;
	}

	public void setMa009(String ma009) {
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

}