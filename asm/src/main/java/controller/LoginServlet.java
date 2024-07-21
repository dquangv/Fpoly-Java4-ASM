package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.dao.UserDao;
import com.utils.GoogleUtils;

@WebServlet("/views/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		if (code != null && !code.isEmpty()) {
			try {
				String accessToken = GoogleUtils.getToken(code);
				User googleUser = GoogleUtils.getUserInfo(accessToken);

				UserDao userDao = new UserDao();
				User existingUser = userDao.getUserByEmail(googleUser.getEmail());

				if (existingUser == null) {
					userDao.create(googleUser);
				}
				HttpSession session = request.getSession();
				session.setAttribute("user", googleUser.getEmail());
				session.setAttribute("userImg", googleUser.getImage());
				response.sendRedirect(request.getContextPath() + "/views/TrangChu");
				return;
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "Lỗi khi đăng nhập bằng Google!");
				request.getRequestDispatcher("/views/dangnhap.jsp").forward(request, response);
				return;
			}
		}

		request.getRequestDispatcher("/views/dangnhap.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		UserDao userDao = new UserDao();
		User user = userDao.getUserByEmail(email);

		if (user != null && user.getEmail().equals(email) && user.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user.getEmail());
			session.setAttribute("userImg", user.getImage());
			request.setAttribute("success", "Đăng nhập thành công!");
			response.sendRedirect(request.getContextPath() + "/views/TrangChu");
		} else {
			request.setAttribute("error", "Email hoặc mật khẩu chưa đúng!");
			request.getRequestDispatcher("/views/dangnhap.jsp").forward(request, response);
		}
	}
}
