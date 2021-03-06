/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author Arces
 */
public class Warehouse implements Serializable {
    private Integer warehouseID;
    private String name, location;
    private ArrayList<Item> itemList;

    /**
     * @return the warehouseID
     */
    public int getWarehouseID() {
        return warehouseID;
    }

    /**
     * @param warehouseID the warehouseID to set
     */
    public void setWarehouseID(int warehouseID) {
        this.warehouseID = warehouseID;
    }

    /**
     * @return the location
     */
    public String getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the itemList
     */
    public ArrayList<Item> getItemList() {
        return itemList;
    }

    /**
     * @param itemList the itemList to set
     */
    public void setItemList(ArrayList<Item> itemList) {
        this.itemList = itemList;
    }

    public void addItem(Item item) {
        itemList.add(item);
    }

    public Item getItem(int itemID) {
        boolean isFound = false;
        Item item = null;
        for (int i = 0; i < itemList.size() && !isFound; i++) {
            if (itemList.get(i).getItemID() == itemID) {
                item = itemList.get(i);
                isFound = true;
            }
        }
        return item;
    }
}
