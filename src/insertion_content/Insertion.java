package insertion_content;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTML;
import javax.xml.soap.Text;

/**
 * Servlet implementation class Insertion
 */
@WebServlet("/Insertion")
public class Insertion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DataBase db;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insertion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
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
		
		response.setContentType("Text/HTML");
		PrintWriter pw = response.getWriter();
		String content,title;
		
		try {
			
			content = request.getParameter("myTextArea");
			title = request.getParameter("title");
			String query="insert into "+request.getParameter("kskdata")+" values(?,?)";
			
			PreparedStatement pst = db.getConnection().prepareStatement(query);
			
			pst.setString(1, content);
			pst.setString(2, title);
			
			int i = pst.executeUpdate();
			if(i == 1){
				 HttpSession sess=request.getSession();
				 sess.setAttribute("kanka_conformation", "ksk_content");
				 response.sendRedirect("insertion.jsp?kskdata="+request.getParameter("kskdata")+"");
			}
			else {
				pw.println("not done");
			}
			
		}
		catch (Exception e) {
		     pw.println("Exception is "+ e);
		}
	}

}
