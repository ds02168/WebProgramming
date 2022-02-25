package web2021.study04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet_study
 */
@WebServlet("/LoginServlet_study")
public class LoginServlet_study extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		out.println("<html>");
		out.println("<head><title>로그인 정보 출력</title></head>");
		out.println("<body>");
		out.println("<h2>로그인 정보 출력 - Servlet</h2>");
		out.println("<p>로그인 id : " + login + "</p>");
		out.println("<p>패스워드 : " + password + "</p>");
		out.println("</body></html>");
	}

}
