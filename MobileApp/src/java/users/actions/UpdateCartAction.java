/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users.actions;

import com.opensymphony.xwork2.ActionContext;
import items.CartObj;
import items.Tbl_ItemDAO;
import items.Tbl_ItemDTO;
import java.util.Map;

/**
 *
 * @author PDH
 */
public class UpdateCartAction {

    private String itemID;
    private String quantity;

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public UpdateCartAction() {
    }

    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        CartObj cart = (CartObj) session.get("CART");
        String url = FAIL;
        int newQuantity = Integer.parseInt(quantity);
        if (cart != null) {
            Tbl_ItemDAO dao = new Tbl_ItemDAO();
            int getQuantity = dao.getQuantity(itemID);
            if (getQuantity > newQuantity) {
                cart.updateQuantity(itemID, newQuantity);
                session.put(itemID, newQuantity);
            }

            return SUCCESS;
        }
        return url;
    }

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

}
