package insertion_content;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import insertion_content.*;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Instructor
 */
@WebServlet("/Instructor")
public class Instructor extends HttpServlet {
	DataBase db;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Instructor() {
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
							PrintWriter pw = response.getWriter();
							try {
								String updateinfo= request.getParameter("ksk_update_info");
								String authuntication = "yes";
								String sql = "SELECT * FROM "+ request.getParameter("kskdata") +" ";
								PreparedStatement pst = db.getConnection().prepareStatement(sql);
								Intialization_form ksk_instructor = new Intialization_form();
								
								ResultSet i = pst.executeQuery();
								
								while(i.next()) {
									String x1 = i.getString(1);
									String x2 = i.getString(2);
									String x3 = i.getString(3);
									String x4 = i.getString(4);
									String x5 = i.getString(5);
									String x6 = i.getString(6);
									String x7 = i.getString(7);
									String x8 = i.getString(8);
									String x9 = i.getString(9);
									String x10 = i.getString(10);
									String x11 = i.getString(11);
									String x12 = i.getString(12);
									
									 ksk_instructor.setname(x1);
									 ksk_instructor.setusername_email(x2);
									 ksk_instructor.setusername_pw(x3);
									 ksk_instructor.setPhone_number(x4);
									 ksk_instructor.setusername_add(x5);
									 ksk_instructor.setusername_city(x6);
									 ksk_instructor.setusername_state(x7);
									 ksk_instructor.setusername_Sex(x8);
									 ksk_instructor.setusername_Belt(x9);
									 ksk_instructor.setusername_Art(x10);
									 ksk_instructor.setusername_Achievement(x11);
									 ksk_instructor.setusername_description(x12);
								}
								HttpSession session = request.getSession();
								session.setAttribute("kanka_content", ksk_instructor);
								
									if((updateinfo.equals(authuntication))){
										
										response.sendRedirect("instructor_update.jsp?kskdata=instructordetails");
									}
									if((updateinfo.equals("no"))){
										
										response.sendRedirect("instructor_delete.jsp?kskdata=instructordetails");
									}
									else if((updateinfo.equals("instructor_view")))
									{
										response.sendRedirect("instructor.jsp?kskdata=instructordetails");
									}
									} catch (Exception e) {
								e.printStackTrace();
							}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
