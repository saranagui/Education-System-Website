<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherCourses.aspx.cs" Inherits="_Default" %>

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
   <!--     <h1>Table(s)</h1>
        <div class="scrollable">
          <table>
            <thead>
              <tr>
                <th>Grade </th>
                <th>First Name</th>
                <th>Last Name </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a href="#">Value 1</a></td>
                <td>Value 2</td>
                <td>Value 3</td>
              </tr>
              <tr>
                <td>Value 5</td>
                <td>Value 6</td>
                <td>Value 7</td>
              </tr>
              <tr>
                <td>Value 9</td>
                <td>Value 10</td>
                <td>Value 11</td>
              </tr>
              <tr>
                <td>Value 13</td>
                <td><a href="#">Value 14</a></td>
                <td>Value 15</td>
              </tr>
            </tbody>
          </table>
       </main> 
    </div>
 </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ --> 
      <!-- / main body -->
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<!--<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
<!--    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Egypt Education System </a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ --> 
 <!-- </div>
</div>
<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>