package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.bean.Video;
import com.dao.WatchedDAO;

@WebServlet("/favorite_video")
public class FavoriteVideoServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		Video entity = new Video();
		HttpSession session = req.getSession();
		String email = (String) session.getAttribute("user");

		try {
			BeanUtils.populate(entity, req.getParameterMap());

			WatchedDAO dao = new WatchedDAO();

			List<Video> list = dao.getFavVideoList(email);

			if (list == null) {
				req.setAttribute("error", "Hiện tại bạn chưa thích video nào.");
			} else {
				req.setAttribute("listFavVideo", list);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.setAttribute("view", "/views/favorite_video.jsp");
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

}
