<%-- 
    Document   : Reports
    Created on : Aug 17, 2019, 11:37:13 AM
    Author     : Givindu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="org.retail.model.items"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <title>W3.CSS Template</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
   
    

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
            padding: 8px;
        }

        #items tr:nth-child(even){background-color: #f2f2f2;}

        #items tr:hover {background-color: #ddd;}

        #items th {
            padding-top: 12px;
            padding-bottom: 12px;
            background-color: #4CAF50;
            color: white;
        }








        body {font-family: Arial, Helvetica, sans-serif;}

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 200px;
            top: 0;
            width: 90%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            position: relative;
            background-color: #fefefe;
            margin: auto;
            padding: 0;
            border: 1px solid #888;
            width: 80%;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
            -webkit-animation-name: animatetop;
            -webkit-animation-duration: 0.4s;
            animation-name: animatetop;
            animation-duration: 0.4s
        }

        /* Add Animation */
        @-webkit-keyframes animatetop {
            from {top:-300px; opacity:0} 
            to {top:0; opacity:1}
        }

        @keyframes animatetop {
            from {top:-300px; opacity:0}
            to {top:0; opacity:1}
        }

        /* The Close Button */
        .close {
            color: white;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-header {
            padding: 2px 16px;
            background-color: #5cb85c;
            color: white;
        }

        .modal-body {padding: 2px 16px;}

        .modal-footer {
            padding: 2px 16px;
            background-color: #5cb85c;
            color: white;
        }





        @media print{
            #printf{
                display: none;
            }
        }


        
        
        
        
        
        

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
                    <h4><a href="Items.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-cubes"></i>  Items</a></h4>
                    <h4><a href="Reports.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-file-pdf-o"></i>  Reports</a><br><br></h4>
                </div>
        </nav>


        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px;margin-top:43px;">

            <!-- Header -->
            <header class="w3-container" style="padding-top:22px">
                <h1><b><i class="fa fa-dashboard"></i> Reports </b></h1><br>
            </header>

            <!-- ------------------------------------------------------------------------------------------------------------------>  

            <h2 style="position: relative; left: 30px;">Minimum Stock Level</h2>



            <table id="items" style="position: relative; left: 30px;" border="1" cellspacing="0" cellpadding="50">

                <thead>
                    <tr>
                        <th>Item Number</th>
                        <th>Item Name</th>
                        <th>Available Quantity </th>
                        <th>Quantity level</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        // ArrayList<items> list1 = (ArrayList)session.getAttribute("items");
                        //for(items cx1 : list1){ 
                        //   String x = cx1.level(cx1.getQuantity());
                        //     if(x.equals("Low")){

                    %> 

                    <%               items it = new items();
                        ArrayList<items> list = it.readLow(); %>

                    <% for (items cx1 : list) {

                    %> 



                    <tr>

                        <td style="text-align:center"><%=cx1.getItemNo()%></td>
                        <td style="text-align:center"><%=cx1.getItemName()%></td>
                        <td style="text-align:center"><%=cx1.getQuantity()%> Kg</td>
                        <td style="text-align:center"><%=cx1.getStatus()%></td>
          <!--              <td style="text-align:center"><%//=//x%></td>-->

                        <td style="text-align:center">
                            <form method="POST" action="AddLowItems">
                                <input type="hidden" name="ItemNO" value="<%=cx1.getItemNo()%>"/>
                                <input type="hidden" name="ItemName"  value="<%=cx1.getItemName()%>"/>
                                <input type="hidden" name="Quantity" value="<%=cx1.getQuantity()%>"/>
                                <input type="hidden" name="Level" value="<%=cx1.getStatus()%>"/>

                                <button input type="submit"> Inform Supplier </button>
                            </form>
                        </td>



                    </tr>

                    <%
                        }

                    %>
                </tbody>




            </table>


            <br><br><br><br>



            <!-- ------------------------------------------------------------------------------------------------------------------>  



            <h2 style="position: relative; left: 30px;">Wasted Items</h2>

            <table id="items" style="position: relative; left: 30px;" border="1" cellspacing="0" cellpadding="60">
                <thead>
                    <tr>
                        <th>Item Number</th>
                        <th>Item Name</th>
                        <th>Unit Price </th>
                        <th>Quantity </th>
                        <th>Wasted Cost <br></th>
                        <th>Action</th>

                    </tr>

                    <%              items itt = new items();
                        ArrayList<items> list2 = itt.readAllWaste();
                        int totalWaste = 0;%>

                    <% for (items cx2 : list2) {
                            //   session.setAttribute("itemss", list2);
                            totalWaste += cx2.getPrice() * cx2.getQuantity();
                    %> 




                </thead>
                <tbody>
                    <tr>
                        <td style="text-align:center"><%=cx2.getItemNo()%></td>
                        <td style="text-align:center"><%=cx2.getItemName()%></td>
                        <td style="text-align:center">Rs.<%=cx2.getPrice()%></td>
                        <td style="text-align:center"><%=cx2.getQuantity()%> Kg</td>
                        <td style="text-align:center">Rs.<%= (cx2.getQuantity() * cx2.getPrice())%></td>


                        <td style="text-align:center"> 
                            <form method="POST" action="DeleteWaste">
                                <input type="hidden" name="ItemNO" value="<%=cx2.getItemNo()%>"/>
                                <button class="btn2" input type="submit" value= "Delete" >Remove Item</button>
                            </form>
                        </td>

                    </tr>



                </tbody>
                <%
                    }
                %> 

            </table>

            <br><br>

            <div style="position: relative; left: 540px;">
                <h4>
                    <span>&nbsp;&nbsp;<b> Total Wastage Cost</b> &nbsp;&nbsp;<input type="text" name="Item NO"  value="Rs.<%= totalWaste%>" style="font-family: sans-serif; text-align: center"/></span>
                </h4>
            </div>








            <!-- Trigger/Open The Modal -->
            <button id="myBtn" style="position: relative; left: 380px; bottom: 42px;">ADD WASTED ITEM</button>

            <form action="WasteInsert" method="POST">
                <!-- The Modal -->
                <div id="myModal" class="modal">

                    <!-- Modal content -->
                    <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Add Wasted Items</h2>
                        </div>
                        <br>


                        <!--      <form action="WasteInsert" method="POST">-->

                        <div class="modal-body">
                            <h3>Select Item Name :</h3>

                            <select class="w3-input" list="browsers"  required="" id="availableItems"><br>

                                <!--<datalist id="browsers">-->  
                                <%
                                    items its = new items();
                                    ArrayList<items> lists = its.readAll(); %>

                                <% 
                                    for (items cx : lists) {
                                %> 


                                <option value=" "/>
                                <option title="<%=cx.getPrice()%>" id="<%=cx.getQuantity()%>" value=<%=cx.getItemNo()%>>  <%=cx.getItemName()%>

                                    <%
                                        }
                                    %> 
                                </option>
                                <!--</datalist>-->
                            </select>


                                <input name="ItemName" type="hidden" id="hii">
                            <h3>Item Number :</h3>
                            
                            <input class="w3-input" type="text" name="ItemNO" id="selectedItemNo" readonly ><br>


                            <h3>Unit Price :</h3>
                            <input class="w3-input" type="text" name="ItemPrice" id="val"  readonly><br>

                            <h3>Wasted Quantity :</h3>
                            <input class="w3-input" type="number" name="ItemQuantity"  required>
                            <input type="hidden" id="otherValue" type="text" name="originalqty" >



                            <br><br>
                        </div>


                        <div class="modal-footer">

                            <h3><button class="btn1" type="submit" value= "Update" >Add Item</button></h3>
                        </div>
                    </div>

                </div>



            </form>






            <br><br>



            <!-- ------------------------------------------------------------------------------------------------------------------>  

            


            <!-- Footer -->
            <h2 style="position: relative; left: 30px;">Variation of Items</h2>

            <form name="myform">

            <table id = "items" style="position: relative; left: 30px;" border="1" cellspacing="0" cellpadding="70">
                <thead>


                    <tr>
                        <th>Item Number</th>
                        <th>Item Name</th>     
                        <th>Systematic Count<br></th>
                        <th>Physical Count</th>
                        <th>Variation</th>
                        <th>Calculate</th>
                    </tr>

                    <%
                        items itsa = new items();
                        ArrayList<items> list5 = itsa.readVariation(); %>

                    <% for (items cx : list5) {
                    %> 

                </thead>
                <tbody>


                    <tr>

                        <td style="text-align:center"><%=cx.getItemNo()%></td>
                        <td style="text-align:center"><%=cx.getItemName()%></td>
                        <td style="text-align:center"><input style="text-align:center" value="<%=cx.getQuantity()%>" type="Number" name="qty" id="qty" ></td>
                        <td style="text-align:center"><input style="text-align:center" type="Number" id="count" name="count" onkeyup="calculation()"></td>
                        <td style="text-align:center"><input style="text-align:center" type="Number" name="tot" id="tot" > </td>
<!--                    <td style="text-align:center"><input style="text-align:center" type="Number" name="tot" id="tot" required onChange="calculate()"> </td>-->

                    </tr>
                </tbody>
            </form>
            <script>
      
                function calculation()
                {
                    var tot = document.getElementById("tot");
                    var count = document.getElementById("count");
                    var qty = document.getElementById("qty");
                    tot.value = parseInt(qty.value)-parseInt(count.value);
                }
            </script>

                <%
                    }
                %> 
            </table>


            <button id="myBtn" style="position: relative; left: 380px; bottom: -20px;">ADD PHYSICAL COUNTS</button>

        </form>

        <br><br><br>




        <!-- ------------------------------------------------------------------------------------------------------------------>  




        <h2 style="position: relative; left: 30px;">Expired Items</h2>


        <table id = "items" style="position: relative; left: 30px;" border="1" cellspacing="0" cellpadding="70">
            <thead   
                <tr>
                    <th>Item Number</th>
                    <th>Item Name</th>     
                    <!--              <th>Status</th>  -->
                    <th>Quantity</th>
                    

                </tr>
                <%
                    items it6 = new items();
                    ArrayList<items> list6 = it6.readExp(); %>

                <% for (items cx : list6) {
                %> 

            </thead>

            <tbody>

                <tr>
                    <td style="text-align:center"><%=cx.getItemNo()%></td>
                    <td style="text-align:center"><%=cx.getItemName()%></td>
                    <!--                            <td style="text-align:center"></td>-->
                    <td style="text-align:center"><%=cx.getQuantity()%> Kg</td>

<!--                    <td style="text-align:center">

                        <form method="POST" action="AddExpItems">
                            <input type="hidden" name="ItemNO" value="<%=cx.getItemNo()%>"/>
                            <input type="hidden" name="ItemName"  value="<%=cx.getItemName()%>"/>                           
                            <input type="hidden" name="Quantity" value="<%=cx.getQuantity()%>"/>


                            <button input type="submit"> Inform Supplier </button>
                        </form>

                    </td>-->


                </tr>

                <%
                    }
                %> 
            </tbody>

        </table>




            <br><br><br>


            <h4 style="position: relative; bottom: 10px; right: -50px;"><span>Get a Document of Report &nbsp;<button  id="printf"onclick="print1()">Print Document</button></span> </h4>
        
        
        <br><br>
        <script>
            function print1() {
                window.print();
            }


