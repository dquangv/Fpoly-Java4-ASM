package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.UserDao;
import com.bean.User;

@WebServlet("/views/resetPassword")
public class ResetPasswordServlet extends HttpServlet {
	private UserDao userDao = new UserDao();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idParam = req.getParameter("id");
		String emailParam = req.getParameter("email");

		if (idParam != null && emailParam != null) {
			int userId = Integer.parseInt(idParam);
			User user = userDao.getUserByEmail(emailParam);

			if (user != null && user.getId() == userId) {
				req.setAttribute("user", user);
				req.getRequestDispatcher("/views/resetPasswordForm.jsp").forward(req, resp);
			} else {
				req.setAttribute("error", "Liên kết khôi phục mật khẩu không hợp lệ.");
				req.getRequestDispatcher("/views/forgotPassword.jsp").forward(req, resp);
			}
		} else {
			req.setAttribute("error", "Liên kết khôi phục mật khẩu không hợp lệ.");
			req.getRequestDispatcher("/views/forgotPassword.jsp").forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String newPassword = req.getParameter("password");
	    String confirmPassword = req.getParameter("confirmPassword");
	    int userId = Integer.parseInt(req.getParameter("id"));
	    String userEmail = req.getParameter("email");

	    if (newPassword != null && confirmPassword != null && newPassword.equals(confirmPassword)) {
	        boolean success = userDao.updatePassword(userId, newPassword);

	        if (success) {
	            req.setAttribute("message", "Mật khẩu của bạn đã được khôi phục thành công.");
	            req.getRequestDispatcher("/views/resetPasswordForm.jsp").forward(req, resp);
	        } else {
	            req.setAttribute("error", "Có lỗi xảy ra khi khôi phục mật khẩu.");
	            req.getRequestDispatcher("/views/resetPasswordForm.jsp").forward(req, resp);
	        }
	    } else {
	        req.setAttribute("error", "Mật khẩu và xác nhận mật khẩu không khớp.");
	        req.getRequestDispatcher("/views/resetPasswordForm.jsp?id=" + userId + "&email=" + userEmail).forward(req, resp);
	    }
	}


}
