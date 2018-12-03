/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import ctdh.Tbl_CtdhDAO;
import ctdh.Tbl_CtdhDTO;
import java.util.List;

/**
 *
 * @author PDH
 */
public class DetailOrderAction {
    private String hdID;
    private final String SUCCESS="success";
    private List<Tbl_CtdhDTO> listCtdh;
    public DetailOrderAction() {
    }
    
    public String execute() throws Exception {
        Tbl_CtdhDAO dao= new Tbl_CtdhDAO();
        dao.getRecordCtdh(hdID);
        listCtdh=dao.getListCtdh();
        return SUCCESS;
    }

    public String getHdID() {
        return hdID;
    }

    public void setHdID(String hdID) {
        this.hdID = hdID;
    }

    public List<Tbl_CtdhDTO> getListCtdh() {
        return listCtdh;
    }

    public void setListCtdh(List<Tbl_CtdhDTO> listCtdh) {
        this.listCtdh = listCtdh;
    }
    
    
    
}
