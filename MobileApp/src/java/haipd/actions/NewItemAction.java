/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package haipd.actions;

import category.Tbl_CategoryDAO;
import com.opensymphony.xwork2.ActionContext;
import items.ErrorItemObject;
import items.Tbl_ItemDAO;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author PDH
 */
public class NewItemAction {

    private String itemID;
    private String category;
    private String itemName;
    private String image;
    private String price;
    private String priceSale;
    private String quantity;
    private String technology;
    private String announced;
    private String dimensions;
    private String sim;
    private String type;
    private String size;
    private String resolution;
    private String protection;
    private String os;
    private String cpu;
    private String gpu;
    private String internal;
    private String primary;
    private String secondary;
    private String battery;

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public NewItemAction() {
    }

    public String execute() throws Exception {
        ErrorItemObject errorItem = new ErrorItemObject();
        boolean valid = true;
        //valid
        if (itemID.length() == 0) {
            errorItem.setItemIDErr("Id cant't be blank");
            valid = false;
        }
        if (itemName.length() < 4) {
            errorItem.setItemNameErr("Name can't bbe less than 4 character");
            valid = false;
        }
        if (image.length() == 0) {
            errorItem.setImageErr("Please Choose Image.");
            valid = false;
        }
        if (!price.matches("[0-9]+")) {
            errorItem.setPriceErr("Price must be a number.");
            valid = false;
        }
        if (!priceSale.matches("[0-9]+")) {
            errorItem.setPriceSaleErr("Price Sale must be a number.");
            valid = false;
        }
        if (!quantity.matches("[0-9]+")) {
            errorItem.setQuantityErr("Quantity must be a number.");
            valid = false;
        }
        if (technology.length() == 0) {
            errorItem.setTechnologyErr("Technology  can't be  blank");
            valid = false;
        }
        if (announced.length() == 0) {
            errorItem.setAnnouncedErr("Announced can't be blank.");
            valid = false;
        }
        if (dimensions.length() == 0) {
            errorItem.setDimensionsErr("Dimension can't be  blank");
            valid = false;
        }
        if (sim.length() == 0) {
            errorItem.setSimErr("Sim can't be  blank");
            valid = false;
        }
        if (type.length() == 0) {
            errorItem.setTypeErr("Type can't be  blank");
            valid = false;
        }
        if (size.length() == 0) {
            errorItem.setSizeErr("Size can't be  blank");
            valid = false;
        }
        if (resolution.length() == 0) {
            errorItem.setImageErr("Please Choose Image.");
            valid = false;
        }
        if (protection.length() == 0) {
            errorItem.setProtectionErr("Oritection can't be  blank");
            valid = false;
        }
        if (os.length() == 0) {
            errorItem.setOsErr("OS can't be  blank");
            valid = false;
        }

        if (cpu.length() == 0) {
            errorItem.setCpuErr("Cpu");
            valid = false;
        }
        if (gpu.length() == 0) {
            errorItem.setGpuErr("GPU can't be  blank");
            valid = false;
        }
        if (internal.length() == 0) {
            errorItem.setInternalErr("Internal can't be  blank");
            valid = false;
        }
        if (primary.length() == 0) {
            errorItem.setPrimaryErr("Primary can't be  blank");
            valid = false;
        }
        if (secondary.length() == 0) {
            errorItem.setSecondaryErr("Secondary can't be  blank");
            valid = false;
        }
        if (battery.length() == 0) {
            errorItem.setBatteryErr("Battery can't be  blank");
            valid = false;
        }

        //valid ID
        Tbl_ItemDAO daoitem = new Tbl_ItemDAO();
        boolean checkItemID = daoitem.getItemID(itemID);
        if (checkItemID) {
            errorItem.setDuplicateIDErr("Item is exist!");
            valid = false;
        }
        //get categoryID
        Tbl_CategoryDAO daocategory = new Tbl_CategoryDAO();
        String categoryID = daocategory.getCategoryID(category);

        if (valid) {
            Tbl_ItemDAO dao = new Tbl_ItemDAO();
            boolean result = dao.insertProduct(itemID, categoryID, itemName, image, Float.parseFloat(price), Float.parseFloat(priceSale), Integer.parseInt(quantity), technology, announced, dimensions, sim, type, size, resolution, protection, os, cpu, gpu, internal, primary, secondary, battery);
            if (result) {
                return SUCCESS;
            }
        } else {
            Map session = ActionContext.getContext().getSession();
            session.put("ERRORNEWITEM", errorItem);
        }
        return FAIL;

    }

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(String priceSale) {
        this.priceSale = priceSale;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getTechnology() {
        return technology;
    }

    public void setTechnology(String technology) {
        this.technology = technology;
    }

    public String getAnnounced() {
        return announced;
    }

    public void setAnnounced(String announced) {
        this.announced = announced;
    }

    public String getDimensions() {
        return dimensions;
    }

    public void setDimensions(String dimensions) {
        this.dimensions = dimensions;
    }

    public String getSim() {
        return sim;
    }

    public void setSim(String sim) {
        this.sim = sim;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }

    public String getProtection() {
        return protection;
    }

    public void setProtection(String protection) {
        this.protection = protection;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getGpu() {
        return gpu;
    }

    public void setGpu(String gpu) {
        this.gpu = gpu;
    }

    public String getInternal() {
        return internal;
    }

    public void setInternal(String internal) {
        this.internal = internal;
    }

    public String getPrimary() {
        return primary;
    }

    public void setPrimary(String primary) {
        this.primary = primary;
    }

    public String getSecondary() {
        return secondary;
    }

    public void setSecondary(String secondary) {
        this.secondary = secondary;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }

}
