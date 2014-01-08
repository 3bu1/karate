<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
if(session.getAttribute("kanka") != null)
		{%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = "insertion_content.*" %>
  
<%Intialization_form instructor_ksk =(Intialization_form)session.getAttribute("kanka");
String name=instructor_ksk.getname();
String[] arrSplit_name = name.split(",,,"); 
%>

<%String xxx =(String)session.getAttribute("kanka_conformation"); %>
<%String x ="ksk_conformation"; 
  String y ="ksk_instructor"; 
  String del="delete_entry";
  %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KARATE ACADEMY IN HYDERABAD</title>

<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="js/ksk_validations.js"></script>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<style type="text/css">
@import url("style.css");
</style>
<%
  String s1=request.getParameter("kskdata");
  %>
</head>
<body>
<div><%@ include file="imagefade.jsp" %></div>
<div class="clear"></div>
<div class="ksk_main">
<div><%@ include file="header.jsp" %></div>
  <div class="ksk_body clear">
<div id="wrapper" class="container_12" style="overflow: hidden !important;margin-top:40px;">		<!-- The class "grid_7" restricts the div to 7 columns wide -->
		<div><%@ include file="insertion_leftnav.jsp" %></div>
		<div id="content" class="col_2" style="border-right:0px;width:600px;">
						<div class="post fleft" id="post-81">
						<%if(session.getAttribute("kanka")!=null){%>
			<h2 style="color: #CC0000;float:left;">Welcome <span><%=arrSplit_name[0]%></span></h2><a href="Logout" class="admin_Leftnav" style="float:right;margin-right:30px;"><h2 style="color:#cc0000;">Logout</h2></a>
			<div class="clear"></div>
			<%} else {%><div><h2 style="color: #CC0000">Welcome to kanka sports academy</h2></div><%} %>
			<div class="clear"></div>
				<div class="registration">
					
					<div><table width="100%" border="0" cellpadding="0" cellspacing="0" id="main-content" > 

<form  method ="post" action ="Instructor_registration_form?ksk_update_info=submit" >
<tbody>
<tr>
<td width="382" valign="top" class="formtext">
<div>Instructor Name</div>
<div>E-mail</div>
<div>Password</div>
<div>Contact Number</div>
<div>Address</div>
<div>City</div>
<div>State</div>
<div>Sex</div>
<div>Belt</div>
<div>Art</div>
<div>Instructor Achievement's</div>
<div>About instructor</div>

</td>
<td width="52" class="formtext-gap">
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
<div>:</div>
</td>
<td width="486" valign="top">
<div><input type="text" name="username_first" id="username_first"/></div>
<div><input type="text" name="username_email"  id="username_email"/></div>
<div><input type="password" name="username_pw" id="username_pw"/></div>
<div><input type="text" name="username_tele" id="username_tele"/></div>
<div><input type="text" name="username_add" id="username_add"/></div>
<div><input type="text" name="username_city" id="username_city"/></div>
<div><input type="text" name="username_state" id="username_state"/></div>
<div><input type="text" name="username_Sex" id="username_Sex"/></div>
<div><input type="text" name="username_Belt" id="username_Belt"/></div>
<div><input type="text" name="username_Art" id="username_Art"/></div>
<div><input type="text" name="username_Achievement" id="username_Achievement"/></div>
<div><textarea style="min-height:50px; max-height:90px;min-width:150px; max-width:300px;" name="username_description"></textarea></div>

</td>
</tr>
<tr><td colspan="3" align="center" style="padding-top: 70px;"><div class="fleft" style="margin-left:25%;"><input type="submit" value="Submit"  onclick="ksk_validations(); return false;"/></div>
<div class="fleft MR30 ML30 MT7" align="left"><a href="Instructor?kskdata=instructordetails&ksk_update_info=yes" class="submit">Update</a></div>
<div class="fleft MR30 ML30 MT7" align="left"><a href="Instructor?kskdata=instructordetails&ksk_update_info=no" class="submit">Delete</a></div>
</td></tr>
	<tr>
    <td colspan="3" align="center"><div><%
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
        <%
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
		%>
		<%
		if(session.getAttribute("kanka_content_update") != null)
		{
		if(((String)session.getAttribute("kanka_content_update")).equals("update_instructor"))
		{
			%>
			<div style="color: #CC0000;">Information has been Updated</div>
		<%
		session.setAttribute("kanka_content_update",null);
		}
		}
		%>
	</div></td>
    </tr>
    
    </tbody></form></table>
    
    
    </div>
	
		<!-- end entry -->
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