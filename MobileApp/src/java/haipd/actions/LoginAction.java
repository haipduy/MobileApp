/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import accounts.ErrorObjectAccount;
import accounts.Tbl_AccountDAO;
import accounts.Tbl_AccountDTO;
import com.opensymphony.xwork2.ActionContext;
import java.util.Map;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PDH
 */
public class LoginAction {

    private String username;
    private String password;
    private final String ADMIN = "admin";
    private final String USER = "user";
    private final String FAIL = "invalid";

    public LoginAction() {
    }

    public String execute() throws Exception {
        ErrorObjectAccount errorObj = new ErrorObjectAccount();

        boolean valid = true;
        if (username.length() == 0) {
            errorObj.setUsernameERR("Username can't be blank");
            valid = false;
        }
        if (password.length() == 0) {
            errorObj.setPasswordERR("Password can't be blank");
            valid = false;
        }
        String url = FAIL;
        Map session = ActionContext.getContext().getSession();
        if (valid) {
            Tbl_AccountDAO dao = new Tbl_AccountDAO();
            Tbl_AccountDTO user = dao.checkLogin(username, password);
            if (user != null) {

                session.put("USER", user.getFirstName());
                session.put("USERID", user.getUsername());
                String role = user.getRoleName();
                if (role.trim().equals("Administrator")) {
                    url = ADMIN;
                } else if (role.trim().equals("Subscriber")) {
                    url = USER;
                }
            }
        } else {
            session.put("INVALID", errorObj);
        }

        return url;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
