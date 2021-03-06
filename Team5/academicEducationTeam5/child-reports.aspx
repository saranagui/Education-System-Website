﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="child-reports.aspx.cs" Inherits="child_reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Egypt Education | Reports</title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
    
   
        <form runat="server" class="clear" method="post" action="#"> 
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
                <p>Reports</p>
            </div>
            <!-- ################################################################################################ -->
        </header>
    </div>
     <div class="wrapper row5">
            <fieldset>
                Choose Child
                <div class="wrapper row1">
                <select id="child" runat="server" name="C1">
                    
                </select>
                     </div>
            </fieldset>
    </div>
    </div>
     <div class="wrapper row1">

            <fieldset>
                <asp:button id="proceed"  runat="server"  Text="Enter" OnClick="proceed_Click"/>
   
            </fieldset>
    
        </div>
</div></div>
     <div class="wrapper row1">
        <p>
            <asp:PlaceHolder ID = "PlaceHolder1" runat="server" Visible="true" />
        </p>
        </div>
            </div>

             <div class="wrapper row1">
                    <fieldset>
                        Enter Report ID
                        <input id="rid" runat="server" type="text" value="" placeholder="Report ID" />
                    </fieldset>
            </div>
             <div class="wrapper row1">
                    <fieldset>
                        Your Reply
                        <input id="p_reply" runat="server" type="text" value="" placeholder="Reply" />
                    </fieldset>
            </div>

                </div>
     <div class="wrapper row1">

            <fieldset>
                <asp:button id="Reply"  runat="server"  Text="Enter" OnClick="Reply_Click"/>
   
            </fieldset>
    
        </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->

    
            <!-- ################################################################################################ -->
     
  
       
  </form> 
    
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
