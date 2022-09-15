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
 * Servlet implementation class fetch_equip
 */
@WebServlet("/fetch_equip")
public class fetch_equip extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{ res.setContentType("image/jpeg");
	byte[] img=null;
	ServletOutputStream out=res.getOutputStream();
	
		try
		{  String ids1=req.getQueryString();
		Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
String sqlQuery="SELECT image FROM equip WHERE id=?";
PreparedStatement ps=con.prepareStatement(sqlQuery);
ps.setString(1, ids1);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	img=rs.getBytes("image");
	out.write(img);
	out.flush();
	ps.close();

	
}

}
catch(Exception e)
		{
			e.printStackTrace();
		}
	}
		
	}

