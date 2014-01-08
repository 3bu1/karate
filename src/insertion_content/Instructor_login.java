package insertion_content;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import insertion_content.DataBase;

import insertion_content.Intialization_form;

/**
 * Servlet implementation class Instructor_login
 */
@WebServlet("/Instructor_login")
public class Instructor_login extends HttpServlet {
	DataBase db;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Instructor_login() {
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

		response.setContentType("text/html");
		  PrintWriter pw = response.getWriter();
		  
		  try{
			  String username_email=request.getParameter("username_email");
				String username_pw= request.getParameter("username_pw");
				String sql = "SELECT * FROM instructordetails  WHERE mail='"+username_email+"' AND Password ='"+username_pw+"'";
			  PreparedStatement pst = db.getConnection().prepareStatement(sql); 
			 Intialization_form ksk_instructor = new Intialization_form();
			 ResultSet i = pst.executeQuery();
				 /*		ArrayList username = new ArrayList();
				 while(i.next()){
					 String result = i.getString(1);
					 username.add(result);
					 String[] a = (String[]) username.toArray(new String[username.size()]);
						for(String s:a){
							 if(s.equals(username_email) ){
				PreparedStatement pstpw = db.getConnection().prepareStatement("Select password from registrationinfo WHERE email ='"+ username_email +"'");
				ResultSet j =pstpw.executeQuery();
				if(j.next()){
					pw.println("perfect match");
				}
				else pw.println("no");
							 }
							 //else  pw.println("no macth found");
						}
				}*/
				
					//PreparedStatement account = db.getConnection().prepareStatement("Select * from registrationinfo"); 
					//intialization_form login_name = new intialization_form();
				// response.sendRedirect("index.jsp");
					if(i.next() == true){
				
					// pw.println("EmpName" + " " + "EmpSalary" + "<br>");
					 ksk_instructor.setname(i.getString(1));
				
					 /*
					 ksk_instructor.setusername_email(i.getString(2));
					 
					 ksk_instructor.setusername_pw(i.getString(3));
					 ksk_instructor.setPhone_number(i.getString(4));
					 ksk_instructor.setusername_add(i.getString(5));
					 ksk_instructor.setusername_city(i.getString(6));
					 ksk_instructor.setusername_state(i.getString(7));
					 ksk_instructor.setusername_Sex(i.getString(8));
					 ksk_instructor.setusername_Belt(i.getString(9));
					 ksk_instructor.setusername_Art(i.getString(10));		*/			 
					
				 HttpSession sess=request.getSession();
				 sess.setAttribute("kanka",ksk_instructor);
				 response.sendRedirect("instructor_registration_form.jsp");
					}
					else {
						request.setAttribute("no_match", "found");
						RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
						rd.forward(request, response);
						}
					 //login_name.setusername_email(username_email);
					 //obj.setusername_pw(username_pw);
					
				
		  }
		  catch (Exception e) {
			pw.println(e.getMessage());
		}
	
	}

}
