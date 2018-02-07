package com.mvc.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.util.*;


@SuppressWarnings("serial")
public class Search extends HttpServlet{ 

	public void doPost(HttpServletRequest request, 
			HttpServletResponse response)
					throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();


		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "digypromo";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root"; 
		String password = "root";


		Statement st;
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName,userName,password);
			/*String  spmid  = request.getParameter("spmitemid");*/
			String selectedValue=request.getParameter("lang");
			System.out.println("Selected Value is : "+selectedValue);
			String  spmname  = request.getParameter("spmitemname");


			ArrayList al=null;
			ArrayList emp_list =new ArrayList();
			String query = 
					"select SPMItemKey,SPMItemOrganisationID , SPMItemID , SPMItemName , SPMItemImageFile , SPMItemDirectory,SPMItemRemarks ,SPMItemStatus from spmitem_master where SPMItemID='"+selectedValue+"' or  SPMItemName LIKE '%" + spmname + "%' ";

			System.out.println("query " + query);
			st = conn.createStatement();
			ResultSet  rs = st.executeQuery(query);


			while(rs.next()){
				al  = new ArrayList();
				al.add(rs.getString(1));
				al.add(rs.getString(2));
				al.add(rs.getString(3));
				al.add(rs.getString(4));
				al.add(rs.getString(5));
				al.add(rs.getString(6));
				al.add(rs.getString(7));
				al.add(rs.getString(8));
				emp_list.add(al);
			}
			request.setAttribute("empList",emp_list);

			RequestDispatcher dispatcher = 
					getServletContext().getRequestDispatcher("/mastersp.jsp");
			dispatcher.forward(request,response);
			conn.close();
			System.out.println("Disconnected from database");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
