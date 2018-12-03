/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import hoadons.Tbl_HdDAO;
import hoadons.Tbl_HdDTO;
import java.util.List;

/**
 *
 * @author PDH
 */
public class ManagerOrderAction {

    private final String SUCCESS = "success";
    private List<Tbl_HdDTO> listOrder;

    public ManagerOrderAction() {
    }

    public String execute() throws Exception {
        Tbl_HdDAO dao = new Tbl_HdDAO();
        dao.getAllOrder();
        listOrder = dao.getListOrder();
        return SUCCESS;
    }

    public List<Tbl_HdDTO> getListOrder() {
        return listOrder;
    }

    public void setListOrder(List<Tbl_HdDTO> listOrder) {
        this.listOrder = listOrder;
    }

}
