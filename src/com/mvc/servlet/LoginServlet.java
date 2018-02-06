package com.mvc.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.UserBean;
import com.mvc.dao.UserDAO;
  
  @SuppressWarnings("serial")
  public class LoginServlet extends HttpServlet {
public   LoginServlet() {
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String userName = request.getParameter("username");

String password = request.getParameter("password");
UserBean loginBean = new UserBean();
loginBean.setUsername(userName); 
loginBean.setPassword(password);
UserDAO loginDao = new UserDAO();

String userValidate = loginDao.authenticateUser(loginBean);
if(userValidate.equals("SUCCESS"))  
{
request.setAttribute("username", userName); 
request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
}
else
{
request.setAttribute("errMessage", userValidate); 
request.getRequestDispatcher("invalidLogin.jsp").forward(request, response);
}
}
}