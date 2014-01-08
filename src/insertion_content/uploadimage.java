package insertion_content;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class uploadimage
 */
@WebServlet("/uploadimage")
public class uploadimage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadimage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
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
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if(isMultipart){
			ServletFileUpload upload = new ServletFileUpload();
			try {
				FileItemIterator itr = upload.getItemIterator(request);
				while(itr.hasNext()){
					FileItemStream item = itr.next();
					if(item.isFormField()){
					String fieldName =item.getFieldName();
					//String value =item.toString();
					InputStream is = item.openStream();
					byte[] b = new byte[is.available()];
					is.read(b);
					String value =new String(b);
					response.getWriter().println(fieldName+":"+value+"<br>");
					}
					else {
						String path = getServletContext().getRealPath("/");
						if(Fileupload.processfile(path, item)){
							response.getWriter().println("file uploaded");
						}
						else response.getWriter().println("file not uploaded");
					}
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
