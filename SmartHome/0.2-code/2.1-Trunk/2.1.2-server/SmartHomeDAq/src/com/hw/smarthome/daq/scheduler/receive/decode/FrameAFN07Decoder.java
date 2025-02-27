package com.hw.smarthome.daq.scheduler.receive.decode;

import java.util.LinkedList;
import java.util.List;

import com.hw.smarthome.daq.constant.FrameConstant;
import com.hw.smarthome.daq.po.DAqPo;
import com.hw.smarthome.daq.po.DataItemAFN07FN01;
import com.hw.smarthome.daq.po.DataItemAFN07FN02;
import com.hw.smarthome.daq.po.base.DataItem;
import com.hw.smarthome.daq.scheduler.receive.decode.base.FrameDecoder;
import com.hw.util.ByteUtils;

/**
 * 应用层功能码AFN=0x07，被控设备主动上报
 * 
 * @author 曾凡
 * @time 2015年1月6日 下午6:00:06
 */
public class FrameAFN07Decoder extends FrameDecoder {
	private static FrameAFN07Decoder instance = null;

	public static FrameAFN07Decoder getInstance() {
		if (instance == null) {
			instance = new FrameAFN07Decoder();
		}
		return instance;
	}

	@Override
	public void handleFrame(DAqPo frame) {
		int pos = FrameConstant.CONTENT_INDEX;
		pos = decode(frame, pos);
		decodeFinish(frame, pos);
	}

	/**
	 * 有Fn2就必须有Fn1
	 * 
	 * @author 曾凡
	 * @param frame
	 * @param pos
	 * @return
	 * @time 2015年4月14日 上午11:14:18
	 */
	private int decode(DAqPo frame, int pos) {
		byte[] bytes = frame.getReceiveData();
		/* 获取Fn的数量 */
		int sensorCount = ByteUtils.getBin(bytes, pos++);
		int fn = 0;
		List<DataItem> dataItems = new LinkedList<DataItem>();
		frame.setDataItems(dataItems);
		String mac = "";
		for (int i = 0; i < sensorCount; i++) {
			fn = ByteUtils.getBin(bytes, pos++);
			switch (fn) {
			case 0x01:
				DataItemAFN07FN01 tempItem1 = new DataItemAFN07FN01();
				pos = decodeFn01(tempItem1, bytes, pos);
				mac = tempItem1.getSerialNum();
				tempItem1.setSensorId(mac);
				/* Fn1可以单独使用，Fn2必须配合Fn1 */
				// frame.setSensorId(tempItem1.getSerialNum());
				dataItems.add(tempItem1);
				break;
			case 0x02:
				pos = decodeFn02(dataItems, bytes, pos);
				break;
			}
		}
		return pos;
	}

	private int decodeFn01(DataItemAFN07FN01 tempItem,
			byte[] bytes, int pos) {
		/* 设备类型 */
		String deviceType = ByteUtils.getBinHexStrs(bytes, pos,
				2);
		tempItem.setDeviceType(deviceType);
		pos += 2;
		/* 硬件版本 */
		String hardVer = ByteUtils.getBinHexStrs(bytes, pos, 4);
		tempItem.setHardVer(hardVer);
		pos += 4;
		/* 软件版本 */
		String softVer = ByteUtils.getBinHexStrs(bytes, pos, 4);
		tempItem.setSoftVer(softVer);
		pos += 4;
		/* 序列号(MAC) */
		String serialNum = ByteUtils
				.getBinHexStrs(bytes, pos, 6);
		tempItem.setSerialNum(serialNum);
		pos += 6;
		/* token */
		String token = ByteUtils.getBinHexStrs(bytes, pos, 2);
		tempItem.setToken(token);
		pos += 2;
		/* 保留6byte */
		String reserve6 = ByteUtils.getBinHexStrs(bytes, pos, 6);
		tempItem.setReserve6(reserve6);
		pos += 6;
		/* IO数量 */
		int switchAmount = ByteUtils.getBin(bytes, pos++);
		tempItem.setSwitchAmount(switchAmount);
		/* 串口数量 */
		int portAmount = ByteUtils.getBin(bytes, pos++);
		tempItem.setPortAmount(portAmount);
		/* 保留2byte */
		String reserve2 = ByteUtils.getBinHexStrs(bytes, pos, 2);
		tempItem.setReserve2(reserve2);
		pos += 2;
		return pos;
	}

	/**
	 * 格式与AFN10的Fn01相同
	 * 
	 * @author 曾凡
	 * @param tempItem
	 * @param bytes
	 * @param pos
	 * @return
	 * @time 2015年4月14日 上午11:43:02
	 */
	private int decodeFn02(List<DataItem> dataItems,
			byte[] bytes, int pos) {
		/* 开关数量 */
		int switchAmount = ByteUtils.getBin(bytes, pos++);

		DataItemAFN07FN02 tempItem = null;
		for (int i = 0; i < switchAmount; i++) {
			tempItem = new DataItemAFN07FN02();
			tempItem.setSwitchAmount(switchAmount);
			/* 开关序号 */
			int switchNum = ByteUtils.getBin(bytes, pos++);
			tempItem.setSwitchNum(switchNum);
			/* 开关类型 */
			String switchType = ByteUtils.getBinHexStr(bytes,
					pos++);
			tempItem.setSwitchType(switchType);
			/* 开关状态 */
			String switchState = ByteUtils.getBinHexStr(bytes,
					pos++);
			tempItem.setSwitchState(switchState);
			/* 保留2字节 */
			String reserve2 = ByteUtils.getBinHexStrs(bytes, pos, 2);
			tempItem.setReserve2(reserve2);
			pos += 2;
			dataItems.add(tempItem);
		}

		return pos;
	}
}
