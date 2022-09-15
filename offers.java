package package1;

import java.sql.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class offers
 */
@WebServlet("/offers")
public class offers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public offers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn=null;
	    java.sql.PreparedStatement pstmt = null;
	    ResultSet rs=null;
	    String url="jdbc:mysql://localhost:3306/project";
	    String uname="root";
	    String pass="root";
	    FileInputStream fis=null;
		String n=request.getParameter("names");
		String vf=request.getParameter("validf");
	    String vu=request.getParameter("validupto");
	    String d=request.getParameter("description");
	    String f=request.getParameter("myFile");

	
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn=DriverManager.getConnection(url, uname, pass);
			File image= new File(f);
			pstmt = conn.prepareStatement("insert into offers(id, name,start_date,end_date,description,image) values(null,?,?,?,?,?)");
			pstmt.setString(1,n);
			pstmt.setString(2,vf);
			pstmt.setString(3,vu);
			pstmt.setString(4,d);
			fis=new FileInputStream(image);
			pstmt.setBinaryStream(5, (InputStream) fis, (int) (image.length()));
			int count = pstmt.executeUpdate();
			if(count>0)
			{
				response.sendRedirect("s2.jsp");
			}
		
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
}
		
	}


