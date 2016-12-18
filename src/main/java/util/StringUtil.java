package util;

/**
 * String util
 * 
 * @author ljh
 *
 */
public class StringUtil {

	public static boolean isEmpty(String param) {

		if (param == null || param.trim().length() == 0) {
			return true;
		}

		return false;
	}

	public static String emptySetDefaultValue(String param, String defaultValue) {

		if (param == null || param.trim().length() == 0) {
			return defaultValue;
		}

		return param;
	}

}
