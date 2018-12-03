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
public class ManagerProductAction {

    private final String SUCCESS = "success";
    private List<Tbl_ItemDTO> listproduct;

    public ManagerProductAction() {
    }

    public String execute() throws Exception {
        Tbl_ItemDAO dao = new Tbl_ItemDAO();
        dao.getAllProduct();
        listproduct = dao.getListproduct();
        return SUCCESS;
    }

    public List<Tbl_ItemDTO> getListproduct() {
        return listproduct;
    }

    public void setListproduct(List<Tbl_ItemDTO> listproduct) {
        this.listproduct = listproduct;
    }

}
