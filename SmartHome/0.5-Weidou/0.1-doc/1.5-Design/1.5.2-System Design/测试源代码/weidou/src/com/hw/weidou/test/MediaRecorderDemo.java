package com.hw.weidou.test;

import java.io.File;
import java.io.IOException;

import android.media.MediaRecorder;
import android.os.Handler;
import android.util.Log;

/**
 * amr音频处理
 * 
 * @author hongfa.yy
 * @version 创建时间2012-11-21 下午4:33:28
 */
public class MediaRecorderDemo {
	private final String TAG = "MediaRecord";
	private MediaRecorder mMediaRecorder;
	public static final int MAX_LENGTH = 1000 * 60 * 10;// 最大录音时长1000*60*10;

	public MediaRecorderDemo() {
	}

	private long startTime;
	private long endTime;

	/**
	 * 开始录音 使用amr格式
	 * 
	 * 录音文件
	 * 
	 * @return
	 */
	public void startRecord() {
		// 开始录音
		/* ①Initial：实例化MediaRecorder对象 */
		if (mMediaRecorder == null)
			mMediaRecorder = new MediaRecorder();
		try {
			/* ②setAudioSource/setVedioSource */
			mMediaRecorder
					.setAudioSource(MediaRecorder.AudioSource.MIC);// 设置麦克风
			/* ②设置音频文件的编码：AAC/AMR_NB/AMR_MB/Default 声音的（波形）的采样 */
			mMediaRecorder
					.setOutputFormat(MediaRecorder.OutputFormat.DEFAULT);
			/*
			 * ②设置输出文件的格式：THREE_GPP/MPEG-4/RAW_AMR/Default THREE_GPP(3gp格式
			 * ，H263视频/ARM音频编码)、MPEG-4、RAW_AMR(只支持音频且音频编码要求为AMR_NB)
			 */
			mMediaRecorder
					.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);

			/* ③准备 */
			mMediaRecorder.setMaxDuration(MAX_LENGTH);
			mMediaRecorder.prepare();
			/* ④开始 */
			mMediaRecorder.start();
			// AudioRecord audioRecord.
			/* 获取开始时间* */
			startTime = System.currentTimeMillis();
			updateMicStatus();
			Log.i("ACTION_START", "startTime" + startTime);
		} catch (IllegalStateException e) {
			Log.i(TAG,
					"call startAmr(File mRecAudioFile) failed!"
							+ e.getMessage());
		} catch (IOException e) {
			Log.i(TAG,
					"call startAmr(File mRecAudioFile) failed!"
							+ e.getMessage());
		}
	}

	/**
	 * 停止录音
	 * 
	 */
	public long stopRecord() {
		if (mMediaRecorder == null)
			return 0L;
		endTime = System.currentTimeMillis();
		Log.i("ACTION_END", "endTime" + endTime);
		mMediaRecorder.stop();
		mMediaRecorder.reset();
		mMediaRecorder.release();
		mMediaRecorder = null;
		Log.i("ACTION_LENGTH", "Time" + (endTime - startTime));
		return endTime - startTime;
	}

	private final Handler mHandler = new Handler();
	private Runnable mUpdateMicStatusTimer = new Runnable() {
		public void run() {
			updateMicStatus();
		}
	};

	/**
	 * 更新话筒状态
	 * 
	 */
	private int BASE = 1;
	private int SPACE = 5;// 间隔取样时间
	private StringBuilder sb = null;

	public void updateMicStatus() {
		if (sb == null) {
			if (sb.length() > 5000) {
				Log.d(TAG, "分贝值：" + sb.toString());
				sb = null;
			}
		}
		
		if (mMediaRecorder != null) {
			double ratio = (double) mMediaRecorder
					.getMaxAmplitude() / BASE;
			double db = 0;// 分贝
			if (ratio > 1)
				db = 20 * Math.log10(ratio);
			if(sb==null){
				sb = new StringBuilder();
			}
			sb.append(db);
			// Log.d(TAG,"分贝值："+db);
			mHandler.postDelayed(mUpdateMicStatusTimer, SPACE);
		}
	}
}