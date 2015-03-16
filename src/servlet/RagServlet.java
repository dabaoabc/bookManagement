package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Users;

public class RagServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RagServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        Users u = new Users();
        String username,password,bookname,timy;
        
		try
		{
			username=request.getParameter("username");
			password=request.getParameter("password");
			bookname=request.getParameter("bookname");
			timy=request.getParameter("timy");
			u.setBookname(bookname);
			u.setPassword(password);
			u.setTimy(timy);
			u.setUsername(username);
			//�ѵ���ɹ�����Ŀ������session��
			request.getSession().setAttribute("regUsers", u);
			request.getRequestDispatcher("../success.jsp").forward(request,response);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
