package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Users;

public class HelloServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public HelloServlet() {
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
		
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String str1 = "com.mysql.jdbc.Driver";
		String str2 = "jdbc:mysql://127.0.0.1:3306/test?useUnicode=true&characterEncoding=UTF-8";
		String user = "root";
		String pass = "123";

		Connection connection = null;
		PreparedStatement state = null;
		ResultSet result = null;
		
		Users u = new Users();
		String username = request.getParameter("username"); 
		String password = request.getParameter("password"); 
		u.setUsername(username);
		u.setPassword(password);
		
		try {
			// System.out.println("a");
			// 1.JDBC驱动
			Class.forName(str1);

			// 2.获取数据库连接
			connection = DriverManager.getConnection(str2, user, pass);


			String sql = "select user,password from user_table where user=? and password=?";

			state = connection.prepareStatement(sql);
			state.setString(1,username);
			state.setString(2,password);
			
			result = state.executeQuery();
			
			if (result.next()) {
				response.sendRedirect(request.getContextPath()+"/main.jsp");
				return;
			}else{
				response.sendRedirect(request.getContextPath()+"/fail.jsp");
				return;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
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
