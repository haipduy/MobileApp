/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package category;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import utils.DBUtils;

/**
 *
 * @author PDH
 */
public class Tbl_CategoryDAO implements Serializable {

    private Connection conn;
    private PreparedStatement prestm;
    private ResultSet rs;

    public Tbl_CategoryDAO() {
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

    private List<Tbl_CategoryDTO> categoryList;

    public List<Tbl_CategoryDTO> getCategoryList() {
        return categoryList;
    }

    public void getAllCategory() {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select categoryID, categoryName from tbl_Category";
                prestm = conn.prepareStatement(sql);
                rs = prestm.executeQuery();
                while (rs.next()) {
                    String categoryID = rs.getString("categoryID");
                    String categoryName = rs.getString("categoryName");
                    System.out.println("category:" + categoryName);
                    Tbl_CategoryDTO dto = new Tbl_CategoryDTO(categoryID, categoryName);
                    if (categoryList == null) {
                        categoryList = new ArrayList<>();
                    }
                    categoryList.add(dto);

                }
            }
        } catch (SQLException e) {

        } finally {
            closeConnection();
        }
    }

    public String getCategoryID(String categoryName) {
        String categoryId = "";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select categoryID from tbl_Category Where categoryName = ?";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, categoryName);
                rs = prestm.executeQuery();
                while (rs.next()) {
                    categoryId = rs.getString("categoryID");
                    System.out.println("cate ID" + categoryId);
                    return categoryId;
                }
            }
        } catch (SQLException e) {

        } finally {
            closeConnection();
        }
        return categoryId;
    }
}
