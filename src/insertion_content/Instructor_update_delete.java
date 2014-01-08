package insertion_content;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Instructor_update_delete
 */
@WebServlet("/Instructor_update_delete")
public class Instructor_update_delete extends HttpServlet {
	DataBase db;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Instructor_update_delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		db= new DataBase();
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
		
		String sql = null;
         PrintWriter out = response.getWriter();

         response.setContentType("text/html");
		
         try

         {
        	 String ksk_myTextArea=request.getParameter("myTextArea");
            String ksk_title=request.getParameter("title");
            String check_del=request.getParameter("check_del");
            String dummy_title = request.getParameter("dummy_title");
            //out.println(ksk_title);
            HttpSession session = request.getSession();
			
            if((check_del.equals("checked"))){
             sql= "DELETE FROM "+request.getParameter("kskdata")+" WHERE content ='"+ksk_title+"'";
             session.setAttribute("kanka_content_delete", "delete_entry");
            }
            else if((check_del.equals("Update"))){
            	sql = "UPDATE "+request.getParameter("kskdata")+" SET content ='"+ksk_title+"',title='"+ksk_myTextArea+"' WHERE content='"+dummy_title+"'";
            	session.setAttribute("kanka_content_update", "update_entry");
            }
			  PreparedStatement pst = db.getConnection().prepareStatement(sql);
			int j=  pst.executeUpdate();
			if(j==1){
				
				response.sendRedirect("insertion.jsp?kskdata="+request.getParameter("kskdata")+"");
			}
			else out.println("noo");
            
			pst.close();
        }
        catch(SQLException e)
        {
           out.println(e.getMessage());
        }
        catch(ClassNotFoundException e)
        {
          out.println(e.getMessage());
        } catch (InstantiationException e) {
        	
        	 out.println(e.getMessage());
		} catch (IllegalAccessException e) {
			 out.println(e.getMessage());
		}
	}


}
