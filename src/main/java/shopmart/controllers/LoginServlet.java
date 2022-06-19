package shopmart.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopmart.dao.UserDao;
import shopmart.models.User;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		UserDao dao = new UserDao();
		User user = new User();
		
		if (dao.connect()) user = dao.getUser(email);
		else out.println("Database connection failed!");
		
		if (user == null) {
			out.println("Sorry! Internal Error Occored");
		}
		else if (user.getEmail().equals("")){
			request.setAttribute("msg", "Looks like you are not registered! Please try again by signing up yourself");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else if (user.validate(pass)) {
			session.setAttribute("user", user);
			response.sendRedirect("index.jsp");
		}
		else {
			request.setAttribute("msg", "Email or password error! Please try again");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
