/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import accounts.ErrorObjectAccount;
import accounts.Tbl_AccountDAO;
import com.opensymphony.xwork2.ActionContext;
import java.util.Map;

/**
 *
 * @author PDH
 */
public class CreateNewUserAction {

    private String userID;
    private String password;
    private String confirm;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String birthDate;

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public CreateNewUserAction() {
    }

    public String execute() throws Exception {

        ErrorObjectAccount error = new ErrorObjectAccount();
        boolean valid = true;
        if (userID.length() < 4) {
            error.setUserIDErr("Username can't be less than 4 character.");
            valid = false;
        }
        if (password.length() < 3) {
            error.setPasswordErr("Password can't be less than 3 character.");
            valid = false;
        }
        if (!confirm.equals(password)) {
            error.setConfirmErr("Confirm must match password.");
            valid = false;
        }
        if (firstName.length() < 4) {
            error.setFirstNameErr("First name can't be less than 4 character");
            valid = false;
        }
        if (lastName.length() < 4) {
            error.setLastNameErr("Last name can't be less than 4 character.");
            valid = false;
        }
        if (email.length() == 0) {
            error.setEmailErr("Email can't be blank.");
            valid = false;
        }
        if (!phone.matches("[0-9]+")) {
            error.setPhoneErr("Invalid Phone.");
            valid = false;
        }
        if (birthDate.length() == 0) {
            error.setBirthDateErr("BirthDate can't be black.");
        }

        Tbl_AccountDAO dao = new Tbl_AccountDAO();

        boolean key = dao.getUserId(userID);
        if (key) {
            error.setDuplicateIDErr("Username is exist.");
            valid = false;
        }
        String url = FAIL;
        if (valid) {
            boolean result = dao.createNewRecord(userID, password, firstName, lastName, email, phone, birthDate);
            if (result) {
                url = SUCCESS;
            }
        } else {
            Map session = ActionContext.getContext().getSession();
            session.put("INVALIDNEW", error);
        }

        return url;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

}
