package com.mvc.dao;

import java.util.ArrayList;

import com.mvc.bean.OrderBean;
import com.mvc.connection.ConnectionManager;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class SearchOrderDAO {
    Statement stmt = null;
    static java.sql.Connection currentCon = null;
    static ResultSet rs = null;
public ArrayList retrieveOrderList(){
{
     ArrayList<OrderBean> v = new ArrayList<OrderBean>();
     int orderno = OrderBean.getOrderNo();
    try {
    currentCon = ConnectionManager.createConnection();
    String searchQuery = "select * from f_b_orders where idF_B_Orders='" + orderno + "'";
    java.sql.PreparedStatement ps = currentCon.prepareStatement(searchQuery);
    java.sql.ResultSet rs = ps.executeQuery();
        OrderBean OrderBean = null;
        while (rs.next()) {
            OrderBean = new OrderBean();
            OrderBean.setOrderNo(rs.getInt("idF_B_Orders"));
            OrderBean.setConsumerid(rs.getInt("userId"));
            OrderBean.setMenuid(rs.getString("F_B_Menu_Id"));
            OrderBean.setRemarks(rs.getString("Remarks"));
            OrderBean.setQuantity(rs.getInt("Quantity")); 
            OrderBean.setStatus(rs.getString("Status"));
             v.add(OrderBean);
        }
    }catch(Exception asd){
        System.out.println(asd.getMessage());
    }
    return v;
}
}
}
