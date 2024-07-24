package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.bean.Watched;
import com.dao.UserDao;
import com.dao.WatchedDAO;

@WebServlet({ "/like_detail/*", "/dislike_video_detail/*" })
public class FavoriteDetailServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String email = (String) session.getAttribute("user");
		UserDao userDAO = new UserDao();
		User user = userDAO.getUserByEmail(email);
		String uri = req.getRequestURI();
		WatchedDAO dao = new WatchedDAO();

		String[] parts = uri.split("/");

		int videoId = Integer.parseInt(parts[parts.length - 1]);
		try {

			Watched watched = dao.findWatchedByVideoId(email, videoId);
			if (watched != null) {
				
				if (uri.contains("like_detail")) {
					watched.setLiked(true);
					
					watched.setLikeDate(new Date());
					dao.update(watched);
					System.out.println("aaaaaaaaaaaa");
					
				} else if (uri.contains("dislike_video_detail")) {
					watched.setLiked(false);
					
					dao.update(watched);
					System.out.println("bbbbbbbbbbbb");
				}
				
				
//				System.out.println(watched);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

//		req.setAttribute("view", "/views/details.jsp");
		req.getRequestDispatcher("/views/details/" + String.valueOf(videoId)).forward(req, resp);
	}
}
