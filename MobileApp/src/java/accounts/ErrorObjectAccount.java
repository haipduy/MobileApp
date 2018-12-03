/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accounts;

import java.io.Serializable;

/**
 *
 * @author PDH
 */
public class ErrorObjectAccount implements Serializable{
    private String usernameERR;
    private String passwordERR;
    private String userIDErr;
    private String duplicateIDErr;
    private String passwordErr;
    private String confirmErr;
    private String firstNameErr;
    private String lastNameErr;
    private String emailErr;
    private String phoneErr;
    private String birthDateErr;
    
    public ErrorObjectAccount() {
    }

    public String getUsernameERR() {
        return usernameERR;
    }

    public void setUsernameERR(String usernameERR) {
        this.usernameERR = usernameERR;
    }

    public String getPasswordERR() {
        return passwordERR;
    }

    public void setPasswordERR(String passwordERR) {
        this.passwordERR = passwordERR;
    }

    public String getUserIDErr() {
        return userIDErr;
    }

    public void setUserIDErr(String userIDErr) {
        this.userIDErr = userIDErr;
    }

    public String getPasswordErr() {
        return passwordErr;
    }

    public void setPasswordErr(String passwordErr) {
        this.passwordErr = passwordErr;
    }

    public String getConfirmErr() {
        return confirmErr;
    }

    public void setConfirmErr(String confirmErr) {
        this.confirmErr = confirmErr;
    }

    public String getFirstNameErr() {
        return firstNameErr;
    }

    public void setFirstNameErr(String firstNameErr) {
        this.firstNameErr = firstNameErr;
    }

    public String getLastNameErr() {
        return lastNameErr;
    }

    public void setLastNameErr(String lastNameErr) {
        this.lastNameErr = lastNameErr;
    }

    public String getEmailErr() {
        return emailErr;
    }

    public void setEmailErr(String emailErr) {
        this.emailErr = emailErr;
    }

    public String getPhoneErr() {
        return phoneErr;
    }

    public void setPhoneErr(String phoneErr) {
        this.phoneErr = phoneErr;
    }

    public String getBirthDateErr() {
        return birthDateErr;
    }

    public void setBirthDateErr(String birthDateErr) {
        this.birthDateErr = birthDateErr;
    }

    public String getDuplicateIDErr() {
        return duplicateIDErr;
    }

    public void setDuplicateIDErr(String duplicateIDErr) {
        this.duplicateIDErr = duplicateIDErr;
    }
    
    

    
    
}
