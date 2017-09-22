
// 导入必需的 java 库
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 扩展 HttpServlet 类
public class MyServlet extends HttpServlet {

	private String message;

	public void init() throws ServletException {
		// 执行必需的初始化
		message = "Hello World";
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置响应内容类型
		response.setContentType("text/html;charset=UTF-8");

		// 实际的逻辑是在这里
		PrintWriter out = response.getWriter();
		String title = "使用 GET方法读取表单数据";
		out.print(title + "<br/> name:" + request.getParameter("name"));
	}

	public void destroy() {
		// 什么也不做
	}
}