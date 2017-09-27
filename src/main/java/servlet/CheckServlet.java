package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.CheckUserService;

/**
 * Servlet implementation class CheckServlet
 */
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;
		String forword = null;
		if (username.equals("") || password.equals("")) {
			request.setAttribute("msg", "用户名或密码不能为空");
			rd = request.getRequestDispatcher("/pages/error.jsp");
			rd.forward(request, response);
		} else {
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			boolean bool = new CheckUserService().check(user);
			if (bool) {
				forword = "/pages/success.jsp";
			} else {
				request.setAttribute("msg", "用户名或密码有误，请重新输入！");
				forword = "/pages/error.jsp";
			}
			rd = request.getRequestDispatcher(forword);
			rd.forward(request, response);
		}
	}

}
