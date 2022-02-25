package web2021.study04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet_study
 */
@WebServlet("/CalcServlet_study")
public class CalcServlet_study extends HttpServlet {
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
		
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String op = request.getParameter("operator");
		
		int result = calc(num1, num2, op);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>계산기</title></head>");
		out.println("<body><center><h2>계산 결과</h2><hr>");
		out.println(num1 + " " + op + " " + num2 + " = " + result);
		out.println("</center></body>");
		out.println("</html>");
	}
	
	private int calc(int num1, int num2, String op) {
		switch(op) {
		case"+":return num1+num2;
		case"-":return num1-num2;
		case"*":return num1*num2;
		case"/":return num1/num2;
		}
		return 0;
	}
}
