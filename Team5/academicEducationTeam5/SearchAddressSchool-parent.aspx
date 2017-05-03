<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchAddressSchool-parent.aspx.cs" Inherits="SearchAddressSchool_parent" %>

<!DOCTYPE html>

<html>
<head runat="server">
<title>Egypt Education | Searching By School Address</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top" runat ="server">
        <form runat="server">


<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
      <ul>
         <li><a href="parent-loggedin-home">Home</a></li>
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
      <h1><a href="parent-loggedin-home">Schools in Egypt</a></h1>
      <p>Welcome to the Egyptian Education System</p>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="parent-loggedin-home.aspx">Home</a></li>
          <li>
              <a class="bold" href="elementary-schools-parent.aspx">Elementary Schools</a>
              <ul>
                
              </ul>
          <li>
              <a class="bold" href="middle-schools-parent.aspx">Middle Schools</a>
              <ul>
                 
              </ul>
          <li>
              <a class="bold" href="high-schools-parent.aspx">High Schools</a>
              <ul>
                 
              </ul>
          </li>
        <li><a class=" drop" href="#">Search School</a>
          <ul>
            <li><a href="Searching-parent.aspx">Name</a></li>
            <li><a href="Searching-parent.aspx">Address</a></li>

            <li><a class="drop" href="#">Type</a>
              <ul>
                <li><a href="Searching-parent.aspx">national</a></li>
                <li><a href="Searching-parent.aspx">international</a></li>
              </ul>
            </li>
          </ul>
        </li>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
        <div class="wrapper row1">
        <p>
            <asp:PlaceHolder ID = "PlaceHolder2" runat="server" Visible="true" />
        </p>
        </div>
    <div class="clear">
          <ul>
          <li>
          <h2>Read Reviews About School</h2>
            <div class="one_third first">
            <!--  <label for="name">Course Code <span>*</span></label>
              <fieldset><input type="text" runat="server" name="course_code0" id="course_code" value="" size="22"></fieldset>
            </div>
            <div class="one_third"> -->
              <label for="username">School Code <span>*</span></label>
              <fieldset><input type="text" runat="server" name="schoolCode" id="schoolCode" value="" size="22"></fieldset>
            </div>
              <div class="row1">
            <fieldset>
                <!--OnClick="SignUp"-->
                <asp:button id="post" runat="server" Text="Read" OnClick="post_Click" />
            </fieldset>
             </div>
              </li>
          </ul>
        </div>
    <div class="clear">
          <ul>
          <li>
          <h2>Read Announcments Of School</h2>
            <div class="one_third first">
           
              <label for="username">School Code <span>*</span></label>
              <fieldset><input type="text" runat="server" name="schoolCode" id="schoolCode2" value="" size="22"></fieldset>
            </div>
              <div class="row1">
            <fieldset>
                <!--OnClick="SignUp"-->
                <asp:button id="Button1" runat="server" Text="Read" OnClick="post_Click1" />
            </fieldset>
             </div>
              </li>
          </ul>
        </div>
<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
            </form>
</body>
</html>