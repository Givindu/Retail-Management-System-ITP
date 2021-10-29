    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.retail.util;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import org.retail.model.items;

/**
 *
 * @author Givindu
 */
public class DBConnection {
 
    private Connection con;
    private Statement st;
    private ResultSet rs;
    private String url,user,pass;
    
    
    public DBConnection(){
        
       url="jdbc:mysql://localhost:3306/outlet";
        user="root";
        pass="";
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
                  con=DriverManager.getConnection(url,user,pass);
                  
                  
                  st=(Statement)con.createStatement();
                  } catch(Exception ex){
        
    }
    }
   
    public String DbInsert(String query) {
        String r = "Error";

        try {
            st.executeUpdate(query);
            r = "Success";
        } catch (SQLException e) {
            r = "" + e;
        }
        return r;
    }

public ArrayList<items> DbRetrieve(String query) throws ClassNotFoundException{
    
    ArrayList<items> list = new ArrayList<items>();
    try{
        ResultSet resultset = st.executeQuery(query);
        
                while(resultset.next()){
                    items item = new items();
                    item.setItemNo(resultset.getString(1));
                    item.setItemName(resultset.getString(2));
                    item.setPrice(Double.parseDouble(resultset.getString(3)));
                    item.setQuantity(Double.parseDouble(resultset.getString(4)));
                    item.setStatus(resultset.getString(5));
                    item.setExpDate(resultset.getString(6));
                    System.out.println("in");
                    System.out.println(item.getItemName());
                    System.out.println(item.getItemNo());
                    System.out.println(item.getPrice());
                    System.out.println(item.getQuantity());
                    list.add(item);
                    
                }
    }catch(SQLException ex){
      
        System.out.println(ex);
        
    }
    return list;
}







public ArrayList<items> DbWasteRetrieve(String query) throws ClassNotFoundException{
    
    ArrayList<items> list = new ArrayList<items>();
    try{
        ResultSet resultset = st.executeQuery(query);
        
                while(resultset.next()){
                    items item = new items();
                    item.setItemNo(resultset.getString(1));
                    item.setItemName(resultset.getString(2));
                    item.setPrice(Double.parseDouble(resultset.getString(3)));
                    item.setQuantity(Double.parseDouble(resultset.getString(4)));
                   
                    System.out.println("in");
                    System.out.println(item.getItemName());
                    System.out.println(item.getItemNo());
                    System.out.println(item.getPrice());
                    System.out.println(item.getQuantity());
                    list.add(item);
                    
                }
    }catch(SQLException ex){
      
        System.out.println(ex);
        
    }
    return list;
}







public ArrayList<items> DbExpRetrieve(String query) throws ClassNotFoundException{
    
    ArrayList<items> list = new ArrayList<items>();
    try{
        ResultSet resultset = st.executeQuery(query);
        
                while(resultset.next()){
                    items item = new items();
                    item.setItemNo(resultset.getString(1));
                    item.setItemName(resultset.getString(2));                    
                    item.setQuantity(Double.parseDouble(resultset.getString(3)));
                   
                    
                    list.add(item);
                    
                }
    }catch(SQLException ex){
      
        System.out.println(ex);
        
    }
    return list;
}
    
    
   
}
    

