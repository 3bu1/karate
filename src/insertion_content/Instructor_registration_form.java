package insertion_content;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.util.*;
import javax.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.ResultSet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import insertion_content.Intialization_form;

/**
 * Servlet implementation class Instructor_registration_form
 */
@WebServlet("/Instructor_registration_form")
public class Instructor_registration_form extends HttpServlet {
	DataBase db;
	
	private static final long serialVersionUID = 1L;
       
	
    public Instructor_registration_form() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		super.init(config); 
		db = new DataBase();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		  PrintWriter pw = response.getWriter();
		
		 
		//Instructor_registration_form ksk_conformation = new Instructor_registration_form();
		  
		  Intialization_form ksk_conformation = new Intialization_form();
		
		String name;
		String username_email;
		String username_pw ;
		String Phone_number;
		String username_add;
		String username_city ;
		String username_state;
		String username_Sex;
		String username_Belt;
		String username_Art;
		String username_Achievement;
		String username_description;
		
		try {
			
			name  = request.getParameter("username_first");
			username_email = request.getParameter("username_email");
			username_pw = request.getParameter("username_pw");
			Phone_number = request.getParameter("username_tele");
			username_add = request.getParameter("username_add");
			username_city = request.getParameter("username_city");
			username_state = request.getParameter("username_state");
			username_Sex = request.getParameter("username_Sex");
			username_Belt = request.getParameter("username_Belt");
			username_Art  = request.getParameter("username_Art");
			username_Achievement  = request.getParameter("username_Achievement");
			username_description  = request.getParameter("username_description");
			
			PreparedStatement pst = db.getConnection().prepareStatement("insert into instructordetails values(?,?,?,?,?,?,?,?,?,?,?,?)"); 
			 
			 pst.setString(1, name);
			 pst.setString(2, username_email);
			 pst.setString(3, username_pw);
			 pst.setString(4, Phone_number);
			 pst.setString(5, username_add);
			 pst.setString(6, username_city);
			 pst.setString(7, username_state);
			 pst.setString(8, username_Sex);
			 pst.setString(9, username_Belt);
			 pst.setString(10, username_Art);
			 pst.setString(11, username_Achievement);
			 pst.setString(12, username_description);
			 
			 int i = pst.executeUpdate();
			 
			 if(i==1){
				 //request.setAttribute("name",name);
				 /*String site = new String("Retrivin_user_reg_form");

			      response.setStatus(response.SC_MOVED_TEMPORARILY);
			      response.setHeader("Location", site); */
				 
				 
				/* request.setAttribute("res","success");
				 RequestDispatcher rd=request.getRequestDispatcher("instructor_registration_form.jsp");
				rd.forward(request, response);*/
				
				 HttpSession sess=request.getSession();
				 
				 String updateinfo= request.getParameter("ksk_update_info");
					String authuntication = "yes";
					if(updateinfo.equals(authuntication)){
						sess.setAttribute("kanka_content_update", "update");
						response.sendRedirect("instructor_registration_form.jsp?kskdata=instructordetails");
					}
					else if(updateinfo.equals("submit")) 
						{
						sess.setAttribute("kanka_conformation", "ksk_conformation");
						response.sendRedirect("instructor_registration_form.jsp?kskdata=instructordetails");
						}
			 }
			 
			 else pw.println("not done");
		
	}
		catch (Exception e) {
			 e.printStackTrace();
		}
}
	}

