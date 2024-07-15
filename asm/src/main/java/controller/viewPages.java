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

@WebServlet({ "/views/TrangChu", "/views/watched", "/views/thongke", "/views/favorite_video", "/views/details",
		"/views/create_update", "/views/dangky", "/views/dangnhap", "/views/thongtincanhan" })
public class viewPages extends HttpServlet {
	 VideoDAO vidDao = new VideoDAO();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		String viewPath = "";

		if (url.contains("TrangChu")) {
			viewPath = "/views/TrangChu.jsp";
			List<Video> listViDeo = vidDao.findAll();
        	if (listViDeo != null && !listViDeo.isEmpty()) {
        	} else {
        	    System.out.println("List is empty or null");
        	}
        	req.setAttribute("listViDeo", listViDeo);
		} else if (url.contains("watched")) {
			viewPath = "/views/watched.jsp";
		} else if (url.contains("thongke")) {
			viewPath = "/views/thongke.jsp";
		} else if (url.contains("favorite_video")) {
			viewPath = "/views/favorite_video.jsp";
		} else if (url.contains("details")) {
			viewPath = "/views/details.jsp";
		} else if (url.contains("create_update")) {
			viewPath = "/views/create_update.jsp";
		} else if (url.contains("details")) {
			viewPath = "/views/details.jsp";
		} else if (url.contains("thongtincanhan")) {
			viewPath = "/views/thongtincanhan.jsp";
		} else if (url.contains("dangnhap")) {
			req.getRequestDispatcher("/views/dangnhap.jsp").forward(req, resp);
			return;
		} else if (url.contains("dangky")) {
			req.getRequestDispatcher("/views/dangky.jsp").forward(req, resp);
			return;
		}

		req.setAttribute("view", viewPath);
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
}
