<%@ Page Language="C#" AutoEventWireup="true" CodeFile="child-application.aspx.cs" Inherits="child_addmission" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Egypt Education | Apply for Child</title>
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
                <p>Apply for Child</p>
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
  
  
        <div class="wrapper row1" />
    <!-- ################################################################################################ -->
   
        
              <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                Child's Social Security Number
                <asp:TextBox id="c_ssn" runat="server" value="" placeholder="Social Security Number" required="true" />
                </fieldset>
        </div>
        </div>
         <div class="wrapper row1" />
        <fieldset>
            Child's Name
                <asp:TextBox id="name" runat="server" value="" placeholder="Full Name" required="true" />
                </fieldset>
        </div>
         <div class="wrapper row1" />
        <fieldset>
           Child's Birthdate
                <asp:TextBox id="bdate" runat="server" value="" placeholder="Birthdate MM-DD-YYYY" required="true" />
                </fieldset>
         <div class="wrapper row1" />
    <!-- ################################################################################################ -->
   </div>
         <div class="row1">
            <fieldset>
                Child's Gender
                <select id="gender" runat="server" name="gender">
                    <option value="Female" title="Female">Female</option>
                    <option value="Male" title="Male">Male</option>
                </select>
            </fieldset>
    </div>

             <div class="wrapper row1" />
    <!-- ################################################################################################ -->
   </div>
         <div class="row1">
            <fieldset>
                Choose School
                <select id="school" runat="server" name="D1">
                    
                </select>
            </fieldset>
    </div>

        <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div>
         <p></p>
        </div>
        
    <div class="row1">

            <fieldset>
                <asp:button id="apply"  runat="server"  Text="Apply" OnClick="apply_Click"/>
   
            </fieldset>
    
        </div>
       
  </form> 
    
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>

