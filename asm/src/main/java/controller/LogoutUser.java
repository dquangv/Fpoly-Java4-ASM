package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/views/logout")
public class LogoutUser extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("logout")) {
			HttpSession session = req.getSession();
			if (session != null) {
				session.invalidate();
			}
			req.getRequestDispatcher("/views/dangnhap.jsp").forward(req, resp);
		}
	}
}
