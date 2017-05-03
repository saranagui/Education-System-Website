<%@ Page Language="C#" AutoEventWireup="true" CodeFile="parent-signup-addphone.aspx.cs" Inherits="parent_signup_addphone" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Egypt Education | Parent Sign Up</title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
    
   
    
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row0">
        <div id="topbar" class="clear">
            <!-- ################################################################################################ -->
            <nav>
                <ul>
                    <li><a href="parent-loggedin-home.aspx">Home</a></li>
                    <li><a href="index.aspx">Log out</a></li>
                </ul>
            </nav>
            <!-- ################################################################################################ -->
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row1">
        <header id="header" class="clear">
            <!-- ################################################################################################ -->
            <div id="logo" class="fl_left">
                <h1><a href="parent-loggedin-home.aspx">Schools in Egypt</a></h1>
                <p>Parent Sign Up</p>
            </div>
            <!-- ################################################################################################ -->
        </header>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->

    <div class="wrapper row1" />
            <!-- ################################################################################################ -->
    <form runat="server" class="clear" method="post" action="#">      
  
         <div class="wrapper row5">
        <p>Would you like to enter more mobile numbers?</p>
        </div>
        <div>
             <p>


             </p>
             <p></p>
        </div>
       
       
           <fieldset>
               Other Mobile Number
                <asp:Textbox id="mobile1" runat="server" value="" placeholder="Mobile Number" />
                 </fieldset>
         </div>
        <div class="wrapper row1">
              <fieldset>
                    <asp:button id="addmobs"  runat="server"  Text="Add Number" OnClick="addmobs_Click"/>
    </fieldset>
            </div>
         <div class="wrapper row1">
              <fieldset>
                    <asp:button id="done"  runat="server"  Text="Done" OnClick="done_Click"/>
    </fieldset>
            </div>
  </form> 
    
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>

