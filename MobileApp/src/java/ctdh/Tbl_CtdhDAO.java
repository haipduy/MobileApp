/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ctdh;

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
public class Tbl_CtdhDAO implements Serializable {

    private Connection conn;
    private PreparedStatement prestm;
    private ResultSet rs;

    public Tbl_CtdhDAO() {
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

    public boolean insertCtdh(String hdID, String itemID, String itemName, String image, int quantity, float price) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO tbl_Ctdh(hdID,itemID,itemName,image,quantity,price) VALUES (?,?,?,?,?,?)";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, hdID);
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
        } catch (Exception e) {
        } finally {
            closeConnection();
        }

        return false;
    }
    private List<Tbl_CtdhDTO> listCtdh;

    public List<Tbl_CtdhDTO> getListCtdh() {
        return listCtdh;
    }
    
    public void getRecordCtdh(String hdID){
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                String url="Select itemID,itemName,image,quantity,price from tbl_Ctdh Where hdID = ?";
                prestm=conn.prepareStatement(url);
                prestm.setString(1, hdID);
                rs=prestm.executeQuery();
                while(rs.next()){
                    String itemID= rs.getString("itemID");
                    String itemName= rs.getString("itemName");
                    String image= rs.getString("image");
                    int quantity=rs.getInt("quantity");
                    float price= rs.getFloat("price");
                    Tbl_CtdhDTO dto= new Tbl_CtdhDTO(hdID, itemID, itemName, image, quantity, price);
                    if(listCtdh==null){
                        listCtdh=new ArrayList<>();
                    }
                    listCtdh.add(dto);
                }
                
            }
        } catch (Exception e) {
        }finally{
            closeConnection();
        }
    }
    
}
