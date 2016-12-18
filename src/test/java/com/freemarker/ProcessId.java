package com.freemarker;

public class ProcessId {

	public static void main(String[] args) {
		String processName = java.lang.management.ManagementFactory.getRuntimeMXBean().getName();
		System.out.println(processName);

		int processId = 0;
		if (processName.contains("@")) {
			processId = (short) Integer.parseInt(processName.substring(0, processName.indexOf("@")));
		} else {
			processId = (short) java.lang.management.ManagementFactory.getRuntimeMXBean().getName().hashCode();
		}
		System.out.println("process id is " + processId);

	}
}
