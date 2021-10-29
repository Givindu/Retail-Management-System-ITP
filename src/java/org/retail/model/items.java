/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.retail.model;

import java.util.ArrayList;
import java.sql.Date;
import java.util.Calendar;
import java.util.UUID;
import org.retail.util.DBConnection;

/**
 *
 * @author Givindu
 */
public class items {

    private  String ItemNo;
    private  String ItemName;
    private  double quantity;
    private  double price;
    private  String status;
    private  DBConnection db;
    private String ExpDate;
    private double qty;
    
    

    public items() throws ClassNotFoundException {
        db = new DBConnection();
    }

    /**
     * @return the ItemNo
     */
    public String getItemNo() {
        return ItemNo;
    }

    /**
     * @param ItemNo the ItemNo to set
     */
    public void setItemNo(String ItemNo) {
        this.ItemNo = ItemNo;
    }

    /**
     * @return the ItemName
     */
    public String getItemName() {
        return ItemName;
    }

    /**
     * @param ItemName the ItemName to set
     */
    public void setItemName(String ItemName) {
        this.ItemName = ItemName;
    }

    /**
     * @return the quantity
     */
    public double getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the db
     */
    public DBConnection getDb() {
        return db;
    }

    /**
     * @param db the db to set
     */
    public void setDb(DBConnection db) {
        this.db = db;
    }
    
    
    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    
    /**
     * @return the ExpDate
     */
    public String getExpDate() {
        return ExpDate;
    }

    /**
     * @param ExpDate the ExpDate to set
     */
    public void setExpDate(String ExpDate) {
        this.ExpDate = ExpDate;
    }
    


    
    
        

    public String insertdb() {
        String id = UUID.randomUUID().toString();
        String re = "Error";
        String le = level(quantity);

        String query = "INSERT INTO `items`(`Item_Number`, `Item_Name`, `Quantity`, `Level`) VALUES('" + ItemNo + "','" + ItemName + "','" + quantity + "','" + le + "')";
        re = db.DbInsert(query);
        if (re.startsWith("java.sql.SQLIntergrityConstraintViolationException:")) {
            re = "taken";
        } else if (re.equals("Success")) {
            re = "id" + id;
        }
        return re;
    }
    
    
    
    
    
    
    
    public String insertwastedb() {
        String id = UUID.randomUUID().toString();
        String re = "Error";

        String query = "INSERT INTO `waste`(`Item Number`, `Item Name`, `Price`, `Quantity`) VALUES('" + ItemNo + "','" + ItemName + "','" + price + "','" + quantity + "')";
        re = db.DbInsert(query);
        if (re.startsWith("java.sql.SQLIntergrityConstraintViolationException:")) {
            re = "taken";
        } else if (re.equals("Success")) {
            re = "id" + id;
        }
        return re;
    }
    
    
    
    public String insertlowdb() {
        String id = UUID.randomUUID().toString();
        String re = "Error";

        String query = "INSERT INTO `lowitems`(`Item Number`, `Item Name`, `Quantity`, `Level`) VALUES('" + ItemNo + "','" + ItemName + "','" + (20-quantity) + "','" + status + "')";
        re = db.DbInsert(query);
        if (re.startsWith("java.sql.SQLIntergrityConstraintViolationException:")) {
            re = "taken";
        } else if (re.equals("Success")) {
            re = "id" + id;
        }
        return re;
    }
    
    
    
     public String insertexpdb() {
        String id = UUID.randomUUID().toString();
        String re = "Error";

        String query = "INSERT INTO `expitems`(`Item_Number`, `Item_Name`, `Quantity`) VALUES('" + ItemNo + "','" + ItemName + "','" + quantity + "')";
        re = db.DbInsert(query);
        if (re.startsWith("java.sql.SQLIntergrityConstraintViolationException:")) {
            re = "taken";
        } else if (re.equals("Success")) {
            re = "id" + id;
        }
        return re;
    }
     
     
     
    
    
    

        public ArrayList<items> readAll() throws ClassNotFoundException {
        
        ArrayList<items> list = new ArrayList<items>();
        String id = UUID.randomUUID().toString();
        
        String query = "SELECT * FROM `items`";
        list = db.DbRetrieve(query);
        for(items i:list){
            System.out.println(i.getItemNo());
                    
        }
        
        return list;
    }
        
        
         public ArrayList<items> readVariation() throws ClassNotFoundException {
        
        ArrayList<items> list5 = new ArrayList<items>();
        String id = UUID.randomUUID().toString();
        
        String query = "SELECT * FROM `items`";
        list5 = db.DbRetrieve(query);
        for(items i:list5){
            System.out.println(i.getItemNo());
                    
        }
        
        return list5;
    }
         
         
         
         
//          public ArrayList<items> readExp() throws ClassNotFoundException {
//        
//        ArrayList<items> list6 = new ArrayList<items>();
//        String id = UUID.randomUUID().toString();
//        
//        String query = "SELECT * FROM `items`";
//        list6 = db.DbRetrieve(query);
//        for(items i:list6){
//            System.out.println(i.getItemNo());
//                    
//        }
//        
//        return list6;
//    }
         
        
        
