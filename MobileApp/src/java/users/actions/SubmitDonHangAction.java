/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users.actions;

import com.opensymphony.xwork2.ActionContext;
import ctdh.Tbl_CtdhDAO;
import hoadons.HoadonError;
import hoadons.Tbl_HdDAO;
import items.CartObj;
import items.Tbl_ItemCartDTO;
import items.Tbl_ItemDAO;
import java.util.Map;

/**
 *
 * @author PDH
 */
public class SubmitDonHangAction {

    private String userID;
    private String total;
    private String fullname;
    private String phone;
    private String email;
    private String address;
    private String notes;

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public SubmitDonHangAction() {
    }

    public String execute() throws Exception {
        HoadonError err = new HoadonError();
        boolean valid = true;
        if (fullname.length() < 4) {
            err.setFullNameErr("Full name can't be less than 4 character");
            valid = false;
        }
        if (!phone.matches("[0-9]+")) {
            err.setPhoneErr("Ivalid Phone!");
            valid = false;
        }
        if (address.length() < 3) {
            err.setAddressErr("Address can'r be less than 3 character");
            valid = false;
        }
        if (email.length() == 0) {
            err.setEmailErr("Email can't be blank!");
            valid = false;
        }
        String url = FAIL;
        Map session = ActionContext.getContext().getSession();
        if (valid) {
            CartObj cart = (CartObj) session.get("CART");
            Tbl_HdDAO dao = new Tbl_HdDAO();
            float ftotal = Float.parseFloat(total);
            int iphone = Integer.parseInt(phone);
            boolean result = dao.insertDH(userID, ftotal, fullname, iphone, email, address, notes);
            if (result) {
                String hdID = dao.gethdIDFromHdDb(userID, ftotal, fullname, iphone, email, address, notes);
                Tbl_CtdhDAO daoctdh = new Tbl_CtdhDAO();
                for (Map.Entry<String, Tbl_ItemCartDTO> entry : cart.getItems().entrySet()) {
                    String key = entry.getKey();
                    Tbl_ItemCartDTO value = entry.getValue();
                    String itemID = value.getItemID();
                    String itemName = value.getItemName();
                    String image = value.getImage();
                    int quantity = value.getQuantity();
                    float priceSale = value.getPriceSale();
                    boolean resultInsert = daoctdh.insertCtdh(hdID, itemID, itemName, image, quantity, priceSale);
                    if (resultInsert) {
                        //update quantity tblItem
                        Tbl_ItemDAO daoitem=new Tbl_ItemDAO();
                        int oldQuantity=daoitem.getQuantity(itemID);
                        int newQuantity= oldQuantity-quantity;
                        daoitem.updateQuantity(newQuantity, itemID);
                        url = SUCCESS;
                    }
                }
            }
            cart.getItems().clear();
        } else {
            session.put("DATHANG", err);
        }

        return url;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
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

}
