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
<script type="text/javascript" src="js/ksk_richtext.js"></script>
<script type="text/javascript" src="jscolor.js"></script>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<style type="text/css">
@import url("style.css");
</style>
</head>
<body onload="iFrameOn();">
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
		<div id="content" class="col_2" style="border-right:0px;width:600px;">
						<div class="post fleft" id="post-81">			
				<div class="registration">
					
					<div style="padding:15px 0 0 15px;"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="main-content" > 

<form  method ="post" action ="Insertion?kskdata=<%=s1%>" name="myform" id="myform" >
<p>Entry Title: <input name="title" id="title" type="text" size="80" maxlength="80" /></p>
<p>Entry Body:
<div id="wysiwyg_cp" style="padding:8px; width:700px;">
  <input type="button" onClick="iBold()" value="B"> 
  <input type="button" onClick="iUnderline()" value="U">
  <input type="button" onClick="iFontSize()" value="Text Size">
  <input type="text"   class="color" style="width:50px;"  value=" " />
   <input type="button" onClick="iForeColor()" value="Text Color">
  <input type="button" onClick="iOrderedList()" value="OL">
  <input type="button" onClick="iLink()" value="Link">
  <input type="button" onClick="iUnLink()" value="UnLink">
</div>
<textarea style="display:none;" name="myTextArea" id="myTextArea" cols="100" rows="14"></textarea>
<iframe name="richTextField" id="richTextField" style="border:#CCC 1px solid; width:90%; min-height:300px; background:#FFF;"></iframe>
</p>
<br /><br /><input name="myBtn" type="button" value="Submit Data" onClick="javascript:submit_form();"/>
<div class="fright MR30"><a href="Content_pages?kskdata=<%=s1%>&ksk_update_info=yes" class="submit">Update</a></div>
<div class="fright MR30"><a href="Content_pages?kskdata=<%=s1%>&ksk_update_info=no" class="submit">Delete</a></div>
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
		%></div>
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
		if(session.getAttribute("kanka_content_update") != null)
		{
		if(((String)session.getAttribute("kanka_content_update")).equals("update_entry"))
		{
			%>
			<div style="color: #CC0000;">Information has been Updated</div>
		<% 
		session.setAttribute("kanka_content_update",null);
		}
		}
		%></div>
</form></table></div>
	
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