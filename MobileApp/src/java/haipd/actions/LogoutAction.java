/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import com.opensymphony.xwork2.ActionContext;
import items.CartObj;
import java.util.Map;

/**
 *
 * @author PDH
 */
public class LogoutAction {

    private static final String SUCCESS = "success";
    private final String FAIL = "fail";

    public LogoutAction() {
    }

    public String execute() throws Exception {

        String url = FAIL;
        ActionContext.getContext().getSession();
        Map session = ActionContext.getContext().getSession();
        session.remove("USER");
        if (session.get("USER") == null) {
            return SUCCESS;
        }
        return url;

    }

}
