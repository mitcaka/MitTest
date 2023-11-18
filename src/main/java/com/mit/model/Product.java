package com.mit.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
    @Id
    private String productID;
    private String categoryID;
    private String productName;
    private String description;
    private int price;
    public Product() {
    }

    public Product(String productID, String categoryID, String productName, String description, int price) {
        this.productID = productID;
        this.categoryID = categoryID;
        this.productName = productName;
        this.description = description;
        this.price = price;
    }

    public String getProductID() {
        return productID;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public String getProductName() {
        return productName;
    }

    public String getDescription() {
        return description;
    }

    public int getPrice() {
        return price;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    public String getFormattedPrice() {
        return String.format("$ %.2f", (price * 100.00) / 100.00);
    }

}
