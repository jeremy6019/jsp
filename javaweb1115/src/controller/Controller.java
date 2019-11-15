package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL 매핑 
@WebServlet("/controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    //생성자 
    public Controller() {
        super();
        
    }

	//get 방식으로 요청했을 때 호출되는 메소드 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//출력서식과 인코딩 설정 
		response.setContentType(
			"text/html; charset=UTF-8");
		//출력 객체 가져오기 
		PrintWriter out = response.getWriter();
		//출력내용 작성 
		out.println("<h3>서블릿을 이용한 출력</h3>"); 
	}

	//post 방식으로 요청했을 때 호출되는 메소드 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
