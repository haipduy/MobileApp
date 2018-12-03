/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package items;

import java.io.Serializable;

/**
 *
 * @author PDH
 */
public class Tbl_ItemDTO implements Serializable {

    private String itemID;
    private String itemName;
    private String image;
    private float price;
    private float priceSale;
    private int quantity;
    private String technology;
    private String announced;
    private String dimensions;
    private String sim;
    private String type;
    private String size;
    private String resolution;
    private String protection;
    private String OS;
    private String CPU;
    private String GPU;
    private String internal;
    private String cameraPri;
    private String cameraSec;
    private String battery;
    private String categoryID;
    private String categoryName;

    public Tbl_ItemDTO() {
    }

    public Tbl_ItemDTO(String itemID, String itemName, String image, float price, float priceSale, String categoryName) {
        this.itemID = itemID;
        this.itemName = itemName;
        this.image = image;
        this.price = price;
        this.priceSale = priceSale;
        this.categoryName = categoryName;
    }

    public Tbl_ItemDTO(String itemID, String itemName, String image, float price, float priceSale, int quantity, String technology, String announced, String dimensions, String sim, String type, String size, String resolution, String protection, String OS, String CPU, String GPU, String internal, String cameraPri, String cameraSec, String battery, String categoryID, String categoryName) {
        this.itemID = itemID;
        this.itemName = itemName;
        this.image = image;
        this.price = price;
        this.priceSale = priceSale;
        this.quantity = quantity;
        this.technology = technology;
        this.announced = announced;
        this.dimensions = dimensions;
        this.sim = sim;
        this.type = type;
        this.size = size;
        this.resolution = resolution;
        this.protection = protection;
        this.OS = OS;
        this.CPU = CPU;
        this.GPU = GPU;
        this.internal = internal;
        this.cameraPri = cameraPri;
        this.cameraSec = cameraSec;
        this.battery = battery;
        this.categoryID = categoryID;
        this.categoryName = categoryName;
    }

    //cart 
    public Tbl_ItemDTO(String itemID, String itemName, String image, float price, float priceSale) {
        this.itemID = itemID;
        this.itemName = itemName;
        this.image = image;
        this.price = price;
        this.priceSale = priceSale;
    }
    //get all product for admin

    public Tbl_ItemDTO(String itemID, String itemName, String image, float price, float priceSale, int quantity, String categoryName) {
        this.itemID = itemID;
        this.itemName = itemName;
        this.image = image;
        this.price = price;
        this.priceSale = priceSale;
        this.quantity = quantity;
        this.categoryName = categoryName;
    }
    

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
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

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(float priceSale) {
        this.priceSale = priceSale;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
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

    public String getOS() {
        return OS;
    }

    public void setOS(String OS) {
        this.OS = OS;
    }

    public String getCPU() {
        return CPU;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }

    public String getGPU() {
        return GPU;
    }

    public void setGPU(String GPU) {
        this.GPU = GPU;
    }

    public String getInternal() {
        return internal;
    }

    public void setInternal(String internal) {
        this.internal = internal;
    }

    public String getCameraPri() {
        return cameraPri;
    }

    public void setCameraPri(String cameraPri) {
        this.cameraPri = cameraPri;
    }

    public String getCameraSec() {
        return cameraSec;
    }

    public void setCameraSec(String cameraSec) {
        this.cameraSec = cameraSec;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Tbl_ItemDTO)) {
            return false;
        }
        Tbl_ItemDTO other = (Tbl_ItemDTO) obj;

        if ((this.itemID == null && other.itemID != null) || (this.itemID != null && !this.itemID.equals(other.itemID))) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (itemID != null ? itemID.hashCode() : 0);
        return hash;
    }

}
