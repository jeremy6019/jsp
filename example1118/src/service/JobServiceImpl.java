package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class JobServiceImpl implements JobService {
	//�̱��� ������ ����� ���� �ڵ� 
	private JobServiceImpl() {}
	
	private static JobService jobService;
	
	public static JobService sharedInstance() {
		if(jobService == null) {
			jobService = new JobServiceImpl();
		}
		return jobService;
	}
	
	@Override
	public boolean login(HttpServletRequest request) {
		boolean result = false;
		
		//�Ķ���͸� ���� �о���� 
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		//���� ����� 
		HttpSession session = request.getSession();
		
		if("root".equals(id)&& "1234".equals(password)) {
			//�α��� Ȯ�� ���θ� �Ǵ��ϱ� ���� �Ӽ��� ���� 
			session.setAttribute("id", id);
			session.setAttribute("nickname", "������");
			session.removeAttribute("msg");
			result = true;

		}else {
			//�α��ο� �����ؼ� �α��� �������� ���ư� ���� Ȯ���ϱ� ���ؼ� �Ӽ��� ����  
			session.setAttribute("msg", "���� ���̵��̰ų� �߸��� ��й�ȣ �Դϴ�. ");
			session.removeAttribute("id");
			session.removeAttribute("nickname");
			result = false;
		}
		
		//�Ķ���͸� ������ �ʿ��� �۾��� ���� - DAO�� �Ķ���� ����� 
		//�˰����� �����ؼ� ����� ����
		//Controller���� �Ѱ��� ������ ���� 
		//������ �ʿ��� ó���� ����  
		
		
		return result;
	}

}
