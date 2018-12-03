/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ctdh;

import java.io.Serializable;

/**
 *
 * @author PDH
 */
public class Tbl_CtdhDTO implements Serializable{
    private String ctdhID;
    private String hdID;
    private String itemID;
    private String itemName;
    private String image;
    private int quantity;
    private float price;

    public Tbl_CtdhDTO() {
    }

    public Tbl_CtdhDTO(String ctdhID, String hdID, String itemID, String itemName, String image, int quantity, float price) {
        this.ctdhID = ctdhID;
        this.hdID = hdID;
        this.itemID = itemID;
        this.itemName = itemName;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
    }

    public Tbl_CtdhDTO(String hdID, String itemID, String itemName, String image, int quantity, float price) {
        this.hdID = hdID;
        this.itemID = itemID;
        this.itemName = itemName;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
    }
    

    public String getCtdhID() {
        return ctdhID;
    }

    public void setCtdhID(String ctdhID) {
        this.ctdhID = ctdhID;
    }

    public String getHdID() {
        return hdID;
    }

    public void setHdID(String hdID) {
        this.hdID = hdID;
    }

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
    
}