calculate = function()
{
    var qty = document.getElementById('qty').value;
    var count = document.getElementById('count').value; 
    var i= document.getElementById('count').value;
    
    document.getElementById('tot').value = qty-count;


   }
        </script>


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

//        $('#availableItems').change(function () {
//            var otherValue = $(this).find('option:selected').attr('data-othervalue');
//            $('#otherValue').val(otherValue);
//        });   


        var category = document.getElementById('selectedItemNo');
        var cat = document.getElementById('otherValue');
        var ca = document.getElementById('val');
        var c = document.getElementById('hii');
        document.getElementById('availableItems').onchange = function () {
            console.log("change");
            var optionSelected = this.options[this.selectedIndex];
            category.value = optionSelected.value;
            cat.value = optionSelected.id;
            ca.value = optionSelected.title;
            c.value = optionSelected.text;

            //  if (optionSelected.textContent != '-') {
            //    if (optionSelected.value === 'Apple') {
            //      category.value = 'PM2160A';
            //    }
            //    else if (optionSelected.value === 'Mango')  {
            //    category.value='MFM101';
            //}
            //    else if (optionSelected.val === 'm4')  {
            //    category.value='ABC';
            //}
            //    else {
            //        console.log(optionSelected.value);
            //      category.value = 'PM130';
            //    }
            //  } else {
            //    category.value = '';
            //  }
        }
        //document.getElementById('availableItems').onchange = function() {
        //    console.log("change");
        //  var optionSelected = this.input[this.selectedIndex];
        //  cat.value=optionSelected.value;
        //  }





        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks the button, open the modal 
        btn.onclick = function () {
            modal.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }







    </script>

</body>
</html>

