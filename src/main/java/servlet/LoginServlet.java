package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// 请求重定向
		// if (username.equals("wen") && password.equals("xiaocheng")) {
		// response.sendRedirect("/hk-jsp-study/success.jsp");
		// } else {
		// response.sendRedirect("/hk-jsp-study/error.jsp");
		// }
		// 请求转发
		String forword = null;
		if (username.equals("wen") && password.equals("xiaocheng")) {
			forword = "success.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(forword);
			dispatcher.forward(request, response);
		} else {
			forword = "error.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(forword);
			dispatcher.forward(request, response);
		}
	}
}
