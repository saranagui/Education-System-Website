<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherGradesAssignment.aspx.cs" Inherits="TeacherGradesAssignment" %>

<!DOCTYPE html>

<html>
<head>
<title>Egypt Education | Grade Assignment</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
    <form  runat="server">
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
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
        <h6>Assignments</h6>
        
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
 <div class="wrapper row3">
  <div class="rounded">
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div id="portfolio">
        <ul class="nospace clear">
            <li class="one_half first">
                <article>
                    <img class="borderedbox" src="../images/demo/portfolio/1.png" alt="">
                    <h2>All Assignments</h2>
                    <p>Search for assignments for each course</p>
                     <p class="right"><a href="TeacherAssignments.aspx">Assignments &raquo;</a></p>
                </article>
              </li>
              <li class="one_half">
                <article><img class="borderedbox" src="../images/demo/portfolio/1.png" alt="">
                  <h2>Solutions</h2>
                  <p>Read their solution</p>
                  <p class="right"><a href="TeacherAssignmentsSolutions.aspx">Read Solutions &raquo;</a></p>
                </article>
              </li>
        </ul>
      </div>
          <h2>Grade An Assignment</h2>
            <div class="one_third first" runat="server">
              <label for="teacherUsername">Username <span>*</span></label>
              <fieldset><input type="text" name="teacherUsername" id="teacherUsername"  runat="server"  required="required" value="" size="22"></fieldset>
            </div>
            <div class="one_third" runat="server">
              <label for="courseCode">Course Code <span>*</span></label>
              <fieldset><input type="text" name="courseCode" id="courseCode"  runat="server"  required="required" value="" size="22"></fieldset>
            </div>
            <div class="one_third" runat="server">
              <label for="assignmentNum">Assignment Number <span>*</span></label>
              <fieldset><input type="text" name="assignmentNum" id="assignmentNum"  runat="server"  required="required" value="" size="22"></fieldset>
            </div>
            <div class="one_third" runat="server">
              <label for="studentUsername">Student UserName <span>*</span></label>
              <fieldset><input type="text" name="studentUsername" id="studentUsername"  runat="server"  required="required" value="" size="22"></fieldset>
            </div>
            <div class="one_third" runat="server">
              <label for="grade">The Grade <span>*</span></label>
              <fieldset><input type="text" name="grade" id="grade" runat="server"  required="required" value="" size="22"></fieldset>
            </div>
        </div>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
     <div class="row1">
            <fieldset>
                <!--OnClick="SignUp"-->
                <asp:button id="post" runat="server" Text="Post" OnClick="post_Click" style="height: 35px" />
            </fieldset>
     </div>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Egypt Education System</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</form>
</body>
</html>
