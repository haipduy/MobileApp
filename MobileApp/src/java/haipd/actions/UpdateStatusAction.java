/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import hoadons.Tbl_HdDAO;

/**
 *
 * @author PDH
 */
public class UpdateStatusAction {
    private String hdID;
    private final String SUCCESS="success";
    private final String FAIL="fail";
    public UpdateStatusAction() {
    }
    
    public String execute() throws Exception {
        String url=FAIL;
        Tbl_HdDAO dao= new Tbl_HdDAO();
        boolean result= dao.updateStatus(hdID);
        if(result){
            url= SUCCESS;
        }
        return url;
    }

    public String getHdID() {
        return hdID;
    }

    public void setHdID(String hdID) {
        this.hdID = hdID;
    }
    
}
