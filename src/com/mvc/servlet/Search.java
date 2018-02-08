package com.mvc.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import org.json.JSONArray;
import org.json.JSONObject;

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
			String  spmid  = request.getParameter("spmitemid");
			/*String selectedValue=request.getParameter("lang");*/
			System.out.println("Selected Value is : "+spmid);
			String  spmname  = request.getParameter("spmitemname");


			ArrayList al=null;
			ArrayList emp_list =new ArrayList();
			String query = 
					"select SPMItemKey,SPMItemOrganisationID , SPMItemID , SPMItemName , SPMItemImageFile , SPMItemDirectory,SPMItemRemarks ,SPMItemStatus from spmitem_master where SPMItemID='"+spmid+"' ";

			/*System.out.println("query " + query);*/
			st = conn.createStatement();
			ResultSet  rs = st.executeQuery(query);

			 JSONArray jsonArray = new JSONArray();
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


				int total_rows = rs.getMetaData().getColumnCount();
				for (int i = 0; i < total_rows; i++) {
					JSONObject obj = new JSONObject();
					obj.put(rs.getMetaData().getColumnLabel(i + 1)
							.toLowerCase(), rs.getObject(i + 1));

					jsonArray.put(obj);				
					
				}

			}
			
					                    
			System.out.println(jsonArray);
			request.setAttribute("empList",emp_list);
		   request.setAttribute("jsonString", jsonArray.toString());
		 
			RequestDispatcher dispatcher = 
					getServletContext().getRequestDispatcher("/mastersp.jsp");
			dispatcher.forward(request,response);
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
