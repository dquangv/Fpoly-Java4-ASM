package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.bean.User;
import com.dao.UserDao;

@WebServlet("/views/signup")
public class AccountServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/dangky.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			try {
				req.setCharacterEncoding("UTF-8");
				resp.setCharacterEncoding("UTF-8");
				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());
				entity.setImage("default_user_avatar.jpg");
				UserDao dao = new UserDao();
				User existedUser = dao.getUserByEmail(entity.getEmail());

				if (existedUser == null) {
					dao.create(entity);
					HttpSession session = req.getSession();
			        session.setAttribute("user", entity.getEmail());
				} else {
					req.setAttribute("error", "Email này đã tồn tại");
					req.getRequestDispatcher("/views/dangky.jsp").forward(req, resp);
					return;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		req.getRequestDispatcher("/views/thongtincanhan").forward(req, resp);
	}
}
