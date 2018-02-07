package com.mvc.bean;

public class OrderBean {
    private static int OrderNo;
    private String menuid;
    private int Quantity;
    private String remarks;
    private int consumerid;
    private String status;
    public static int getOrderNo() {
        return OrderNo;
    }
    public void setOrderNo(int orderNo) {
        OrderNo = orderNo;
    }
    public String getMenuid() {
        return menuid;
    }
    public void setMenuid(String menuid) {
        this.menuid = menuid;
    }
    public int getQuantity() {
        return Quantity;
    }
    public void setQuantity(int quantity) {
        Quantity = quantity;
    }
    public String getRemarks() {
        return remarks;
    }
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public int getConsumerid() {
        return consumerid;
    }
    public void setConsumerid(int consumerid) {
        this.consumerid = consumerid;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }

}
