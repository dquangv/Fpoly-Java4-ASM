package controller;


import java.io.IOException;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.UserDao;
import com.bean.User;

@WebServlet("/views/forgotPassword")
public class ForgotPasswordServlet extends HttpServlet {
    private UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/quenMatKhau.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        User user = userDao.getUserByEmail(email);

        if (user != null) {
            String resetLink = "http://localhost:8080/fpoly/views/resetPassword?id=" + user.getId() + "&email=" + user.getEmail();
            String from = "quangbmps28437@fpt.edu.vn";
            String host = "smtp.gmail.com";
            final String username = "quangbmps28437@fpt.edu.vn";
            final String password = "xgpufdzqgxhymkut";

            Properties properties = System.getProperties();
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.starttls.enable", "true");
            properties.put("mail.smtp.host", host);
            properties.put("mail.smtp.port", "587");

            Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });

            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(from));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
                message.setSubject("Khôi phục mật khẩu", "UTF-8");
                message.setContent(
                        "<p>Chúng tôi đã nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn.</p>"
                        + "<p>Vui lòng nhấp vào liên kết bên dưới để khôi phục mật khẩu của bạn:</p>"
                        + "<p><a href='" + resetLink + "'>Khôi phục mật khẩu</a></p>"
                        + "<p>Nếu bạn không yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p>",
                        "text/html; charset=UTF-8");

                Transport.send(message);
                req.setAttribute("message", "Một email khôi phục mật khẩu đã được gửi đến địa chỉ của bạn.");
            } catch (MessagingException e) {
                e.printStackTrace();
                req.setAttribute("error", "Có lỗi xảy ra khi gửi email.");
            }
        } else {
            req.setAttribute("error", "Email không tồn tại.");
        }

        req.getRequestDispatcher("/views/quenMatKhau.jsp").forward(req, resp);
    }
}
