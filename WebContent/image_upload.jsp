<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
if(session.getAttribute("kanka") != null)
		{%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = "insertion_content.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KARATE ACADEMY IN HYDERABAD</title>

<%String xxx =(String)session.getAttribute("kanka_conformation"); %>

<%String x = "ksk_content"; 
String del="delete_entry";
%>
<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="js/ksk_validations.js"></script>
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
  <%
  String s1=request.getParameter("kskdata");
  %>
  
<div id="wrapper" class="container_12" style="overflow: hidden !important;margin-top:40px;">		<!-- The class "grid_7" restricts the div to 7 columns wide -->
		<div><%@ include file="insertion_leftnav.jsp" %></div>
		<div id="content" class="col_2" style="border-right:0px; width: 600px;">
						<div class="post fleft" id="post-81">			
				<div class="registration">
					
					<div style="padding:15px 0 0 15px;"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="main-content" > 

<form method="post" action="UploadFile?kskdata=<%=s1 %>"  enctype="multipart/form-data" name="productForm" id="productForm"><br><br>
	  <table  align="center" border=0 style="background-color:ffeeff;width: 600px;">
	  <tr>
	  <td align="center" colspan=2 style="
	   font-weight:bold;font-size:20px;">
	   Image Details</td>
	  </tr>
	<tr>
	  <td align="center" colspan=2>&nbsp;</td>
	  </tr>
	
	  <tr>
	  <td>Image Link: </td>
	  <td>
	  <input type="file" name="file" id="images_gallery">
	  <td>
	  </tr>
	<tr>
	<td>image information:</td>
	<td><input type="text" value="" name="imageinfo"/></td>
	</tr>
	  <tr>
	  <td></td>
	  <td><input type="submit" name="Submit" value="Submit" style="margin-top: 5px;">
	  <div class="fleft MR30" style="margin-top: 10px;"><a href="Retrivefile?kskdata=<%=s1%>&ksk_update_info=yes" class="submit" >EDIT</a></div>
	  </td>
	  </tr>
	  <tr>
	  <td colspan="2">&nbsp;</td>
	  </tr>
	
	  </table>
	 <div><%
		if(session.getAttribute("kanka_conformation") != null)
		{
		if(((String)session.getAttribute("kanka_conformation")).equals(x))
		{
			%>
			<div style="color: #CC0000;">Information has been added</div>
		<% 
		session.setAttribute("kanka_conformation",null);
		}
		}
		%>
        </div>
	  <div><%
		if(session.getAttribute("kanka_content_delete") != null)
		{
		if(((String)session.getAttribute("kanka_content_delete")).equals(del))
		{
			%>
			<div style="color: #CC0000;">Information has been deleted</div>
		<% 
		session.setAttribute("kanka_content_delete",null);
		}
		}
		%></div>
		<div><%
		if(session.getAttribute("kanka_gallery") != null)
		{
		if(((String)session.getAttribute("kanka_content_update")).equals("update_entry"))
		{
			%>
			<div style="color: #CC0000;">Information has been Updated</div>
		<% 
		session.setAttribute("kanka_gallery",null);
		}
		}
		%></div>
      </form>
</table></div>
	
	<!-- <div style="color: #CC0000;">Information has been added</div> -->
									</div><!-- end entry -->
			</div><!-- end post -->
								</div><!-- end content -->
<div class="clear">&nbsp;</div>
</div>
<div class="clear"></div>


  </div>
  </div>
  <div class="clear"></div>
<div><%@ include file="footer.jsp" %></div>
</body>
</html>
<%} else {%>
  		<%  //response.sendRedirect("login.jsp");
		 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		 rd.forward(request, response);	%>		
<%}%>