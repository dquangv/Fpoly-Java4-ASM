package controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.servlet.http.Part;

import com.bean.Share;
import com.bean.User;
import com.bean.Video;
import com.dao.ShareDAO;
import com.dao.UserDao;
import com.dao.VideoDAO;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/views/send-mail/*")
public class SendMailServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ShareDAO dao = new ShareDAO();
		
		// get email of user account (Sender)
		HttpSession httpSession = req.getSession();
		String fromReceiver = (String) httpSession.getAttribute("user");

		String emails = req.getParameter("emails");
		String[] emailArray = emails.split(",");

		UserDao userDao = new UserDao();
		User userAccount = userDao.getUserByEmail(fromReceiver);
		String senderName = userAccount.getFullname();

		String subject = senderName + " đã chia sẻ với bạn một video";

		VideoDAO videoDAO = new VideoDAO();
		String uri = req.getRequestURI();
		String[] parts = uri.split("/");
		int videoId = Integer.parseInt(parts[parts.length - 1]);

		Video video = videoDAO.findById(videoId);
		String body = "Video: " + video.getTitle() + "\n" + video.getLink();

		Properties p = new Properties();
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.ssl.protocols", "TLSv1.2");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", 587);
		p.put("mail.debug", "true");

		Session session = Session.getInstance(p, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				String username = "quangvdps36680@fpt.edu.vn";
				String password = "ojtvgwvpjdwpraib";

				return new PasswordAuthentication(username, password);
			}
		});

		try {
	        // Create and send email
	        MimeMessage message = new MimeMessage(session);
	        message.setFrom(new InternetAddress("quangvdps36680@fpt.edu.vn"));
	        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emails));
	        message.setSubject(subject, "utf-8");
	        message.setText(body, "utf-8");
	        Transport.send(message);

	        List<String> emailList = new ArrayList<String>();
	        for (String mail : emailArray) {
	        	emailList.add(mail);
	        }
	        
	        Share share = new Share();
	        share.setUser(userAccount);
	        share.setEmail(emailList);
	        share.setVideo(video);
	        share.setShareDate(new Date());
	        
	        dao.create(share);
	    } catch (MessagingException e) {
	        e.printStackTrace();
	    }


//		req.setAttribute("view", "views/details.jsp");
		req.getRequestDispatcher("/views/details/" + String.valueOf(videoId)).forward(req, resp);
	}
}
