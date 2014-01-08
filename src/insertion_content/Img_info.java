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

/**
 * Servlet implementation class Img_info
 */
@WebServlet("/Img_info")
public class Img_info extends HttpServlet {
	DataBase db;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Img_info() {
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
							
		PrintWriter out = response.getWriter();
		HttpSession sess=request.getSession();
			String x  = (String) sess.getAttribute("kanka_image");
				//String x =request.getParameter("imageinfo");
			
			try {
				 String query="insert into "+request.getParameter("kskdata")+" values(?)";
				  PreparedStatement pst = db.getConnection().prepareStatement(query); 
				  pst.setString(1, x);
				  int rs = pst.executeUpdate();
				  if(rs == 1){
					  out.println(x);
					 /*sess.setAttribute("kanka_conformation", "ksk_content");
					  response.sendRedirect("image_upload.jsp?kskdata=testimage");  */
				  }
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
