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

@WebServlet("/views/search")
public class SearchServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String keyword = req.getParameter("search");
		VideoDAO dao = new VideoDAO();
		List<Video> list = dao.searchVideo(keyword);

		req.setAttribute("view", "/views/TrangChu.jsp");
		req.setAttribute("listViDeo", list);

		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
}
