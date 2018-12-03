/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users.actions;

import com.opensymphony.xwork2.ActionContext;
import items.CartObj;
import items.Tbl_ItemCartDTO;
import items.Tbl_ItemDAO;
import java.util.Map;

/**
 *
 * @author PDH
 */
public class AddToCartUserAction {

    private String item;
    private final String SUCCESS = "success";

    public AddToCartUserAction() {
    }

    public String execute() throws Exception {
        Tbl_ItemDAO dao = new Tbl_ItemDAO();
        int quantity = dao.getQuantity(item);
        int status =dao.getStatus(item);
        if (quantity > 0 && status >0) {
            Map session = ActionContext.getContext().getSession();
            CartObj cart = (CartObj) session.get("CART");
            if (cart == null) {
                cart = new CartObj();
            }
            float price = dao.getPriceSale(item);
            cart.addToCart(item, price);
            session.put("CART", cart);
        }
        return SUCCESS;

    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

}
