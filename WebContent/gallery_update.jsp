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
	  theform.action ="Delete_entry?kskdata=<%=s1%>&check_del=checked_gallery";
	  theform.submit();
	  }
	  function update_entry(){
		var theform = document.getElementById('myform');
	  theform.action ="Gallery_update?kskdata=<%=s1%>&check_del=Update_gallery";
	  theform.submit();
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
     <% String x=ksk_content.getimage(); 
      String y=ksk_content.getimageinfo(); 
      %>
      <% 
      String[] arrSplit = x.split(",,,");
      String[] arrSplit_y = y.split(",,,");
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



<link href="css/reset.css" rel="stylesheet" type="text/css" />
<style type="text/css">
@import url("style.css");
</style>
</head>

<body onload="iFrameOn();">
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
<%for(int i=0;i<arrSplit.length;i++){ %>
<form   method ="post" action ="Delete_entry?kskdata=<%=s1%>&check_del=checked_gallery"  name="myform" id="myform">	
<table width="400px" align="center" border=0 
	  style="background-color:ffeeff;">
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
	  <input type="text" name="file" id="images_gallery" value="<%=arrSplit[i]%>">
	  
      <div><img alt="" src="gallery/<%=arrSplit[i]%>" width="200" height="200"/></div>
	  <td>
	  </tr>
	<tr>
	<td>image information:</td>
	<td><input type="text" name="imageinfo" value="<%=arrSplit_y[i]%>"/>
	<input type="hidden" name="dummy_title" id="dummy_title" value="<%=arrSplit[i]%>"/>
	</td>
	</tr>
	  <tr>
	  <td></td>
	  <td>
     
<input name="myBtn" type="submit" value="Delete Entry"/>
      </td>
	  </tr>
	  <tr>
	  <td colspan="2">&nbsp;</td>
	  </tr>
	
	  </table>
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