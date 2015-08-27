<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>

<%
// Send Mail Version 0.1 
// Author By Jonason Chang
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Send email</title>
</head>
<body>
<%
// 可將參數傳到 defaulTo 或 to ; 看情況調用本 sendmail
// 注意, 尚未加上 try catch ; 小心傳入 InternetMail address & Mail Server 無法連通知處理
Properties mailServerProperties;
Session getMailSession;
MimeMessage generateMailMessage;

String host = "smtp.gmail.com";
String myPassword ="2jonason10";
String defaultTo="jonasonchang@gmail.com";
String defaultFrom="jonasonchang1@gmail.com";
String defaultSubject="購物小組網站測試信(請勿直接回覆)..";
String emailBody = "Test email by 購物小組網站測試 JavaMail API. " + "<br><br> Regards, <br>購物小組網站 Admin";

//以下程式片段 for caller,if any...
String to = request.getParameter("to");
String from = request.getParameter("from");
String subject = request.getParameter("subject");
String messageText = request.getParameter("body");
//------
// mailServerProperties setting below
mailServerProperties = System.getProperties();
mailServerProperties.put("mail.smtp.port", "587");
mailServerProperties.put("mail.smtp.auth", "true");
mailServerProperties.put("mail.smtp.starttls.enable", "true");

getMailSession = Session.getDefaultInstance(mailServerProperties, null);
generateMailMessage = new MimeMessage(getMailSession);
generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(defaultTo));
generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress(defaultTo));
generateMailMessage.setSubject(defaultSubject,"UTF-8");
generateMailMessage.setContent(emailBody, "text/html ;charset=UTF-8");

		
Transport transport = getMailSession.getTransport("smtp");

transport.connect(host,defaultFrom,myPassword);
transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
transport.close();


%>
</body>
</html>