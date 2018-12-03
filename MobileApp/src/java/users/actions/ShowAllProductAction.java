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
public class ShowAllProductAction {
    
    private final String SUCCESS="success";
    private List<Tbl_ItemDTO> list;
    
    public ShowAllProductAction() {
    }
    
    public String execute() throws Exception {
        Tbl_ItemDAO dao= new Tbl_ItemDAO();
        dao.showAllProduct();
        list=dao.getList();
        return SUCCESS;
    }

    public List<Tbl_ItemDTO> getList() {
        return list;
    }

    public void setList(List<Tbl_ItemDTO> list) {
        this.list = list;
    }

    
    
    
}
