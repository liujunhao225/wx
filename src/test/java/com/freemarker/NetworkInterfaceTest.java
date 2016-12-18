package com.freemarker;

import java.net.NetworkInterface;
import java.util.Enumeration;

public class NetworkInterfaceTest {

	public static void main(String[] args) throws Exception {
		// 获取网卡，获取地址
		Enumeration<NetworkInterface> nts = NetworkInterface.getNetworkInterfaces();
		while (nts.hasMoreElements()) {
			byte[] mac = nts.nextElement().getHardwareAddress();
			if (mac != null) {
				System.out.println("mac数组长度：" + mac.length);
				StringBuffer sb = new StringBuffer("");
				for (int i = 0; i < mac.length; i++) {
					if (i != 0) {
						sb.append("-");
					}
					// 字节转换为整数
					int temp = mac[i] & 0xff;
					String str = Integer.toHexString(temp);
					System.out.println("每8位:" + str);
					if (str.length() == 1) {
						sb.append("0" + str);
					} else {
						sb.append(str);
					}
				}
				System.out.println("本机MAC地址:" + sb.toString().toUpperCase());
			}
		}

	}

}
