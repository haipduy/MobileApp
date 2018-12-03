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
public class RemoveCartAction {

    private String itemID;
    private final String SUCCESS = "success";

    public RemoveCartAction() {
    }

    public String execute() throws Exception {
        System.out.println("item id:" + itemID);
        Map session = ActionContext.getContext().getSession();
        CartObj cart = (CartObj) session.get("CART");
        if (cart != null) {
            cart.removeItemFromCart(itemID);
            session.put(itemID, cart);
        }
        return SUCCESS;
    }

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
    }


}
