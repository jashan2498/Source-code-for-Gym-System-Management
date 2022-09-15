package package1;


import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
  

/**
 * Servlet implementation class regform
 */
@WebServlet("/regform")
public class regform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regform() {
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
	 * @return 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter pw = response.getWriter();
		
		String n=request.getParameter("names");
		String ag=request.getParameter("ages");
		int a1=Integer.parseInt(ag);
		String cont=request.getParameter("contact");
		long c1=Long.parseLong(cont);
		String em=request.getParameter("emails");
		String memb=request.getParameter("memberships");
		String add=request.getParameter("addresses");
	    String dat=request.getParameter("dates");
		

		 if ((n == null) || (n.equals(""))) {
			 pw.println("<script type=\"text/javascript\">");
		       pw.println("alert('Enter name');");
		       pw.println("</script>");
		 }
		 if(memb.equals("0"))
		 {
			 pw.println("<script type=\"text/javascript\">");
		       pw.println("alert('Choose Membership');");
		       pw.println("</script>");
			 
		 }
		 
		
		else
		 {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			Statement stm=con.createStatement();
			int i=stm.executeUpdate("insert into regform values(null,' "+n+" ',' "+a1+" ',' "+c1+" ',' "+em+" ',' "+memb+" ',' "+add+" ',' "+dat+" ')");
			if(i>0)
			{
			response.sendRedirect("s1.jsp");
			}
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	
		 }	 }
}

