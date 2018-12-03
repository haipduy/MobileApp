/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hoadons;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author PDH
 */
public class Tbl_HdDAO implements Serializable {

    private Connection conn;
    private PreparedStatement prestm;
    private ResultSet rs;

    public Tbl_HdDAO() {
    }

    public void closeConnection() {
        try {
            if (conn != null) {
                conn.close();
            }
            if (prestm != null) {
                prestm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
    }

    public boolean insertDH(String userID, float total, String fullName, int phone, String email, String address, String notes) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO tbl_Hd (userID,total,fullName,phone,email,address,notes,statusID) VALUES (?,?,?,?,?,?,?,?)";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, userID);
                prestm.setFloat(2, total);
                prestm.setString(3, fullName);
                prestm.setInt(4, phone);
                prestm.setString(5, email);
                prestm.setString(6, address);
                prestm.setString(7, notes);
                prestm.setInt(8, 0);
                int row = prestm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
        return false;
    }

    public String gethdIDFromHdDb(String userID, float total, String fullName, int phone, String email, String address, String notes) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT hdID From tbl_Hd WHERE userID=? AND total=? AND fullName=? AND phone=? AND email=? AND address=? AND notes=?";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, userID);
                prestm.setFloat(2, total);
                prestm.setString(3, fullName);
                prestm.setInt(4, phone);
                prestm.setString(5, email);
                prestm.setString(6, address);
                prestm.setString(7, notes);
                rs = prestm.executeQuery();
                if (rs.next()) {
                    String hdID = rs.getString("hdID");
                    return hdID;
                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
        return null;
    }

    public boolean insertCtdh(String dhID, String itemID, String itemName, String image, int quantity, float price) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO tbl_Ctdh (dhID,itemID,itemName,image,quantity,price) VALUES (?,?,?,?,?,?)";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, dhID);
                prestm.setString(2, itemID);
                prestm.setString(3, itemName);
                prestm.setString(4, image);
                prestm.setInt(5, quantity);
                prestm.setFloat(6, price);
                int row = prestm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
        return false;
    }

    private List<Tbl_HdDTO> listOrder;

    public List<Tbl_HdDTO> getListOrder() {
        return listOrder;
    }

    public void getAllOrder() {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select hdID,userID,total,fullName,phone,email,address,notes,statusID from tbl_Hd Where statusID = 0";
                prestm = conn.prepareStatement(sql);
                rs = prestm.executeQuery();
                while (rs.next()) {
                    String hdID = rs.getString("hdID");
                    String userID = rs.getString("userID");
                    float total = rs.getFloat("total");
                    String fullName = rs.getString("fullName");
                    int phone = rs.getInt("phone");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String notes = rs.getString("notes");
                    int status = rs.getInt("statusID");

                    Tbl_HdDTO dto = new Tbl_HdDTO(hdID, userID, total, fullName, phone, email, address, notes, status);
                    if (listOrder == null) {
                        listOrder = new ArrayList<>();
                    }
                    listOrder.add(dto);
                }
            }
        } catch (Exception e) {
        } finally {
            closeConnection();
        }
    }
    public boolean updateStatus(String hdID){
        
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                String url="Update tbl_Hd set statusID = 1 Where hdID = ?";
                prestm=conn.prepareStatement(url);
                prestm.setString(1, hdID);
                int row= prestm.executeUpdate();
                if(row>0){
                    return true;
                }
                
            }
        } catch (Exception e) {
        }finally{
            closeConnection();
        }
        return false;
    }
}
