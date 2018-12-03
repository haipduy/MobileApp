/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hoadons;

import java.io.Serializable;

/**
 *
 * @author PDH
 */
public class Tbl_HdDTO implements Serializable {

    private String hdID;
    private String userID;
    private float total;
    private String fullName;
    private int phone;
    private String email;
    private String address;
    private String notes;
    private int status;

    public Tbl_HdDTO() {
    }

    public Tbl_HdDTO(String hdID, String userID, float total, String fullName, int phone, String email, String address, String notes, int status) {
        this.hdID = hdID;
        this.userID = userID;
        this.total = total;
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.notes = notes;
        this.status = status;
    }

    public Tbl_HdDTO(String userID, float total, String fullName, int phone, String email, String address, String notes, int status) {
        this.userID = userID;
        this.total = total;
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.notes = notes;
        this.status = status;
    }

    public String getHdID() {
        return hdID;
    }

    public void setHdID(String hdID) {
        this.hdID = hdID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
