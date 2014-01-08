<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
if(session.getAttribute("kanka") != null)
		{%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = "insertion_content.*" %>
      <%Intialization_form ksk_content =(Intialization_form)session.getAttribute("kanka_content"); %>
      <% String x=ksk_content.getname();
      String email=ksk_content.getusername_email(); 
	  String password=ksk_content.getusername_pw();
	  String username_add=ksk_content.getusername_add();
	  String username_city=ksk_content.getusername_city();
	  String username_state=ksk_content.getusername_state();
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
	  String[] arrSplit_password = password.split(",,,");
      String[] arrSplit_Phone_number = Phone_number.split(",,,");
	  String[] arrSplit_username_add = username_add.split(",,,");
	  String[] arrSplit_username_city = username_city.split(",,,");
	  String[] arrSplit_username_state = username_state.split(",,,");
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
<%
  String s1=request.getParameter("kskdata");
         String del="delete_entry";
  %>
<%-- <%
//String karate = request.getParameter("ksk_data");
//if(karate.equals("ksk_conent")){
//	response.sendRedirect("content_pages");}

%> --%>
<script>
      function delete_entry(){
		var theform = document.getElementById('myform');
	  theform.action ="Delete_entry?kskdata=<%=s1%>&check_del=instructor_delete";
	  theform.submit();
	  }
	  
      </script>
      <script>
      function update_entry(){
  		var theform = document.getElementById('myform');
  	  theform.action ="Delete_entry?kskdata=<%=s1%>&ksk_update_info=yes&check_del=yesupdate";
  	  theform.submit();
  	  }
      </script>
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

<div class="col_1">
<%@ include file="insertion_leftnav.jsp" %></div>


		<div id="content" class="col_2 clearfix" style="border-right:0px;">
									
				<div class="registration fleft" style="padding:15px; width: 700px;">
			
<%if(session.getAttribute("kanka_content") != null){ %>
<%for(int i=0;i < arrSplit_username_description.length;i++){ %>
<table width="100%" border="0" cellpadding="0" cellspacing="0" id="main-content"  style="border-bottom:dashed 1px #666;margin-bottom:15px;"> 

<form  method ="post" action ="Delete_entry?kskdata=<%=s1%>&ksk_update_info=yes&check_del=yesupdate" id="myform" name="myform">
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
<div><input type="text" name="username_first" id="username_first" value="<%=arrSplit[i]%>"/></div>
<div><input type="text" name="username_email"  id="username_email" value="<%=arrSplit_email[i]%>"/>
<input type="hidden" name="dummy_title"  id="dummy_title" value="<%=arrSplit_email[i]%>"/></div>

<div><input type="password" name="username_pw" id="username_pw" value="<%=arrSplit_password[i]%>"/></div>
<div><input type="text" name="username_tele" id="username_tele" value="<%=arrSplit_Phone_number[i]%>"/></div>
<div><input type="text" name="username_add" id="username_add" value="<%=arrSplit_username_add[i]%>"/></div>
<div><input type="text" name="username_city" id="username_city" value="<%=arrSplit_username_city[i]%>"/></div>
<div><input type="text" name="username_state" id="username_state" value="<%=arrSplit_username_state[i]%>"/></div>
<div><input type="text" name="username_Sex" id="username_Sex" value="<%=arrSplit_username_Sex[i]%>"/></div>
<div><input type="text" name="username_Belt" id="username_Belt" value="<%=arrSplit_username_Belt[i]%>"/></div>
<div><input type="text" name="username_Art" id="username_Art" value="<%=arrSplit_username_Art[i]%> "/></div>
<div><input type="text" name="username_Achievement" id="username_Achievement" value="<%=arrSplit_username_Achievement[i]%>"/></div>
<div><textarea style="min-height:50px; max-height:90px;min-width:150px; max-width:300px;" name="username_description" id="username_description"><%=arrSplit_username_description[i]%></textarea></div>

</td>
</tr>
<tr><td colspan="3" align="center" style="padding-top: 70px;"><div class="fleft" style="margin-left:45%;">
<input value="Update Profile" type="submit" /></div>
</td></tr>
	</tbody></form></table>
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
<%} else {%>
  		<%  //response.sendRedirect("login.jsp");
		 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		 rd.forward(request, response);	%>		
<%}%>