package listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		System.out.println(
				"한 개의 세션이 추가되었습니다. ");

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		System.out.println(
				"한 개의 세션이 소멸되었습니다. ");

	}

}
