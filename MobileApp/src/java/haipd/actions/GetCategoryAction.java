/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import category.Tbl_CategoryDAO;
import category.Tbl_CategoryDTO;
import java.util.List;
import java.util.Map;

/**
 *
 * @author PDH
 */
public class GetCategoryAction {

    private final String SUCCESS = "success";
    private List<Tbl_CategoryDTO>categoryList;

    public GetCategoryAction() {
    }

    public String execute() throws Exception {
        Tbl_CategoryDAO dao = new Tbl_CategoryDAO();
        dao.getAllCategory();
        categoryList=dao.getCategoryList();
        return SUCCESS;
    }

    public List<Tbl_CategoryDTO> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Tbl_CategoryDTO> categoryList) {
        this.categoryList = categoryList;
    }

    
}
