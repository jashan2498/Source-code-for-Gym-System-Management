package package1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class fetch_offers
 */
@WebServlet("/fetch_offers")
public class fetch_offers extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{ byte[] img=null;
	ServletOutputStream sos=null;
		String sqlQuery="Select image from offers";
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=con.prepareStatement(sqlQuery);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	img=rs.getBytes(1);
}
sos=res.getOutputStream();
sos.write(img);
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
