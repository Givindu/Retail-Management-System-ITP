<%-- 
    Document   : index
    Created on : Aug 17, 2019, 11:33:25 AM
    Author     : Givindu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="org.retail.model.items"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Inventory Management</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="Stylesheet.css">


<!-- footer -->



<!-- End of footer -->




<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}




</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-green w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <span class="w3-bar-item w3-right"><a href="#">Logout</a></span>
  <span class="w3-bar-item w3-right"><a href="#">Help</a></span>
  <span class="w3-bar-item w3-right"><a href="#">Support</a></span>
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
    <h4><a href="Dashboard.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  Dashboard</a></h4>
    <h4><a href="Items.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-cubes"></i>  Items</a></h4>
    <h4><a href="Reports.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-file-pdf-o"></i>  Reports</a><br><br></h4>
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
      <h1><b><i class="fa fa-dashboard"></i> Dashboard</b></h1><br><br>
      
  </header>

  <div class="w3-row-padding w3-margin-bottom">
  
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-cubes w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>9</h3>
        </div>
        <div class="w3-clear"></div>
        <h4><a href="Items.jsp">Total Items</a></h4>
      </div>
    </div>
      
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-file-pdf-o w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>2</h3>
        </div>
        <div class="w3-clear"></div>
        <h4><a href="Reports.jsp">Total Reports</a></h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-cubes w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>5</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Wasted Items</h4>
      </div>
    </div>
  </div>
  
  
  <br>
  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
     
        
        
      <div class="w3-twothird">
          <h4>Recent Items</h4><br>
        <table class="w3-table w3-striped w3-white">
            
              <%
              items it = new items();
              ArrayList<items> list = it.readAll(); %>
              
                   <% for(items cx : list){
                        %>  
                        
          <tr>
            <td><i class="fa fa-glass w3-text-blue w3-large"></i></td>
            <td><%=cx.getItemName()%> </td>
            <td><i><%=cx.getQuantity()%> Kilograms</i></td>
          </tr>
          
              <%
                    }
                    %> 
          
        </table>
      </div>
    </div>
  </div>
 

  <hr>
  <div class="w3-container">
    <h4>Recent Users</h4>
    <ul class="w3-ul w3-card-4 w3-white">
      <li class="w3-padding-16">
        <img src="w3images/avatar2.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
        <span class="w3-xlarge">Kavishka Sheran</span><br>
      </li>
      <li class="w3-padding-16">
        <img src="w3images/avatar5.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
        <span class="w3-xlarge">Ranul De Silva</span><br>
      </li>
      <li class="w3-padding-16">
        <img src="w3images/avatar6.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
        <span class="w3-xlarge">Kasun Gunathilake</span><br>
      </li>
    </ul>
  </div>
  <hr>

 
  <br>

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
</script>

</body>
</html>
