/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package items;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author PDH
 */
public class CartObj implements Serializable {

    String customerID;
    Map<String, Tbl_ItemCartDTO> items;

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public Map<String, Tbl_ItemCartDTO> getItems() {
        return items;
    }

    public void setItems(Map<String, Tbl_ItemCartDTO> items) {
        this.items = items;
    }

    public void addToCart(String itemID, float price) {
        if (this.items == null) {
            this.items = new HashMap<>();
        }
        Tbl_ItemCartDTO dto = null;
        if (this.items.containsKey(itemID)) {
            dto = items.get(itemID);
            dto.setQuantity(dto.getQuantity() + 1);
            dto.setPriceSale(price);
        } else {
            dto = new Tbl_ItemCartDTO();
            dto.setItemID(itemID);
            Tbl_ItemDAO dao = new Tbl_ItemDAO();
            String name = dao.getItemName(itemID);
            dto.setItemName(name);
            String image = dao.getImage(itemID);
            dto.setImage(image);
            dto.setQuantity(1);
            dto.setPriceSale(price);
        }
        this.items.put(itemID, dto);
    }

    public float total() {
        float result = 0;
        for (Tbl_ItemCartDTO dto : items.values()) {
            result += dto.getPriceSale() * dto.getQuantity();
        }
        return result;
    }

    public void removeItemFromCart(String itemID) {
        if (this.items == null) {
            return;
        }

        if (this.items.containsKey(itemID)) {
            this.items.remove(itemID);
            if (this.items.isEmpty()) {
                this.items = null;
            }
        }
    }

    public void updateQuantity(String itemID, int quantity) {
        if (this.items == null) {
            return;
        }
        if (this.items.containsKey(itemID)) {
            Tbl_ItemCartDTO dto = this.items.get(itemID);
            dto.setQuantity(quantity);
            this.items.put(itemID, dto);
        }
    }

    

   


}
