<%@ page import="com.akki.project.JavaEmail"%>
<%@ page import="javax.mail.MessagingException"%>
<%
	String message = null;
	String status = null;
	if (request.getParameter("submit") != null) {
		JavaEmail javaEmail = new JavaEmail();
		javaEmail.setMailServerProperties();
		String emailSubject = "Contact Form Submitted by Visitor!!";
		String emailBody = "";
		if (request.getParameter("name") != null) {
			emailBody = "Sender Name: " + request.getParameter("name")
					+ "<br>";
		}
		if (request.getParameter("email") != null) {
			emailBody = emailBody + "Sender Email: "
					+ request.getParameter("email") + "<br>";
		}
		if (request.getParameter("phone") != null) {
			emailBody = emailBody + "Sender Phone: "
					+ request.getParameter("phone") + "<br>";
		}
		if (request.getParameter("message") != null) {
			emailBody = emailBody + "Message: " + request.getParameter("message")
					+ "<br>";
		}
		javaEmail.createEmailMessage(emailSubject, emailBody);
		try {
			javaEmail.sendEmail();
			status = "success";
			message = "Email sent Successfully!";
		} catch (MessagingException me) {
			status = "error";
			message = "Error in Sending Email!";
		}
	}
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>Contact Us</title>
<meta charset="UTF-8">
<meta name="keywords" content="ArchyAkhilesh, archyakhilesh, Archy Akhilesh, Archyakhilesh, Akhilesh, Akhilesh kumar,Archy">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles/layout.css" type="text/css">
<link rel='stylesheet' href='style.css' type='text/css' media='all' />
<!--[if lt IE 9]><script src="scripts/html5shiv.js"></script><![endif]-->
</head>
<body>
<div class="wrapper row1">
  <header id="header" class="clear">
    <div id="hgroup">
      <h1><a href="index.html">Archy Akhilesh</a></h1>
      <h2>Software Developer</h2>
    </div>
    <nav>
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="about.html">About Me</a></li>
        <li><a href="Blog.html">Blog</a></li>
        <li><a href="Contact.jsp">Contact</a></li>
        
      </ul>
    </nav>
  </header>
</div>
<!-- content -->
<div class="content">
			<h1 style="margin-top:10px">Contact Form</h1>
			<p>Send your comments through this form and we will get back to
				you.</p>
			<div id="message">
				<form id="frmContact" name="frmContact" action="" method="POST"
					novalidate="novalidate">
					<div class="label">Name:</div>
					<div class="field">
						<input type="text" id="pp-name" name="name"
							placeholder="enter your name here" title="Please enter your name"
							class="required" aria-required="true" required>
					</div>
					<div class="label">Email:</div>
					<div class="field">
						<input type="text" id="pp-email" name="email"
							placeholder="enter your email address here"
							title="Please enter your email address" class="required email"
							aria-required="true" required>
					</div>
					<div class="label">Phone Number:</div>
					<div class="field">
						<input type="text" id="pp-phone" name="phone"
							placeholder="enter your phone number here"
							title="Please enter your phone number" class="required phone"
							aria-required="true" required>
					</div>
					<div class="label">Message:</div>
					<div class="field">
						<textarea id="about-project" name="message"
							placeholder="enter your message here"></textarea>
					</div>
					<div id="mail-status"></div>
					<input type="submit" name="submit" value="Send Message"
						id="send-message" style="clear: both ;margin-bottom:15px;">
					<%
						if (null != message) {
							out.println("<div class='" + status + "'>"
									+ message + "</div>");
						}
					%>
				</form>
			</div>
		</div>
		<!-- content -->
<!-- Footer -->
<div class="wrapper row3">
  <div id="footer" class="clear">
    <!-- Section One -->
    <section class="one_quarter">
      <h2 class="title">Link Block</h2>
      <nav>
        <ul>
          <li><a href="#">Lorem ipsum dolor sit</a></li>
          <li><a href="#">Amet consectetur</a></li>
          <li><a href="#">Praesent vel sem id</a></li>
          <li><a href="#">Curabitur hendrerit est</a></li>
          <li class="last"><a href="#">Sed a nulla urna</a></li>
        </ul>
      </nav>
    </section>
    <!-- Section Two -->
    <section class="one_quarter">
      <h2 class="title">Link Block</h2>
      <nav>
        <ul>
          <li><a href="#">Lorem ipsum dolor sit</a></li>
          <li><a href="#">Amet consectetur</a></li>
          <li><a href="#">Praesent vel sem id</a></li>
          <li><a href="#">Curabitur hendrerit est</a></li>
          <li class="last"><a href="#">Sed a nulla urna</a></li>
        </ul>
      </nav>
    </section>
    <!-- Section Three -->
    <section class="one_quarter">
      <h2 class="title">Link Block</h2>
      <nav>
        <ul>
          <li><a href="#">Lorem ipsum dolor sit</a></li>
          <li><a href="#">Amet consectetur</a></li>
          <li><a href="#">Praesent vel sem id</a></li>
          <li><a href="#">Curabitur hendrerit est</a></li>
          <li class="last"><a href="#">Sed a nulla urna</a></li>
        </ul>
      </nav>
    </section>
    <!-- Section Four -->
    <section class="one_quarter lastbox">
      <h2 class="title">Link Block</h2>
      <nav>
        <ul>
          <li><a href="#">Lorem ipsum dolor sit</a></li>
          <li><a href="#">Amet consectetur</a></li>
          <li><a href="#">Praesent vel sem id</a></li>
          <li><a href="#">Curabitur hendrerit est</a></li>
          <li class="last"><a href="#">Sed a nulla urna</a></li>
        </ul>
      </nav>
    </section>
    <!-- / Section -->
  </div>
</div>
<!-- Copyright -->
<div class="wrapper row4">
  <footer id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="index.html">Archy Akhilesh</a></p>
    <p class="fl_right">Developed by <a target="_blank" href="https://www.facebook.com/archyakhilesh/" title="Free Website Templates">Archy Akhilesh</a></p>
  </footer>
</div>
</body>
</html>
