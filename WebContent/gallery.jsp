<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = "insertion_content.*" %>
      <%Intialization_form ksk_content =(Intialization_form)session.getAttribute("kanka_image"); %>
      <% String x=ksk_content.getimage(); 
      String y=ksk_content.getimageinfo(); 
      %>
      <% 
      String[] arrSplit = x.split(",,,");
      String[] arrSplit_y = y.split(",,,");
      %>
       <%-- <%String x="<%=ksk_content.getimage() %>"; %> --%>
       

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
<div id="wrapper" class="container_12" style="overflow: hidden !important;margin-top:40px;">		<!-- The class "grid_7" restricts the div to 7 columns wide -->
		
		<div id="content" class="col_2 clearfix" style="width:90%;">
								<h3>KSK GALLERY</h3>	
				<div class="registration fleft" style="padding:15px 0 0 15px;">
			
<%if(session.getAttribute("kanka_image") != null){ %>
<%for(int i=0;i<arrSplit.length;i++){ %>

<div class="fleft" style="padding:10px;width: 210px; height:300px;"><img alt="" src="gallery/<%=arrSplit[i]%>" width="200" height="200"/>
<div class="admin_Leftnav MT20" align="center" style="overflow:auto; height:80px;"><%=arrSplit_y[i]%></div>
</div>

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
