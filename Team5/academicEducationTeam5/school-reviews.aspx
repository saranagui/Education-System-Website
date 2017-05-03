<%@ Page Language="C#" AutoEventWireup="true" CodeFile="school-reviews.aspx.cs" Inherits="school_reviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Egypt Education | My Reviews</title>
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
                <p>My Reviews</p>
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

    
            <!-- ################################################################################################ -->
    <form runat="server" class="clear" method="post" action="#">      
  <div class="wrapper row1">
        <p>
            <asp:PlaceHolder ID = "PlaceHolder1" runat="server" Visible="true" />
        </p>
        </div>
        </div>
           
       
         <div class="wrapper row5">
           <fieldset>
               Enter School Code to Delete Your School Review
                <asp:Textbox id="scode" runat="server" value="" placeholder="School Code" />
                 </fieldset>
         </div>
          <div class="wrapper row1">
         <fieldset>
                <asp:button id="del"  runat="server"  Text="Delete Review" OnClick="del_Click"/>
   
            </fieldset>
       
  </form> 
    
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
