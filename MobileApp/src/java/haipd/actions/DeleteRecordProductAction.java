/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import items.Tbl_ItemDAO;

/**
 *
 * @author PDH
 */
public class DeleteRecordProductAction {

    private String itemID;
    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public DeleteRecordProductAction() {
    }

    public String execute() throws Exception {
        Tbl_ItemDAO dao = new Tbl_ItemDAO();
        String url=FAIL;
        boolean result = dao.updateStatusRecord(itemID);
        if (result) {
            url= SUCCESS;
        }
        return url;
    }

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
    }

}
