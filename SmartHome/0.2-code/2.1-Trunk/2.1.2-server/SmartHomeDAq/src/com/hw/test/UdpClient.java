package com.hw.test;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

import com.hw.util.ByteUtils;

public class UdpClient {
	private static final int UDP_PORT = 59999;
	private DatagramSocket udp = null;
	private DatagramPacket recdp = null;

	public UdpClient(int sleepTimes, byte[] bytes) {
		try {
			udp = new DatagramSocket();
			// 设置广播开关
			udp.setBroadcast(false);
			recdp = new DatagramPacket(bytes, bytes.length,
			// InetAddress.getByName("219.150.156.51"), UDP_PORT);
					InetAddress.getByName("127.0.0.1"), UDP_PORT);
			udp.send(recdp);
			udp.close();

		} catch (SocketException e) {
			System.out.println("创建端口监听客户端失败" + e);
			e.printStackTrace();
		} catch (UnknownHostException ex) {
			System.out.println("UnknownHostException" + ex);
			ex.printStackTrace();
		} catch (IOException e) {
			System.out.println("发送失败" + e);
			e.printStackTrace();
		}

	}

	public static void main(String[] args)
			throws InterruptedException {
		/* afn 0x08 主动上报 空气电台*/
//		String hexString08 = "68004068B6735B0E30F4B00D7FCDBC47A22057372C7BC56C341F3229DD103F08C54427C9C69FE8AE7840526BD41068ACBA91DF7AA7D8FA44214F4D8664CCC74345A41C92A216";
		/* afn 0x08 主动上报 燃气*/
		String hexString08 = "680020684E6F530ABF6AFC5B388EB2F7C407B33DC408779BCF8B18921756CD6836CA13F55016";
		/* afn 0x07 被控主动上报 空气电台*/
//		String hexString07 = "68004068589442D716014D3E7C9445C5B0C14A37312985349E94F3B60E566C2829B88A15CB18A634C2DB361F2C78C6CC41E07F06BCCDC2F126BA4D492D736DEADB14ED77A016";
		byte[] bytes08 = ByteUtils.toBytes(hexString08);
//		byte[] bytes07 = ByteUtils.toBytes(hexString07);
		while (true) {
			new UdpClient(1, bytes08);
//			new UdpClient(1, bytes07);//500000011DAC
//			Thread.sleep(-1);
		}
	}

}
