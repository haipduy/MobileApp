/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users.actions;

import items.Tbl_ItemDAO;
import items.Tbl_ItemDTO;
import java.util.List;

/**
 *
 * @author PDH
 */
public class ViewDetailProductAction {

    private String pk;

    private final String SUCCESS = "success";

    private List<Tbl_ItemDTO> listdetail;

    public ViewDetailProductAction() {
    }

    public String execute() throws Exception {
        Tbl_ItemDAO itemdao = new Tbl_ItemDAO();
        
        itemdao.viewDetailProduct(pk);
        
        listdetail = itemdao.getListdetail();
        
        return SUCCESS;

    }

    public String getPk() {
        return pk;
    }

    public void setPk(String pk) {
        this.pk = pk;
    }

    public List<Tbl_ItemDTO> getListdetail() {
        return listdetail;
    }

    public void setListdetail(List<Tbl_ItemDTO> listdetail) {
        this.listdetail = listdetail;
    }

}
