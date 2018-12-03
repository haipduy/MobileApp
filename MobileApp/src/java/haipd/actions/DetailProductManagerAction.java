/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import items.Tbl_ItemDAO;
import items.Tbl_ItemDTO;
import java.util.List;

/**
 *
 * @author PDH
 */
public class DetailProductManagerAction {
    private String itemID;
    private final String SUCCESS = "success";
    private List<Tbl_ItemDTO> listdetail;
    public DetailProductManagerAction() {
    }
    
    public String execute() throws Exception {
        Tbl_ItemDAO itemdao = new Tbl_ItemDAO();
        itemdao.viewDetailProduct(itemID);
        listdetail = itemdao.getListdetail();
        return SUCCESS;

    }

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
    }

    public List<Tbl_ItemDTO> getListdetail() {
        return listdetail;
    }

    public void setListdetail(List<Tbl_ItemDTO> listdetail) {
        this.listdetail = listdetail;
    }
    
    
}
