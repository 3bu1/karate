package insertion_content;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import insertion_content.DataBase;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import java.util.regex.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 * Servlet implementation class UploadFile
 */
@WebServlet("/UploadFile")
public class UploadFile extends HttpServlet {
	DataBase db;
	int i=0;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		db = new DataBase();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String img = null;
		String img2 = null;
		String sql=null;
	i++;
	 HttpSession sess=request.getSession();
		PrintWriter out = response.getWriter();
		  boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		  System.out.println("request: "+request);
		  //out.println(request.getParameter("imageinfo"));
		  if (!isMultipart) {
		  System.out.println("File Not Uploaded");
		  } else {
		  FileItemFactory factory = new DiskFileItemFactory();
		  ServletFileUpload upload = new ServletFileUpload(factory);
		  List items = null;

		  try {
		  items = upload.parseRequest(request);
		  System.out.println("items: "+items);
		  } catch (FileUploadException e) {
		  e.printStackTrace();
		  }
		  Iterator itr = items.iterator();
		  while (itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			
		  if (item.isFormField()){
			  
			  String fieldvalue = item.getString();
			  
			  
			//  out
			 // out.println(fieldvalue+"000000000000");
			 // String fieldname = item.getFieldName();
              	
              	//HttpSession sess=request.getSession();
              	//sess.setAttribute("kanka_image", fieldvalue);
                  //imageinformation = fieldvalue;
              
            	//  String query1 = "INSERT INTO testimage (imageinfo) VALUES "+imageinformation+"";
            	if((!fieldvalue.equals("Submit"))){
            		try {
                		//String query1="insert into testimage (imageinfo) values(?)";
              		//  PreparedStatement pst1 = db.getConnection().prepareStatement(query1); 
              		//  pst1.setString(1, fieldvalue);
              		 img=fieldvalue;
              		out.println(img);
              		  //int rs1 = pst1.executeUpdate();
              		  //if(rs1==1){
              			//  out.println("hmm");
              		  //}
    				} catch (Exception e) {
    					e.printStackTrace();
    				}
            	}
        		  //pst.setString(2, imageinformation);
			
			  //String strQuery1 = "insert into testimage set imagetext='"+name+"'"; 
	
		 // System.out.println("name: "+name);
		  
		  } else {
			  
		  try {
		  String itemName = item.getName();
		  Random generator = new Random();
		  int r = Math.abs(generator.nextInt());
		  
		  String reg = "[.*]";
		  String replacingtext = "";
		 // out.println("Text before replacing is:-" + itemName);
		  Pattern pattern = Pattern.compile(reg);
		  Matcher matcher = pattern.matcher(itemName);
		  StringBuffer buffer = new StringBuffer();
		  
		  while (matcher.find()) {
		  matcher.appendReplacement(buffer, replacingtext);
		  }
		  int IndexOf = itemName.indexOf("."); 
		  String domainName = itemName.substring(IndexOf);
		  //out.println("domainName: "+domainName);

		  String finalimage = buffer.toString()+"_"+r+domainName;
		  
		  //out.println("Final Image==="+finalimage);

		  File savedFile = new File("C:/tribhuvan/work/workspace/Academy/WebContent/"+"gallery\\"+finalimage);
		  item.write(savedFile);
		 try {
		 
			 //String name = request.getParameter("imageinfo");
		  //String strQuery = "insert into testimage values(?,?)"; 
			 //String query="insert into testimage set image='"+finalimage+"'";
		     // PreparedStatement pst = db.getConnection().prepareStatement(strQuery); 
		  //Statement pst = db.getConnection().createStatement();
		      		img2=finalimage;
		     // pst.setString(1, finalimage);
		//  pst.setString(2, img);
		  
//		  		int rs = pst.executeUpdate();
		 // out.println("itemName::::: "+itemName);
		  //if(rs == 1){
			  //out.println("hmm");
				
			  /*String x =request.getParameter("imageinfo");
			  out.println(x);*/
				/*request.setAttribute("kanka_image", x);
			   	response.sendRedirect("Img_info?kskdata=imagetext");*/
			  
			  
	
		  
		  //}
		  
		  } catch (Exception e) {
		  out.println(e.getMessage());
		  } 
		  finally {
		  db.getConnection().close();
		  }  
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
		  }
		  }
		  }
		
	
	
	
	try{
	
	
		 
			 sql = "insert into testimage values(?,?)"; 
		 //String query="insert into testimage set image='"+finalimage+"'";
		      PreparedStatement pst = db.getConnection().prepareStatement(sql); 
		  //Statement pst = db.getConnection().createStatement();
		      //out.println(img);
		      pst.setString(1, img2);
		      pst.setString(2, img);
		  
		  		int rs = pst.executeUpdate();
		  			if((rs==1)){
		  				sess.setAttribute("kanka_conformation", "ksk_content");
		  				response.sendRedirect("image_upload.jsp?kskdata=testimage");
		  		}
//out.print("hiiiiiiiiiiiiiii"+rs);	
	}
	catch (Exception e) {
		// TODO: handle exception
	}
	
	
	
	
	
	
	
	
	}

}
