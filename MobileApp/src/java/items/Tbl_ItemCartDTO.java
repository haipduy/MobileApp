/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package items;
 
import java.io.Serializable;

/**
 *
 * @author PDH
 */
public class Tbl_ItemCartDTO implements Serializable {

    private String itemID;
    private String itemName;
    private String image;
    private int quantity;
    private float priceSale;

    public Tbl_ItemCartDTO() {
    }

    public Tbl_ItemCartDTO(String itemID, String itemName, String image, int quantity, float priceSale) {
        this.itemID = itemID;
        this.itemName = itemName;
        this.image = image;
        this.quantity = quantity;
        this.priceSale = priceSale;
    }

    @Override
    public String toString() {
        return "Tbl_ItemCartDTO{" + "itemID=" + itemID + ", itemName=" + itemName + ", image=" + image + ", quantity=" + quantity + ", priceSale=" + priceSale + '}';
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

    public float getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(float priceSale) {
        this.priceSale = priceSale;
    }
    
    
}