        public ArrayList<items> readAllWaste() throws ClassNotFoundException {
        
        ArrayList<items> list2 = new ArrayList<items>();
        String id = UUID.randomUUID().toString();
        System.out.println("helloooooooooooooooooooo");
        String query = "SELECT * FROM `waste`";
        list2 = db.DbWasteRetrieve(query);
        for(items i:list2){
            System.out.println(i.getItemNo());
                    
        }
        
        return list2;
    }
        
        
        
        
        
        public ArrayList<items> readLow() throws ClassNotFoundException {
        
        ArrayList<items> list2 = new ArrayList<items>();
        String id = UUID.randomUUID().toString();
        
        String query = "SELECT * FROM `items` WHERE Level = 'Low'";
        list2 = db.DbRetrieve(query);
        for(items i:list2){
            System.out.println(i.getItemNo());
                    
        }
        
        return list2;
    }
        
        
        
        
         public ArrayList<items> readExp() throws ClassNotFoundException {
        
        ArrayList<items> list6 = new ArrayList<items>();
        String id = UUID.randomUUID().toString();
        
        String query = "SELECT items.Item_Number, items.Item_Name, items.Quantity FROM `items` WHERE items.Exp_Date < CURDATE()";
        list6 = db.DbExpRetrieve(query);
        for(items i:list6){
            System.out.println(i.getItemNo());
                    
        }
        
        return list6;
    }
        
        
        
        
        
        
        
        
        public String update(){
        
        String id=UUID.randomUUID().toString();
        String re="Error";
        String le = level(quantity);
        
        
        String query = "UPDATE `items` SET `Item_Name`='"+ItemName+"',`Quantity`='"+quantity+"',`Level`= '"+ le +"' WHERE `Item_Number`='"+ItemNo+"'";
        
        re=db.DbInsert(query);
       
        if(re.startsWith("java.sql.SQLIntegrityConstraintViolationException:"))
            re="taken";
        else if(re.equals("Success")){
            re="id"+id;
        }
        
     return re;
        
    }
        
        
        
        
        
         public String updateWaste(){
        
        String id=UUID.randomUUID().toString();
        String re="Error";
        String le = level(qty);
        
        
        String query = "UPDATE `items` SET `Quantity`=`Quantity`-'"+quantity+"',`Level`= '"+le+"' WHERE `Item_Number`='"+ItemNo+"'";
        
        re=db.DbInsert(query);
       
        if(re.startsWith("java.sql.SQLIntegrityConstraintViolationException:"))
            re="taken";
        else if(re.equals("Success")){
            re="id"+id;
        }
        
     return re;
        
    }
        
        
        public String delete(){
        
        String id=UUID.randomUUID().toString();
        String re="Error";
        
        
        String query = "DELETE FROM `items` WHERE `Item_Number`='"+ItemNo+"'";
        
        re=db.DbInsert(query);
       System.out.println("goooooo");
        if(re.startsWith("java.sql.SQLIntegrityConstraintViolationException:"))
            re="taken";
        else if(re.equals("Success")){
            re="id"+id;
        }
        
     return re;
        
    }
        
        
        
        
        
        public String deleteWaste(){
        
        String id=UUID.randomUUID().toString();
        String re="Error";
        
        
        String query = "DELETE FROM `waste` WHERE `Item Number`='"+ItemNo+"'";
        
        re=db.DbInsert(query);
       
        if(re.startsWith("java.sql.SQLIntegrityConstraintViolationException:"))
            re="taken";
        else if(re.equals("Success")){
            re="id"+id;
        }
        
     return re;
        
    }
        
        
        public String level(double quantity){           
           
           if(quantity <= 20){
               this.status = "Low";
           }
           else{
               this.status= "Normal";
           }
           return this.status;
        }
         
        
          
       public ArrayList<items> GetAllLow() throws ClassNotFoundException {
        
        ArrayList<items> list = new ArrayList<items>();
        String id = UUID.randomUUID().toString();
        
        String query = "SELECT * FROM `items`";
        list = db.DbRetrieve(query);
        for(items i:list){
            System.out.println(i.getItemNo());
            
                    
        }
        
        return list;
    }

       
       
       
       
       
       
       
//       
//       public ArrayList<items> readAllExp() throws ClassNotFoundException {
//        
//        ArrayList<items> list = new ArrayList<items>();
//        String id = UUID.randomUUID().toString();
//        
//        String query = "SELECT * FROM `items`";
//        list = db.DbRetrieve(query);
//        Date nowDate = new Date(Calendar.getInstance().getTime().getTime());
//        long nowDateInMilis = nowDate.getTime();
//        
//        for(items i:list){
//            System.out.println(i.getItemNo());
//            Date expDate = new Date(i.getExpDate().getTime()); 
//            if(expDate.getTime() > nowDateInMilis){
//             list.add(i);
//            }
//        }
//        
//        return list;
//    }
//
//    

    /**
     * @return the qty
     */
    public double getQty() {
        return qty;
    }

    /**
     * @param qty the qty to set
     */
    public void setQty(double qty) {
        this.qty = qty;
    }



       
}
