package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.bean.User;
import com.dao.UserDao;

@WebServlet("/dangky")
public class AccountServlet extends HttpServlet {
//	@Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.getRequestDispatcher("/views/dangky.jsp").forward(req, resp);
//    }
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			try {
				req.setCharacterEncoding("UTF-8");
				resp.setCharacterEncoding("UTF-8");
				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());
				UserDao dao = new UserDao();
				dao.create(entity);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		req.getRequestDispatcher("/views/dangky.jsp").forward(req, resp);
	}
}
