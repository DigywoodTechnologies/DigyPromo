package com.mvc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.OrderBean;
import com.mvc.dao.SearchOrderDAO;
import com.sun.jersey.spi.dispatch.RequestDispatcher;

public class SearchServlet {
	protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String orderno = request.getParameter("spmname");
        int ordernoint = Integer.parseInt(request.getParameter("spmname"));
        OrderBean OrderBean = new OrderBean();
        OrderBean.setOrderNo(ordernoint);
        SearchOrderDAO dd = new SearchOrderDAO();
        request.setAttribute("orderno", dd.retrieveOrderList());
        javax.servlet.RequestDispatcher view = request.getRequestDispatcher("mastersp.jsp");
        view.forward(request, response);
    }
}
