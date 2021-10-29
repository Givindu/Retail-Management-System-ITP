<%-- 
    Document   : Items
    Created on : Aug 17, 2019, 11:35:52 AM
    Author     : Givindu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="org.retail.model.items"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<link rel = "stylesheet" type = "text/css" href = "style.css" />


<!-- footer -->


<!-- End of footer -->





<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}


#items {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#items td, #items th {
  border: 1px solid #ddd;
  padding: 4px;
}

#items tr:nth-child(even){background-color: #f2f2f2;}

#items tr:hover {background-color: #ddd;}

#items th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #4CAF50;
  color: white;
}


/* items */
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #2CA03F;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 18px;
  padding: 18px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}



 .button1 {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 6px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}


.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */ 
.button4 {background-color: #e7e7e7; color: black;} /* Gray */ 
.button5 {background-color: #555555;} /* Black */
.button6 {background-color: #FFFF00;}         
        
</style>






<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-green w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <span class="w3-bar-item w3-right">Logout</span>
  <span class="w3-bar-item w3-right">Help</span>
  <span class="w3-bar-item w3-right">Support</span>
  <span class="w3-bar-item w3-right"><a href="index.jsp">Home</a></span>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
 
  
    <div class="w3-container w3-row">
    <div>    
      <img src="w3images/aaa.png" style="width:280px">
    </div>
   
    </div>
  <div class="w3-container">
      
      
    <h1>Inventory Management</h1>
    
    
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <h4><a href="Dashboard.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Dashboard</a></h4>
    <h4><a href="Items.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-cubes"></i>  Items</a></h4>
    <h4><a href="Reports.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-file-pdf-o"></i>  Reports</a><br><br></h4>
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
      <h1><b><i class="fa fa-dashboard"></i> Manage Items</b></h1><br><br><br>
  </header>

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <form action="inventory" method="POST" class="w3-container">
 <!-- <div style="position: relative; left: 30px;">
     
      
      <h4>
          Item Number : 
          <div class="textinput" <input type="text" name="ItemNO" class="textinput"/>
          </div>
      </h4>
 
  
      <h4>
          Item Name : <input type="text" name="ItemName"/>
      </h4>
 
  
      <h4>
          Price Rs. : <input type="text" name="Price"/>
      </h4>
 
      
      <h4>
          Quantity Kg. : <input type="text" name="Quantity"/>
      </h4>
      
      
  </div> 
  -->
  
  <p>
      
      <label><h4>Item Number: </h4></label></p>
  <input class="w3-input" type="text" name="ItemNO" maxlength="4" pattern="[A-Z][0-9]{3}" 
         title= "First value must be Uppercase letter and rest values must be numbers. ex: A100" required>
  <p><br>     
          
          <label><h4>Item Name: </h4></label></p>
  <input class="w3-input" type="text" name="ItemName" required>
  <p><br>     
          
         <!-- <label><h4>1Kg Buying Price : Rs.</h4></label></p>
  <input class="w3-input" type="number" name="Price" required>
          <p><br>    --> 
           
           <label><h4>Quantity Kg.</h4></label></p>
          <input class="w3-input" type="number" name="Quantity" required>
  
  <br><br><br>
  

  <button class="button" value="submit" style="vertical-align:middle; position: relative; left: 50px;"><span>ADD NEW ITEM </span></button>
  
  </form>
  
  <br><br><br>
  
  <hr style="display: block; margin-top: 0.5em; margin-bottom: 0.5em; margin-left: auto; margin-right: auto; border-style: inset; border-width: 1px;">

  <br><br><br>
  <!-- Footer -->
 
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<h4 style="position: absolute; bottom: -125px; right: 101px;"><span>Search Items : &nbsp;<input id="myInput" type="text" placeholder="Search.."></span></h4>
</span>
  
<br>
   
  <table id = "items" style="position: relative; left: 30px;" border="1" cellspacing="0" cellpadding="70">
      
         <tr>
              <th>Item Number</th>
              <th>Item Name</th>
              <th>Unit Price<br></th>
              <th>Total Quantity<br></th>
              <th>Expire Date</th>
              <th>Status</th>
              <th>Update Item</th>
              <th>Delete Item</th>
               <tbody id="myTable">
          </tr>
          
        <%
              items it = new items();
              ArrayList<items> list = it.readAll(); %>
              
                   <% for(items cx : list){
                       session.setAttribute("items", list);
                        %>  
                        <tr>
                            <td id="itno" style="text-align:center"><%=cx.getItemNo()%></td>
                            <td style="text-align:center"><%=cx.getItemName()%></td>
                            <td style="text-align:center">Rs.<%=cx.getPrice()%></td>
                            <td style="text-align:center"><%=cx.getQuantity()%> Kg</td>
                            <td style="text-align:center"><%=cx.getExpDate()%></td>
                           <td style="text-align:center"><%=cx.getStatus()%></td>
                            
                            
                      <td style="text-align:center">
                          <form method="POST" action="OneUpdate">
                          <input type="hidden" name="ItemNO" value="<%=cx.getItemNo()%>"/>
                           <input type="hidden" name="ItemName"  value="<%=cx.getItemName()%>"/>
                           <input type="hidden" name="Price" value="<%=cx.getPrice()%>"/>
                            <input type="hidden" name="Quantity" value="<%=cx.getQuantity()%>"/>
                            
                          <button class="button1 button2" input type="submit" value= "Update" >Update</button>
                          </form>
     
                      </td>
                                <td style="text-align:center">
                                <form method="POST" action="ItemDelete">
                                    <input type="hidden" name="ItemNO" value="<%=cx.getItemNo()%>"/>
                                    <button class="button1 button3" input type="submit" value= "Delete" >Delete</button>
                                 
				</form>
                                 
                            </td>
                        </tr>
                        <%
                    }
                    %>
               </tbody>
  </table> 



  <br><br><br><br>
  
  <!-- Footer -->
  
  
  
  
  
  
  <!-- End page content -->
</div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
    
function new1(){
    document.getElementById('id01').style.display='block';
    
}



</script>

</body>
</html>
