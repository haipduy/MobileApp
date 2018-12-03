/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accounts;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 *
 * @author PDH
 */
public class Tbl_AccountDTO implements Serializable {

    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    private int phone;
    private Timestamp birthDate;
    private int role;
    private int status;
    private String roleName;

    public Tbl_AccountDTO() {
    }

    public Tbl_AccountDTO(String username, String password, String firstName, String roleName) {
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.roleName = roleName;
    }

    public Tbl_AccountDTO(String username, String password, String firstName, String lastName, String email, int phone, Timestamp birthDate, int status, String roleName) {
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.birthDate = birthDate;
        this.status = status;
        this.roleName = roleName;
    }
    public String hiddenPassword(){
        int len=password.length();
        String newPass="";
        for (int i=0; i<len; i++){
            newPass=newPass+"*";
        }
        return newPass;
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

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public Timestamp getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Timestamp birthDate) {
        this.birthDate = birthDate;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

   

}
