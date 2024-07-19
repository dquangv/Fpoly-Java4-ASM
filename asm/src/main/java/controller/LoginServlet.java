package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.dao.UserDao;

@WebServlet("/views/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/views/dangnhap.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserDao userDao = new UserDao();
        User user = userDao.getUserByEmail(email);

        if (user != null && user.getEmail().equals(email) && user.getPassword().equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", email);
            request.setAttribute("success", "Đăng nhập thành công!");
            response.sendRedirect(request.getContextPath() + "/views/TrangChu");
        } else {
            request.setAttribute("error", "Email hoặc mật khẩu chưa đúng!");
            request.getRequestDispatcher("/views/dangnhap.jsp").forward(request, response);
        }
    }
}
