package util;

import java.text.SimpleDateFormat;

/**
 * 日期工具类
 * 
 * @author ljh
 *
 */
public class DateTimeUtil {

	public static String getTime() {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String now = sf.format(System.currentTimeMillis());
		return now;

	}

}
