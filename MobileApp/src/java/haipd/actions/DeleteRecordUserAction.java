/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import accounts.Tbl_AccountDAO;

/**
 *
 * @author PDH
 */
public class DeleteRecordUserAction {
    private String pk;
    private final String SUCCESS="success";
    public DeleteRecordUserAction() {
    }
    
    public String execute() throws Exception {
        Tbl_AccountDAO dao = new Tbl_AccountDAO();
        boolean result= dao.deleteRecordUser(pk);
        return SUCCESS;
    }

    public String getPk() {
        return pk;
    }

    public void setPk(String pk) {
        this.pk = pk;
    }
    
    
}
