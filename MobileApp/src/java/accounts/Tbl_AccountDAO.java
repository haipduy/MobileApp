/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accounts;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author PDH
 */
public class Tbl_AccountDAO implements Serializable {

    private Connection conn;
    private PreparedStatement prestm;
    private ResultSet rs;

    public Tbl_AccountDAO() {
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

    public Tbl_AccountDTO checkLogin(String username, String password) {
        Tbl_AccountDTO user = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select acc.userID, acc.password, acc.firstName, acc.status,rol.roleName\n"
                        + "From tbl_Account acc,tbl_Role rol \n"
                        + "WHERE acc.role=rol.role AND acc.userID= ? AND acc.password = ? AND acc.status='1'";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, username);
                prestm.setString(2, password);
                rs = prestm.executeQuery();
                if (rs.next()) {
                    String firstName = rs.getString("firstName");
                    String roleName = rs.getString("roleName");
                    user = new Tbl_AccountDTO(username, password, firstName, roleName);
                }
            }
        } catch (SQLException e) {

        } finally {
            closeConnection();
        }
        return user;
    }

    public boolean getUserId(String userID) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select userID from tbl_Account Where userID = ?";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, userID);
                rs= prestm.executeQuery();
                while(rs.next()){
                    return true;
                }
            }
        } catch (Exception e) {
        } finally {
            closeConnection();
        }
        return false;
    }

    private List<Tbl_AccountDTO> list;

    public List<Tbl_AccountDTO> getList() {
        return list;
    }

    public void showAllUser() {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select acc.userID, acc.firstName, acc.lastName, acc.email, acc.phone, acc.birthDate, acc.status, rol.roleName From tbl_Account acc, tbl_Role rol Where acc.role=rol.role AND acc.role = '2' AND acc.status = '1'";
                prestm = conn.prepareStatement(sql);
                rs = prestm.executeQuery();
                while (rs.next()) {
                    String userID = rs.getString("userID");
                    String firstName = rs.getString("firstName");
                    String lastName = rs.getString("lastName");
                    String email = rs.getString("email");
                    int phone = rs.getInt("phone");
                    Timestamp birthDate = rs.getTimestamp("birthDate");
                    int status = rs.getInt("status");
                    String roleName = rs.getString("roleName");
                    Tbl_AccountDTO dto = new Tbl_AccountDTO(userID, "", firstName, lastName, email, phone, birthDate, status, roleName);
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

    public boolean deleteRecordUser(String pk) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Update tbl_Account SET status = ? WHERE userID = ?";
                prestm = conn.prepareStatement(sql);
                prestm.setInt(1, 0);
                prestm.setString(2, pk);
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

    public boolean updatePassUser(String pk, String password) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Update tbl_Account SET password = ? WHERE userID = ?";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, password);
                prestm.setString(2, pk);
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

    public boolean createNewRecord(String username, String password, String firstName, String lastName, String email, String phone, String birthDate) {
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO tbl_Account VALUES (?,?,?,?,?,?,?,?,?)";
                prestm = conn.prepareStatement(sql);
                prestm.setString(1, username);
                prestm.setString(2, password);
                prestm.setString(3, firstName);
                prestm.setString(4, lastName);
                prestm.setString(5, email);
                prestm.setString(6, phone);
                prestm.setString(7, birthDate);
                prestm.setInt(8, 1);
                prestm.setInt(9, 2);

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
}
