package insertion_content;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Delete_entry
 */
@WebServlet("/Delete_entry")
public class Delete_entry extends HttpServlet {
	DataBase db;
	String pas,cde;

    String myTextArea,title;
    
    boolean flag=false;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_entry() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sql = null;
	//	String check=null;
		String can =null;
         PrintWriter out = response.getWriter();
         response.setContentType("text/html");
         try

         {
        	String ksk_myTextArea=request.getParameter("myTextArea");
            String ksk_title=request.getParameter("title");
            String ksk_mail=request.getParameter("username_email");
            String check_del=request.getParameter("check_del");
            String imageinfo =request.getParameter("imageinfo");
            String dummy_title = request.getParameter("dummy_title");
           // String imageinfo =request.getParameter("imageinfo");
           // String title = request.getParameter("title");
            String name  = request.getParameter("username_first");
            String username_email = request.getParameter("username_email");
            String username_pw = request.getParameter("username_pw");
            String Phone_number = request.getParameter("username_tele");
            String username_add = request.getParameter("username_add");
            String username_city = request.getParameter("username_city");
            String username_state = request.getParameter("username_state");
            String username_Sex = request.getParameter("username_Sex");
            String username_Belt = request.getParameter("username_Belt");
            String username_Art  = request.getParameter("username_Art");
            String username_Achievement  = request.getParameter("username_Achievement");
            String username_description  = request.getParameter("username_description");
            HttpSession session = request.getSession();
			
            if((check_del.equals("checked"))){
             sql= "DELETE FROM "+request.getParameter("kskdata")+" WHERE content ='"+dummy_title+"'";
             //out.println(dummy_title);
         	can="checkednaaaa";
             session.setAttribute("kanka_content_delete", "delete_entry");
            }
            else if((check_del.equals("Update"))){
            	can="Updateduuuu";
            	sql = "UPDATE "+request.getParameter("kskdata")+" SET content ='"+ksk_title+"',title='"+ksk_myTextArea+"' WHERE content='"+dummy_title+"'";
            	session.setAttribute("kanka_content_update", "update_entry");
            }
            else if((check_del.equals("yesupdate"))){
            	sql = "UPDATE "+request.getParameter("kskdata")+" SET name ='"+name+"',mail='"+username_email+"',Password='"+username_pw+"', phonenumber='"+Phone_number+"', Address='"+username_add+"',City='"+username_city+"',State='"+username_state+"',Sex='"+username_Sex+"',Belt='"+username_Belt+"',Art='"+username_Art+"',InstructorAchievement='"+username_Achievement+"',Aboutinstructor='"+username_description+"' WHERE mail='"+dummy_title+"'";
            	//check =""
            	  can="updateinstructor";
            	session.setAttribute("kanka_content_update", "update_instructor");
            }
           
            else if((check_del.equals("checked_gallery"))){
                sql= "DELETE FROM "+request.getParameter("kskdata")+" WHERE image ='"+dummy_title+"'";
               // out.println(imageinfo);
                can="gallerychecked";
                session.setAttribute("kanka_content_delete", "delete_entry");
                
               }
            else if((check_del.equals("instructor_delete"))){
                sql= "DELETE FROM "+request.getParameter("kskdata")+" WHERE mail ='"+dummy_title+"'";
                //out.println(dummy_title);
                can="deleteinstructor";
                session.setAttribute("kanka_content_delete", "delete_entry");
               }
			  PreparedStatement pst = db.getConnection().prepareStatement(sql);
			int j=  pst.executeUpdate();
			
				if(((j==1) && (can.equals("updateinstructor")))){
					response.sendRedirect("instructor_registration_form.jsp?kskdata="+request.getParameter("kskdata")+"");
				}
				else if((j==1) && (can.equals("deleteinstructor"))){
				response.sendRedirect("instructor_registration_form.jsp?kskdata="+request.getParameter("kskdata")+"");
				}
				else if((j==1) && (can.equals("gallerychecked"))){
				response.sendRedirect("image_upload.jsp?kskdata="+request.getParameter("kskdata")+"");
				}
				else if(((j==1) && (can.equals("Updateduuuu"))) || ((j==1) && (can.equals("checkednaaaa")))){
			response.sendRedirect("insertion.jsp?kskdata="+request.getParameter("kskdata")+"");
					}
				else {
					out.println("Some thing went wrong please vist again");
					session.setAttribute("kanka_content_delete", null);
					session.setAttribute("kanka_content_update", null);
				}
            /*String sql1 = "SELECT * FROM "+request.getParameter("kskdata")+"";
			  PreparedStatement pst1 = db.getConnection().prepareStatement(sql1);
			
			  ResultSet rs= pst1.executeQuery();
			while(rs.next())

              {
                   name=rs.getString(1);
                  
                   
                   pas=rs.getString(2);
                  
                   out.println(pas);
                   
                    	if(ksk_title.equals(pas))
                        {
                            flag=true;
                            
                            break;
                        }
                 
                   
              }
            
            //c.close();
            out.close();*/
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
