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

import com.bean.User;
import com.bean.Video;
import com.bean.Watched;
import com.dao.UserDao;
import com.dao.WatchedDAO;

@WebServlet({ "/favorite_video", "/unlike_video/*" })
public class FavoriteVideoServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		Video entity = new Video();
		HttpSession session = req.getSession();
		String email = (String) session.getAttribute("user");
		UserDao userDAO = new UserDao();
		User user = userDAO.getUserByEmail(email);
		String uri = req.getRequestURI();
		WatchedDAO dao = new WatchedDAO();

//		if (uri.contains("favorite_video")) {
//			try {
//				BeanUtils.populate(entity, req.getParameterMap());
//
//				List<Video> list = dao.getFavVideoList(email);
//
//				if (list == null || list.isEmpty()) {
//					req.setAttribute("error", "Hiện tại bạn chưa thích video nào.");
//				} else {
//					req.setAttribute("listFavVideo", list);
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//
//		} else 
		if (uri.contains("unlike_video")) {
//			String[] parts = uri.split("/");
//
//			try {
//				if (parts.length > 2) {
//					int videoId = Integer.parseInt(parts[parts.length - 1]);
//					dao.dislikeVideoByVideoId(email, videoId);
//					System.out.println(videoId + " - " + email);
//				} else {
//					req.setAttribute("error", "Invalid video ID.");
//				}
//			} catch (NumberFormatException e) {
//				req.setAttribute("error", "Invalid video ID.");
//				e.printStackTrace();
//			}

			String[] parts = uri.split("/");

			try {
				if (parts.length > 2) {
					int videoId = Integer.parseInt(parts[parts.length - 1]);
//			int videoId = Integer.parseInt(req.getParameter("videoId"));
					Watched watched = dao.findWatchedByVideoId(email, videoId);

					if (watched != null) {
						watched.setLiked(false);
						if (dao.update(watched)) {
							System.out.println("success");
						} else {
							System.out.println("failure");
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		try {
			BeanUtils.populate(entity, req.getParameterMap());

			List<Video> list = dao.getFavVideoList(email);

			if (list == null || list.isEmpty()) {
				req.setAttribute("error", "Hiện tại bạn chưa thích video nào.");
			} else {
				req.setAttribute("listFavVideo", list);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		User userAdmin = userDAO.getUserByRole(true);
		
		req.setAttribute("userAdmin", userAdmin);
		req.setAttribute("user", user);
		req.setAttribute("view", "/views/favorite_video.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
}
