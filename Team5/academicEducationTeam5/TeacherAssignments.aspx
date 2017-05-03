<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherAssignments.aspx.cs" Inherits="TeacherAssignments" %>

<!DOCTYPE html>

<html>
<head runat="server">
<title>Egypt Education | Teacher Courses</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top" runat ="server">

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
      <ul>
        <li><a href="TeacherHome.aspx">Home</a></li>
        <li><a href="TeacherPage.aspx">My Page</a></li>
        <li><a href="index.aspx">Logout</a></li>

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
      <h1><a href="#">Schools in Egypt</a></h1>
      <p>Welcome dear teacher</p>
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
        <li class="active"><a href="TeacherHome.aspx">Home</a></li>
          <li>
              <a class="bold" href="TeacherElementarySchools.aspx">Elementary Schools</a>
              <ul>
                
              </ul>
          <li>
              <a class="bold" href="TeacherMiddleSchools.aspx">Middle Schools</a>
              <ul>
                 
              </ul>
          <li>
              <a class="bold" href="TeacherHighSchools.aspx">High Schools</a>
              <ul>
                 
              </ul>
          </li>
        <li><a class="bold drop" href="#">Search School</a>
          <ul>
            <li><a href="TeacherSearching.aspx">Name</a></li>
            <li><a href="TeacherSearching.aspx">Address</a></li>

            <li><a class="drop" href="#">Type</a>
              <ul>
                <li><a href="TeacherSearching.aspx">national</a></li>
                <li><a href="TeacherSearching.aspx">international</a></li>
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
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
         <form id="coursesTable" runat="server">
            <div>
    
            </div>
         </form>
<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>