package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ApplicationListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println(
				"웹 애플리케이션이 종료되었습니다. ");

	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println(
				"웹 애플리케이션이 시작되었습니다. ");
	}

}
