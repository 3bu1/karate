package insertion_content;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Email {
	public static void main(String[] args) {
		final String username="tribhuvanreddyramidi@gmail.com";
		final String password="bhargavi@bijju";
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host","smtp.gmail.com");
		props.put("mail.smtp.port","587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(username, password);
			}
			
		});
		try {
			Message message = new MimeMessage(session);
			//message.setFrom(new InternetAddress("bhargavi252@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("bhargavi252@gmail.com"));
			message.setSubject("first mail");
			message.setContent("hello", "text/html; charset=utf-8");
			Transport.send(message);
			System.out.println("done");
		} catch (Exception e) {
			 System.out.println(e.getMessage());
		}
	}
}