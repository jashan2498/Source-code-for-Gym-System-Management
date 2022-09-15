package package1;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;


import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.*;

/**
 * Servlet implementation class equip
 */
@WebServlet("/equip")
public class equip extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public equip() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter pw = response.getWriter();
			
		
		    
		    Connection conn=null;
		    java.sql.PreparedStatement pstmt = null;
		    ResultSet rs=null;
		    String url="jdbc:mysql://localhost:3306/project";
		    String uname="root";
		    String pass="root";
		    FileInputStream fis=null;
			String n=request.getParameter("names");
			String d=request.getParameter("description");
		    String f=request.getParameter("myFile");

		
			try
			{
				
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				conn=DriverManager.getConnection(url, uname, pass);
				File image= new File(f);
				pstmt = conn.prepareStatement("insert into equip(id, name,description,image) values(null,?,?,?)");
				pstmt.setString(1,n);
				pstmt.setString(2,d);
				fis=new FileInputStream(image);
				pstmt.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
				int count = pstmt.executeUpdate();
				if(count>0)
				{
					response.sendRedirect("s2.jsp");
				}
			
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		
			 }	 }
	


