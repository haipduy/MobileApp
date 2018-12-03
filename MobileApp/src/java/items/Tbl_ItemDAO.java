/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package items;

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
public class Tbl_ItemDAO implements Serializable {

    private Connection conn;
    private PreparedStatement prestm;
    private ResultSet rs;

    public Tbl_ItemDAO() {
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
//    admin
//    manager Product
    private List<Tbl_ItemDTO> listproduct;

    public List<Tbl_ItemDTO> getListproduct() {
        return listproduct;
    }
//    co quantity

    public void getAllProduct() {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "select item.itemID, item.itemName, item.image, item.quantity, item.price, item.priceSale, cate.categoryName\n"
                        + "from tbl_Items item, tbl_Category cate\n"
                        + "Where item.categoryID = cate.categoryID AND status=1";
                prestm = conn.prepareStatement(sql);
                rs = prestm.executeQuery();
                while (rs.next()) {
                    String itemID = rs.getString("itemID");
                    String itemName = rs.getString("itemName");
                    String image = rs.getString("image");
                    int quantity = rs.getInt("quantity");
                    float price = rs.getFloat("price");
                    float priceSale = rs.getFloat("priceSale");
                    String categoryName = rs.getString("categoryName");
                    Tbl_ItemDTO dto = new Tbl_ItemDTO(itemID, itemName, image, price, priceSale, quantity, categoryName);
                    if (listproduct == null) {
                        listproduct = new ArrayList<>();
                    }
                    listproduct.add(dto);

                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
    }

    //update status item
    public boolean updateStatusRecord(String itemID) {

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Update tbl_Items SET status = 0 WHERE itemID = ?";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, itemID);
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

//    product 
    private List<Tbl_ItemDTO> list;

    public List<Tbl_ItemDTO> getList() {
        return list;
    }

    public void showAllProduct() {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "select item.itemID, item.itemName, item.image, item.price, item.priceSale, cate.categoryName\n"
                        + "from tbl_Items item, tbl_Category cate\n"
                        + "Where item.categoryID = cate.categoryID";
                prestm = conn.prepareStatement(sql);
                rs = prestm.executeQuery();
                while (rs.next()) {
                    String itemID = rs.getString("itemID");
                    String itemName = rs.getString("itemName");
                    String image = rs.getString("image");
                    float price = rs.getFloat("price");
                    float priceSale = rs.getFloat("priceSale");
                    String categoryName = rs.getString("categoryName");
                    Tbl_ItemDTO dto = new Tbl_ItemDTO(itemID, itemName, image, price, priceSale, categoryName);
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    list.add(dto);

                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
    }

    private List<Tbl_ItemDTO> listdetail;

    public List<Tbl_ItemDTO> getListdetail() {
        return listdetail;
    }

    public void viewDetailProduct(String pk) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "select itemID,categoryID,itemName,image,price,priceSale,quantity,technology,announced,dimensions,sim,type,size,resolution,protection,OS,CPU,GPU,internal,cameraPri,cameraSec,battery from tbl_Items Where itemID = ? ";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, pk);
                rs = prestm.executeQuery();
                if (rs.next()) {
                    if (listdetail == null) {
                        listdetail = new ArrayList<>();
                    }
                    String itemID = rs.getString("itemID");
                    String itemName = rs.getString("itemName");
                    String image = rs.getString("image");
                    float price = rs.getFloat("price");
                    float priceSale = rs.getFloat("priceSale");
                    int quantity = rs.getInt("quantity");
                    String technology = rs.getString("technology");
                    String announced = rs.getString("announced");
                    String dimensions = rs.getString("dimensions");
                    String sim = rs.getString("sim");
                    String type = rs.getString("type");
                    String size = rs.getString("size");
                    String resolution = rs.getString("resolution");
                    String protection = rs.getString("protection");
                    String OS = rs.getString("OS");
                    String CPU = rs.getString("CPU");
                    String GPU = rs.getString("GPU");
                    String internal = rs.getString("internal");
                    String cameraPri = rs.getString("cameraPri");
                    String cameraSec = rs.getString("cameraSec");
                    String battery = rs.getString("battery");
                    String categoryID = rs.getString("categoryID");
                    Tbl_ItemDTO dtodetail = new Tbl_ItemDTO(itemID, itemName, image, price, priceSale, quantity, technology, announced, dimensions, sim, type, size, resolution, protection, OS, CPU, GPU, internal, cameraPri, cameraSec, battery, categoryID, null);

                    listdetail.add(dtodetail);
                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
    }

    public String getItemName(String id) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select itemName from tbl_Items WHERE itemID = ? ";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, id);
                rs = prestm.executeQuery();
                if (rs.next()) {
                    String itemName = rs.getString("itemName");
                    return itemName;
                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
        return null;
    }

    public String getImage(String id) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select image from tbl_Items WHERE itemID=? ";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, id);
                rs = prestm.executeQuery();
                if (rs.next()) {
                    String image = rs.getString("image");
                    return image;
                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
        return null;
    }

    public float getPriceSale(String id) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select priceSale from tbl_Items WHERE itemID=? ";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, id);
                rs = prestm.executeQuery();
                if (rs.next()) {
                    float priceSale = rs.getFloat("priceSale");
                    return priceSale;
                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
        return 0;
    }
    private List<Tbl_ItemDTO> listsearch;

    public List<Tbl_ItemDTO> getListsearch() {
        return listsearch;
    }

    public void searchByFullname(String searchValue) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "select item.itemID, item.itemName, item.image, item.price, item.priceSale, cate.categoryName\n"
                        + "from tbl_Items item, tbl_Category cate\n"
                        + "Where item.categoryID = cate.categoryID AND item.itemName LIKE ?";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, "%" + searchValue + "%");
                rs = prestm.executeQuery();
                while (rs.next()) {
                    String itemID = rs.getString("itemID");
                    String itemName = rs.getString("itemName");
                    String image = rs.getString("image");
                    float price = rs.getFloat("price");
                    float priceSale = rs.getFloat("priceSale");
                    String categoryName = rs.getString("categoryName");
                    Tbl_ItemDTO dtosearch = new Tbl_ItemDTO(itemID, itemName, image, price, priceSale, categoryName);
                    if (listsearch == null) {
                        listsearch = new ArrayList<>();
                    }
                    listsearch.add(dtosearch);

                }
            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
    }

    public boolean getItemID(String id) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "select itemID FROM tbl_Items WHERE itemID=?";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, id);
                rs = prestm.executeQuery();
                if (rs.next()) {
                    return true;
                }

            }
        } catch (SQLException e) {
        } finally {
            closeConnection();
        }
        return false;
    }
    public boolean insertProduct(String itemID,String categoryID,String itemName,String image,float price, float priceSale,int quantity,String technology,String announced,String dimensions,String sim,String type,String size,String resolution,String protection,String OS,String CPU,String GPU,String internal,String cameraPri,String cameraSec,String battery){
        
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                String sql="Insert Into tbl_Items(itemID,categoryID,itemName,"
                        + "image,price,priceSale,quantity,technology,announced,dimensions,"
                        + "sim,type,size,resolution,protection,OS,CPU,GPU,internal,"
                        + "cameraPri,cameraSec,battery,status) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,1)";
                prestm=conn.prepareStatement(sql);
                prestm.setString(1, itemID);
                prestm.setString(2, categoryID);
                prestm.setString(3, itemName);
                prestm.setString(4, image);
                prestm.setFloat(5, price);
                prestm.setFloat(6, priceSale);  
                prestm.setInt(7, quantity);
                prestm.setString(8, technology);
                prestm.setString(9, announced);
                prestm.setString(10, dimensions);
                prestm.setString(11, sim);
                prestm.setString(12, type);
                prestm.setString(13, size);
                prestm.setString(14, resolution);
                prestm.setString(15, protection);
                prestm.setString(16, OS);
                prestm.setString(17, CPU);
                prestm.setString(18, GPU);
                prestm.setString(19, internal);
                prestm.setString(20, cameraPri);
                prestm.setString(21, cameraSec);
                prestm.setString(22, battery);
                int row= prestm.executeUpdate();
                if(row>0){
                    return true;
                }
            }
        } catch (Exception e) {
        }
        
        return false;
    }
    public int getQuantity(String itemID){
        int quantity=0;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                String sql="select quantity from tbl_Items Where itemID = ? ";
                prestm=conn.prepareStatement(sql);
                prestm.setString(1, itemID);
                rs=prestm.executeQuery();
                if(rs.next()){
                    quantity=rs.getInt("quantity");
                }
            }
        } catch (Exception e) {
        }finally{
            closeConnection();
        }
        return quantity;
    }
    public int getStatus(String itemID){
        int status=0;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                String sql="select status from tbl_Items Where itemID = ? ";
                prestm=conn.prepareStatement(sql);
                prestm.setString(1, itemID);
                rs=prestm.executeQuery();
                if(rs.next()){
                    status=rs.getInt("status");
                }
            }
        } catch (Exception e) {
        }finally{
            closeConnection();
        }
        return status;
    }
    public boolean updateQuantity(int quantity,String itemID){
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                String sql="Update tbl_Items Set quantity = ? Where itemID = ? ";
                prestm=conn.prepareStatement(sql);
                prestm.setInt(1, quantity);
                prestm.setString(2, itemID);
                int row=prestm.executeUpdate();
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
