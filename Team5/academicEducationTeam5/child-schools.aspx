<%@ Page Language="C#" AutoEventWireup="true" CodeFile="child-schools.aspx.cs" Inherits="childs_schools" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Egypt Education | My Children's Schools</title>
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
                <h1><a href="index.aspx">Schools in Egypt</a></h1>
                <p>My Children's Schools</p>
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
   <div class="wrapper row5">
        Choose School 
                <div class="wrapper row1">
                <select id="school" runat="server" name="school">
                    
                </select>
                     
       </div></div>
          <div class="wrapper row1">
               
                    <asp:Button ID="views" runat="server" Text="View School" OnClick="views_Click" />
<div class="wrapper row1">
                        <div class="row5">
            <fieldset>
                Review
                <asp:TextBox id="reviewText" runat="server" value="" placeholder="Review School" />
                </fieldset>
        </div>
    </div></div>
             <div class="wrapper row1">
                    <asp:Button ID="rates" runat="server" Text="Review School" OnClick="rates_Click" />
                 </div>
                
            </div></div></div>

        <div class="wrapper row1">
        <p>
            <asp:PlaceHolder ID = "PlaceHolder1" runat="server" Visible="true" />
        </p>
        </div>
  </form> 
    
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
