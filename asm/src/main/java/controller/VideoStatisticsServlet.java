package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Video;
import com.dao.VideoDAO;

@WebServlet("/VideoStatistics")
public class VideoStatisticsServlet extends HttpServlet {
    private VideoDAO videoDAO = new VideoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Video> videoStatistics = videoDAO.getVideoStatistics();
        req.setAttribute("videoStatistics", videoStatistics);
    }

}

