package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebFilter("/data/update")
public class AuthenticationFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AuthenticationFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		//request ����ȯ 
		HttpServletRequest req = (HttpServletRequest)request;
		//���� �������� 
		HttpSession session = req.getSession();
		if(session == null) {
			HttpServletResponse res = (HttpServletResponse)response;
			res.sendRedirect("login");
			return;
		}
		//�α��� ���� Ȯ�� 
		if(session.getAttribute("id")== null) {
			//login ��û���� �����̷�Ʈ 
			HttpServletResponse res = (HttpServletResponse)response;
			session.setAttribute("msg", "�α����� �ؾ� ����� �� �ִ� �����Դϴ�.");
			
			//��ü ��û ��ο��� ������ ������ ��ġ ã�Ƽ� �����ñ��� �ڸ��� 
			String requestURI = req.getRequestURI();
			int len =requestURI.lastIndexOf("/");
			
			String command = requestURI.substring(len+1);
			
			//������ ��θ� ���ǿ� url�� ���� 
			session.setAttribute("url",command);
			
			res.sendRedirect("login");
			return;
		}
		
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
