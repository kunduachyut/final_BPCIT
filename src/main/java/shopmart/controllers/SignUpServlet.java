package shopmart.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopmart.dao.UserDao;
import shopmart.models.User;

public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User(request.getParameter("email"), request.getParameter("name"), request.getParameter("password"));
		PrintWriter out = response.getWriter();
		UserDao dao = new UserDao();
		
		if (!dao.connect()) out.println("Database connection failed!");
		
		if (dao.registerUser(user)) {
			request.getSession().setAttribute("user", user);
			response.sendRedirect("index.jsp");
		}
		else {
			request.setAttribute("msg", "You are already registered! Please try to sign in... ");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
