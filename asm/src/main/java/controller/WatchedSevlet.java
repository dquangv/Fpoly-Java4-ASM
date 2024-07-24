package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.WatchedDAO;
import com.bean.Video;

@WebServlet("/watched_video")
public class WatchedSevlet extends HttpServlet {
    WatchedDAO watchedDAO = new WatchedDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

        Integer userId = (Integer) session.getAttribute("userId");

        if (userId != null) {
            List<Video> listVideo = watchedDAO.findAllVideoWatched(userId);
            req.setAttribute("listVideo", listVideo);

            // Kiểm tra và in ra danh sách video
            if (listVideo != null && !listVideo.isEmpty()) {
            } else {
                System.out.println("null list");
            }
        } else {
           req.getRequestDispatcher("/views/dangnhap.jsp").forward(req, resp);
        }
    }
}
