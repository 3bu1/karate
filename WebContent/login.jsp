<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "insertion_content.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KARATE ACADEMY IN HYDERABAD</title>

<%String xxx = (String)request.getAttribute("no_match"); %>

<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<script type="text/javascript">
function ksk_validations(){
var username_email = document.getElementById("username_email").value;
	if(username_email == null || username_email == '' ){
			alert("Please enter user id");
			username_email.focus();
		
			return;
	}
	var username_pw = document.getElementById("username_pw").value;
		if(username_pw == null || username_pw == '' ){
			alert("Please enter password");
			username_pw.focus();
			
			return;
	}
}
</script>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<style type="text/css">
@import url("style.css");
</style>
</head>

<body>
<div><%@ include file="imagefade.jsp" %></div>
<div class="clear"></div>
<div class="ksk_main">
<div><%@ include file="header.jsp" %></div>
  <div class="ksk_body clear">
<div id="wrapper" class="container_12" style="overflow: hidden !important;margin-top:40px;">		<!-- The class "grid_7" restricts the div to 7 columns wide -->
		
		<div id="content" class="login_col">
						<div class="post" id="post-81">
			<h2 style="color: #CC0000" >Welcome to the Kanka karate Academy!</h2>
				<div class="login" align="center">
              
                <form name="Instructor_login" action="Instructor_login" method="post">
<dd class="orange"><h3>Login form</h3></dd>
<div class="input MB10">User Id:<input type="text" name="username_email" id="username_email" value="" style="margin-left:27px;"/></div>
		<div class="input MB10">password:<input type="password" name="username_pw" id="username_pw" value="" style="margin-left:10px;"/></div>
		<div><input type="submit" value="submit" class='submit' onclick="ksk_validations();"/></div>		
        
        <%if(request.getAttribute("no_match")!= null){ %>
		<%if(((String)xxx).equals("found")){%>
		<div style="color: #F00;">no match found</div>
        <%session.setAttribute("no_match",null);%>
		<%}%>
		<%}%>
        
        
        
</form>


                </div>
			</div>
								</div>
								
								
<div class="clear">&nbsp;</div>
</div>
</div>
  </div>
  <div class="clear"></div>
<div><%@ include file="footer.jsp" %></div>
</body>
</html>
