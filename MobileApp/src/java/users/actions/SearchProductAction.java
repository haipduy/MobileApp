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
public class SearchProductAction {
    private String searchValue;
    private List<Tbl_ItemDTO> listsearch;
    private final String SUCCESS="success";
    public SearchProductAction() {
    }
    
    public String execute() throws Exception {
        Tbl_ItemDAO dao= new Tbl_ItemDAO();
        System.out.println("search Value: "+searchValue);
        dao.searchByFullname(searchValue);
        listsearch=dao.getListsearch();
        return SUCCESS;
    }

    public String getSearchValue() {
        return searchValue;
    }

    public void setSearchValue(String searchValue) {
        this.searchValue = searchValue;
    }

    public List<Tbl_ItemDTO> getListsearch() {
        return listsearch;
    }

    public void setListsearch(List<Tbl_ItemDTO> listsearch) {
        this.listsearch = listsearch;
    }
    
    
}
