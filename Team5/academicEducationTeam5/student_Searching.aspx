<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_Searching.aspx.cs" Inherits="Searching" %>

<!DOCTYPE html>
<html>
<head>
<title>Egypt Education | Search School</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body id="top">
<form runat="server" class="clear" method="post" action="#">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
      <ul>
      <li><a href="StudentHome.aspx">Home</a></li>
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
      <h1><a href="StudentHome.aspx">Schools in Egypt</a></h1>
      <p>Welcome to the Egyptian Education System</p>
    </div>
    <div class="fl_right">
      </div>
       <!-- <fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here">
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset> -->
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
        <li class="active"><a href="Student.aspx">Your Profile</a></li>
          <li>
              <a class="bold" href="student_elementary-schools.aspx">Elementary Schools</a>
              <ul>
                
              </ul>
          <li>
              <a class="bold" href="student_middle-schools.aspx">Middle Schools</a>
              <ul>
                 
              </ul>
          <li>
              <a class="bold" href="student_high-schools.aspx">High Schools</a>
              <ul>
                 
              </ul>
          </li>
        <li><a class="drop" href="#">Search School</a>
          <ul>
            <li><a href="student_SearchSchoolName.aspx">Name</a></li>
            <li><a href="student_SearchAddressSchool.aspx">Address</a></li>

            <li><a class="drop" href="#">Type</a>
              <ul>
                <li><a href="student_Searching.aspx">national</a></li>
                <li><a href="student_Searching.aspx">international</a></li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper" runat="server">
      <!-- ################################################################################################ -->
        <div class="row1" runat="server">
       <div>  <fieldset>
          <input type="text" runat="server" id="schoolName" value="" placeholder="Search Name"/>        </fieldset>
          </div> <div> <fieldset>
          <asp:Button href="student_SearchSchoolName.aspx" ID="search" runat="server" Text="Search" OnClick="search1_Click" />
        </fieldset></div>
       </div>
     </div>
    <div class="wrapper" runat="server">
         <div class="row1" runat="server">
         <fieldset>
          <input type="text" runat="server" id="schoolAdress" value="" placeholder="Search Address">        </fieldset>
        </div> <div> <fieldset> <asp:Button href="student_SearchAdressSchool.aspx" ID="Button1" runat="server" Text="Search" OnClick="search2_Click" />
        </fieldset>
       </div>
     </div>
    <div class="wrapper" runat="server">
         <div class="row1" runat="server">
         <fieldset>
          <input type="text" runat="server" id="schoolType" value="" placeholder="Search Type">        </fieldset>
        </div> <div> <fieldset>
          <asp:Button href="student_SearchSchoolType.aspx" ID="Button2" runat="server" Text="Search" OnClick="search3_Click" />
        </fieldset>
       </div>
      <!-- ################################################################################################ --> 
    </div>
  </div>
   
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>

    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Egypt Education System</a></p>
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ --> 
<div class="wrapper row5">
</div>
  </div>
  </form>
</body>
</html>
