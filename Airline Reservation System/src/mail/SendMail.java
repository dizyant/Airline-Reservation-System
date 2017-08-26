package mail;



import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.iap.Response;

public class SendMail {
	
	public void sendEmail(String email,String name,String phno,String address,String fname,String source,String dest,String dep,String ret,String charge) {

	String emailId = "<Email_ID>";

	java.util.Properties properties = new java.util.Properties();
	       properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");
	        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

	       try {

	           MimeMessage message = new MimeMessage(mailSession);
	           message.setContent("<table><tr>#######YOUR TICKET IS HERE ########</tr><tr><td>NAME:</td><td>"+name+ "</td></tr>"+"<tr><td>PHONE NUMBER:</td><td>"+phno+ "</td></tr>"+"<tr><td>EMAIL-ADDRESS:</td><td>"+address+ "</td></tr>"+"<tr><td>FLIGHT-NAME:</td><td>"+fname+ "</td></tr>"+"<tr><td>SOURCE:</td><td>"+source+ "</td></tr>"+"<tr><td>DESTINATION:</td><td>"+dest+ "</td></tr>"+"<tr><td>DEPARTURE:</td><td>"+dep+ "</td></tr>"+"<tr><td>CHARGE:</td><td>"+charge+ "</td></tr></table>","text/html");
	          /* message.setContent("<h1>PHONE NUMBER:"+phno+ "</h1>","text/html");
	           message.setContent("<h1>EMAIL-ADDRESS:"+address+ "</h1>","text/html");
	           message.setContent("<h1>FLIGHT-NAME:"+fname+ "</h1>","text/html");
	           message.setContent("<h1>SOURCE:"+source+ "</h1>","text/html");
	           message.setContent("<h1>DESTINATION:"+dest+ "</h1>","text/html");
	           message.setContent("<h1>DEPARTURE:"+dep+ "</h1>","text/html");
	           message.setContent("<h1>RETURN:"+ret+ "</h1>","text/html");
	           message.setContent("<h1>CHARGE:"+charge+ "</h1>","text/html");
	           message.setContent("<h1>PAID</h1>","text/html");
*/	           message.setSubject("Test_Mail");

	           InternetAddress sender = new InternetAddress(emailId,"Mail");
	           InternetAddress receiver = new InternetAddress(email);
	           message.setFrom(sender);
	           message.setRecipient(Message.RecipientType.TO, receiver);
	            message.saveChanges();

	           javax.mail.Transport transport = mailSession.getTransport("smtp");
	           transport.connect("smtp.gmail.com", 587, emailId, "<Password>");
	           transport.sendMessage(message, message.getAllRecipients());
	           transport.close();
	           System.out.println("mail is Sent.");
	           

	       } catch (Exception e) {
	           e.printStackTrace();
	     }
	}  
}
