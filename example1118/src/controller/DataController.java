package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.JobService;
import service.JobServiceImpl;


@WebServlet("/data/*")
public class DataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public JobService jobService;
    
    public DataController() {
        super();
        jobService = JobServiceImpl.sharedInstance();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    //Ŭ���̾�Ʈ ��û �߿��� ���еǴ� �κи� �߶󳻱� 
		String contextPath = request.getContextPath();
		String requestURI = request.getRequestURI();
		String command = requestURI.substring(contextPath.length());
		
		RequestDispatcher dispatcher = null;
		//GET�� �����ؼ� ó�� 
		if("/data/login".equals(command) && "GET".equals(request.getMethod())) {
			//������ msg�� �����Ͱ� ������ request�� �ű�� ���� 
			request.setAttribute("msg", request.getSession().getAttribute("msg"));
			request.getSession().removeAttribute("msg");						
			
			//job���丮�� login.jsp�� ������
			dispatcher = request.getRequestDispatcher("../job/login.jsp");
			dispatcher.forward(request, response);
		}else if("/data/login".equals(command) && "POST".equals(request.getMethod())) {			 
			//������ �޼ҵ� ȣ�� 
			boolean r = jobService.login(request);
			//�α����� �������� �� 
			if(r== true) {
				//���ǿ� URL�� ����Ǿ����� Ȯ���ؼ� ���� �����ɴϴ�. 
				String url = (String)request.getSession().getAttribute("url");
				//���Ϳ��� ������ ������ �����̷�Ʈ 
				if(url != null) {
					request.getSession().setAttribute("url", null);
					response.sendRedirect(url);
					return;
				}
				//�α��ο� ������ ��� ���� �������� �����̷�Ʈ 
				response.sendRedirect("../");
			}else {
				//�α��ο� ������ ��� �α��� �������� �����̷�Ʈ 
				response.sendRedirect("login");
			}
		}else if("/data/update".equals(command)) {
			dispatcher = request.getRequestDispatcher("../job/update.jsp");
			dispatcher.forward(request, response);
		}else if("/data/read".equals(command)) {
			dispatcher = request.getRequestDispatcher("../job/read.jsp");
			dispatcher.forward(request, response);
		}else if("/data/logout".equals(command)) {
			//���� �ʱ�ȭ 
			HttpSession session = request.getSession();
			session.invalidate();
			//������������ �̵� 
		    response.sendRedirect("../");
	
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
