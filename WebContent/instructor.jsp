<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = "insertion_content.*" %>
      <%Intialization_form ksk_content =(Intialization_form)session.getAttribute("kanka_content"); %>
      <% String x=ksk_content.getname();
      String email=ksk_content.getusername_email(); 
      String Phone_number=ksk_content.getPhone_number();
      String username_Sex=ksk_content.getusername_Sex();
      String username_Belt=ksk_content.getusername_Belt();
      String username_Art=ksk_content.getusername_Art();
      String username_Achievement=ksk_content.getusername_Achievement();
      String username_description=ksk_content.getusername_description();
      %>
      
      <% 
      String[] arrSplit = x.split(",,,"); 
      String[] arrSplit_email = email.split(",,,");
      String[] arrSplit_Phone_number = Phone_number.split(",,,");
      String[] arrSplit_username_Sex = username_Sex.split(",,,");
      String[] arrSplit_username_Belt = username_Belt.split(",,,");
      String[] arrSplit_username_Art =username_Art.split(",,,");
      String[] arrSplit_username_Achievement =username_Achievement.split(",,,");
      String[] arrSplit_username_description = username_description.split(",,,");
      
      
      %>
      <%-- <%  
//RequestDispatcher view = request.getRequestDispatcher("content_pages");  
//view.forward(request, response);  
%>   --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KARATE ACADEMY IN HYDERABAD</title>
<%-- <%
//String karate = request.getParameter("ksk_data");
//if(karate.equals("ksk_conent")){
//	response.sendRedirect("content_pages");}

%> --%>
<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<style type="text/css">
@import url("style.css");
</style>
</head>
<body>
<div><%@ include file="imagefade.jsp" %></div>
<div class="clear"></div>
<div class="ksk_main clearfix">
<div><%@ include file="header.jsp" %></div>
  <div class="ksk_body clear">  
<div id="wrapper" class="container_12" style="margin-top:40px;">		<!-- The class "grid_7" restricts the div to 7 columns wide -->
	<%if(session.getAttribute("kanka_content") != null){ %>

<div class="col_1">
<ul>
<%for(int i=0;i<arrSplit.length;i++){ %>

        <li>
        <a href="#<%=i%>" class="admin_Leftnav"><%=arrSplit[i]%></a>
		</li>


<%} %>
</ul></div>
<%} %>

		<div id="content" class="col_2 clearfix" style="border-right:0px;">
									
				<div class="registration fleft" style="padding:15px; width: 700px;">
			
<%if(session.getAttribute("kanka_content") != null){ %>
<%for(int i=0;i<arrSplit.length;i++){ %>
<div style=" padding:15px 0 8px 0;"><a name="<%=i%>" class="admin_Leftnav" style="font-size:18px;"><strong>Name:&nbsp;</strong><%=arrSplit[i]%></a></div>
<div><strong>E-mail:&nbsp;</strong><%=arrSplit_email[i]%></div><br />
<div><strong>Contact number:&nbsp;</strong><%=arrSplit_Phone_number[i]%></div><br />
<div><strong>Gender:&nbsp;</strong><%=arrSplit_username_Sex[i]%></div><br />
<div><strong>Instructor Belt:&nbsp;</strong><%=arrSplit_username_Belt[i]%></div><br>
<div><strong>Art of Instructor:&nbsp;</strong><%=arrSplit_username_Art[i]%></div><br>
<div><strong>Instructors Achivements:&nbsp;</strong><%=arrSplit_username_Achievement[i]%></div><br>
<div><strong>About Instructor:&nbsp;</strong><%=arrSplit_username_description[i]%></div><br>
<%} %>
<%} %>

</div>
</div>


<div class="clear">&nbsp;</div>
</div>
<div class="clear"></div>


  </div>
  </div>
  <div class="clear"></div>
<div><%@ include file="footer.jsp" %></div>
</body>
</html>
