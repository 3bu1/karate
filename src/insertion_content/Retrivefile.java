package insertion_content;

import java.io.IOException;

import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Retrivefile
 */
@WebServlet("/Retrivefile")
public class Retrivefile extends HttpServlet {
	DataBase db;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Retrivefile() {
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
						response.setContentType("text/html");
						PrintWriter out = response.getWriter();
		try{  
			String updateinfo= request.getParameter("ksk_update_info");
			String authuntication = "yes";
			String sql = "SELECT * FROM testimage";
			  PreparedStatement pst = db.getConnection().prepareStatement(sql);
			  ResultSet i = pst.executeQuery();
			  Intialization_form ksk_gallery = new Intialization_form();
			  while(i.next()){
				 String image= i.getString(1);
				 String imageinfo= i.getString(2);
				 ksk_gallery.setimage(image);
				 ksk_gallery.setimageinfo(imageinfo);
			  }
			  HttpSession session = request.getSession();
				session.setAttribute("kanka_image", ksk_gallery);
				if((updateinfo.equals(authuntication))){
					response.sendRedirect("gallery_update.jsp?kskdata="+request.getParameter("kskdata")+"");
					session.setAttribute("kanka_content", ksk_gallery);
				}
				else if((updateinfo.equals("gallery_page"))){
					response.sendRedirect("gallery.jsp?kskdata="+request.getParameter("kskdata")+"");
				}
			 /*String strQuery = "select image from"+" testimage"; 
			  Statement pst = db.getConnection().createStatement();
			  
			 
			  ResultSet rs1 = pst.executeQuery(strQuery);
			  String imgLen="";
			  if(rs1.next()){
			  imgLen = rs1.getString(1);
			  out.println(imgLen.length());
			  }  
			  rs1 = pst.executeQuery(strQuery);
			  if(rs1.next()){
			  int len = imgLen.length();
			  byte [] rb = new byte[len];
			  InputStream readImg = rs1.getBinaryStream(1);
			  int index=readImg.read(rb, 0, len);  
			  out.println("index"+index);
			  pst.close();
			  response.reset();
			  response.setContentType("image/jpg");
			  response.getOutputStream().write(rb,0,len);
			  response.getOutputStream().flush();  
			  }*/
			  }
			  catch (Exception e){
			     out.println(e.getMessage());
			  }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
