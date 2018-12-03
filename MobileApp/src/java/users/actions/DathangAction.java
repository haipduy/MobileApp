/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users.actions;

import com.opensymphony.xwork2.ActionContext;
import items.CartObj;
import java.util.Map;

/**
 *
 * @author PDH
 */
public class DathangAction {
    private String[] txtamount;
    private final String SUCCESS="success";
    public DathangAction() {
    }
    
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String[] getTxtamount() {
        return txtamount;
    }

    public void setTxtamount(String[] txtamount) {
        this.txtamount = txtamount;
    }

       
}
