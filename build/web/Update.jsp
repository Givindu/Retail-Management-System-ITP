<%-- 
    Document   : Update
    Created on : Aug 24, 2019, 5:25:57 PM
    Author     : Givindu
--%>

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

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <form action="ItemsUpdate" method="POST" class="w3-container">

      <%
          HttpSession sessiona = request.getSession();
          String ItemNo = (String)sessiona.getAttribute("ItemNo");
          String ItemName = (String)sessiona.getAttribute("ItemName");
          //String Price = (String)sessiona.getAttribute("Price");
          String Quantity = (String)sessiona.getAttribute("Quantity");
          %>
      
      
      
  <p>
      
      <label><h4>Item Number: </h4></label></p>
  <input class="w3-input" type="text" name="ItemNO" value="<%=ItemNo%>" maxlength="4" readonly>
  <p><br>     
          
          <label><h4>Item Name: </h4></label></p>
  <input class="w3-input" type="text" name="ItemName" placeholder="<%=ItemName%>" required>
  <p><br>     
          
        <!--  <label><h4>Buying Price</h4></label></p>
  <input class="w3-input" type="text" name="Price" Placeholder="Rs." required>
          <p><br>    --> 
           
           <label><h4>Available Quantity</h4></label></p>
          <input class="w3-input" type="text" name="Quantity" placeholder="<%=Quantity%> Kg" required>
  
  <br><br><br>
  

  <button class="button" value="submit" style="vertical-align:middle; position: relative; left: 50px;">Update Item </button>
  
  
  </form>
  
  <a href="Items.jsp"> <button class="button" value="submit" style="vertical-align:middle; position: relative; left: 300px; top: -67px;">Cancel </button></a>
  
  

  <br><br><br>
  
 
  
  
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
