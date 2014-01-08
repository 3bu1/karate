<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
if(session.getAttribute("kanka") != null)
		{%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = "insertion_content.*" %>
         <%
  String s1=request.getParameter("kskdata");
         String del="delete_entry";
  %>
      <script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
      <script>
      function delete_entry(){
		var theform = document.getElementById('myform');
	  theform.action ="Delete_entry?kskdata=<%=s1%>&check_del=checked";
	  theform.submit();
	  return true;
	  }
	  function update_entry(){
		var theform = document.getElementById('myform');
	  theform.action ="Delete_entry?kskdata=<%=s1%>&check_del=Update";
	  theform.submit();
	  return true;
	  }
      </script>
    
<script>
function getadata(){
var xyz =document.getElementById('title').value;
var abc =document.getElementById('title_hii');
abc=xyz;
alert(abc);
}

</script>
<%
String karate_title=request.getParameter("title_hii");
%>
      <%Intialization_form ksk_content =(Intialization_form)session.getAttribute("kanka_content"); %>
      <% String x=ksk_content.gettitle(); %>
      <%String y=ksk_content.getiframe(); %>
      <% String[] arrSplit = x.split(",,,"); %>
      <%String[] arrSplit_y = y.split(",,,"); %>
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
<%for(int i=0;i<arrSplit_y.length;i++){%>
<form   method ="post" action ="Delete_entry?kskdata=<%=s1%>&check_del=Update"  name="myform" id="myform">
<p style=" padding:15px 0 8px 0;">Entry Title:<input name="title" id="title" type="text" size="80" maxlength="80" value="<%=arrSplit[i]%>"/></p>
<input name="dummy_title" id="dummy_title"  type="hidden" value="<%=arrSplit[i]%>"/>
<p>Entry Body:
<textarea  name="myTextArea" id="myTextArea" cols="100" rows="14" style="border:#CCC 1px solid; width:90%; min-height:300px;"><%=arrSplit_y[i]%></textarea>
</p>
<br /><br /><input name="myBtn" type="submit" value="Submit Data"/>
</form>
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
<input type="text" name="title_hii" id="title_hii" />
</html>
<%} else {%>
  		<%  //response.sendRedirect("login.jsp");
		 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		 rd.forward(request, response);	%>		
<%}%>