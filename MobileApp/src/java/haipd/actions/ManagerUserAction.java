/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;


import accounts.Tbl_AccountDAO;
import accounts.Tbl_AccountDTO;
import java.util.List;

/**
 *
 * @author PDH
 */
public class ManagerUserAction {

    private final String SUCCESS = "success";
    private List<Tbl_AccountDTO> list;

    public ManagerUserAction() {
    }

    public String execute() throws Exception {
        Tbl_AccountDAO dao = new Tbl_AccountDAO();
        dao.showAllUser();
        list = dao.getList();
        return SUCCESS;
    }

    public List<Tbl_AccountDTO> getList() {
        return list;
    }

    public void setList(List<Tbl_AccountDTO> list) {
        this.list = list;
    }

}
