package wx;

import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.http.HttpServlet;

public class WeiXinTimeTasker extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	static {
		Timer timer = new Timer();
		timer.schedule(new TimerTask() {
			public void run() {
				WeixinConfig config = new WeixinConfig();
				String timeStamp = Long.toString(System.currentTimeMillis() / 1000);
				// 设置timestamp
				config.setTimeStamp(timeStamp);
				// 设置token 设置signature,设置ticket
				WeiXinUtil.setWeiXinConfig();

			}
		}, 0, 60 * 60 * 1000);
	}

}
