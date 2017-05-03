<%@ Page Language="C#" AutoEventWireup="true" CodeFile="parent-signup.aspx.cs" Inherits="parent_signup" %>

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
                    <li><a href="index.aspx">Home</a></li>
                    <li><a href="teacher-signup.aspx">Teacher Sign Up</a></li>
                    <li><a href="log-in.aspx">Login</a></li>
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
     <div class="row1">
        
                    <fieldset>
                        First Name
                        <asp:Textbox id="first_name" runat="server"  value="" placeholder="First Name" required="true" />
                    </fieldset>
             
            </div>
            <div class="row1">
               
                    <fieldset>
                        Last Name
                        <asp:Textbox id="last_name" runat="server"  value="" placeholder="Last Name" required="true"/>
                    </fieldset>
               
            </div>
    <div>
        <p></p>
     </div>
    <div class="wrapper row1" />
        <!-- ################################################################################################ -->
        <div class="row1">
                <fieldset>
                    Email
                    <asp:Textbox id="email" runat="server"  value="" placeholder="Email" required="true"/>
                </fieldset>
        </div>
  <div>
      <p></p>
     </div>
   <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                Mobile Number
                <asp:Textbox id="mobile" runat="server" value="" placeholder="Mobile Number" required="true"/>
                 </fieldset>
         <div>
         <p></p>
          
    </div>
    <div>
         <p></p>
         </div>
      <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                Home Address
                <asp:Textbox id="address" runat="server" value="" placeholder="Address" required="true"/>
            </fieldset>
    </div>
     <div>
          <p></p>
        </div>
    <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                Home Number
                <asp:Textbox id="homenumber" runat="server" type="text" value="" placeholder="Home Number" required="true"/>
            </fieldset>
    </div>
     <div>
          <p></p>
        </div>
    <div class="wrapper row1" />
    <!-- ################################################################################################ -->
     <div class="row1">
            <fieldset>
                Choose a Unique Username
                <asp:Textbox id="username" runat="server" type="text" value="" AutoCompleteType="Disabled" placeholder="User Name" required="true"/>
            </fieldset>
    </div>
    
     <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                Create Password
                <asp:Textbox id="parent_password" runat="server" type="text" AutoCompleteType="Disabled" TextMode="Password" value="" placeholder="Password" required="true"/>
            </fieldset>

    </div>
        <div>
             <p></p>
     </div>
        <div>
             <p></p>
     </div>
    <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div>
         <p></p>
        </div>
        
    <div class="row1">

            <fieldset>
                <asp:button id="psignup"  runat="server"  Text="Sign Up" OnClick="psignup_Click"/>
   
            </fieldset>
    
        </div>
        <div>
             <p>


             </p>
             <p></p>
        </div>
        </div>

  </form> 
    
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
