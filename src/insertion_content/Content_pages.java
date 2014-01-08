package insertion_content;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLDocument.Iterator;

/**
 * Servlet implementation class Content_pages
 */
@WebServlet("/Content_pages")
public class Content_pages extends HttpServlet {
	DataBase db;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Content_pages() {
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
			Intialization_form ksk_content = new Intialization_form();
			ResultSet i = pst.executeQuery();
			ArrayList<String> username = new ArrayList<String>();
			/*while(i.next()){
				username.add(i.getString(1));
				java.util.Iterator it = username.iterator();
				while (it.hasNext()) {
					Intialization_form s = (Intialization_form) it.next();
					
				}
			}*/
			
			//int kkk=0;
			while (i.next()) {
			String result = i.getString(1);
			String title = i.getString(2);
			/*username.add(result);
			String[] a = (String[]) username.toArray(new String[username.size()]);
			String x= a.toString();*/
			ksk_content.setiframe(result);
			ksk_content.settitle(title);
			//ksk_content.getiframe();
			
			//pw.println("ans"+kkk+"=<br>"+result);
			//username.add(result);
			/*String[] a = (String[]) username.toArray(new String[result.size()]);
			for (String s : a) {
				pw.println(s);
			}*/
			/*java.util.Iterator it = username.iterator();
		while (it.hasNext()) {
			for(int j = 0; j == (username.size()-1);j++){
			if((username.size()-1) == (((ArrayList<String>) it).size())){
				pw.println(it.next());
			}
			
			}
		}*/
			//kkk++;
			}
			//pw.println("******************\n"+kkk+"\n***************");
			HttpSession session = request.getSession();
			
			
			if((updateinfo.equals(authuntication))){
				
				response.sendRedirect("content_update.jsp?kskdata="+request.getParameter("kskdata")+"");
				session.setAttribute("kanka_content", ksk_content);
			}
			if((updateinfo.equals("no"))){
				response.sendRedirect("content_delete.jsp?kskdata="+request.getParameter("kskdata")+"");
				session.setAttribute("kanka_content", ksk_content);
			}
			else if((updateinfo.equals("content_page"))) {
				response.sendRedirect("content_pages.jsp");
				session.setAttribute("kanka_content", ksk_content);
			}
		} catch (Exception e) {
			
			pw.println(" " + e);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
