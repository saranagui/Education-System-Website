<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="TeacherQuestions.aspx.cs" Inherits="TeacherQuestions" %>

<!DOCTYPE html>

<html>
<head runat="server">
<title>Egypt Education | Answer Question</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
 <form runat="server">
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
        <!-- ################################################################################################ -->
        
            <!--<li><a href="#">Course 1</a></li>
            <li><a href="#">Course 2</a></li>
            <li><a href="#">Course 3</a></li>
            <li><a href="#">Course 4</a></li>
          </ul>
        </nav>
        <!-- ################################################################################################ --> 
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
        <div id="questions">
          <h2>Questions for each Course</h2>
          <ul>
            <li>
                <div class="one_third first">
              <label for="name">Course Code <span>*</span></label>
              <fieldset><input type="text" runat="server" name="course_code" id="myCourseCode" value="" size="22"></fieldset>
            </div>
            <div class="one_third">
                <asp:Button ID="Button1" runat="server" Text="View Questions" OnClick="Button1_Click" />
            </div>
            <!--  <article>
                <header>
                  <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                  <address>
                  By <a href="#">Student Name</a>
                  </address>
                  <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
                </header>
                <div class="comcont">
                  <p>This is an example of a question made on a course.</p>
                </div>
              </article>
            </li>
            <li>
              <article>
                <header>
                  <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                  <address>
                  By <a href="#">A Student</a>
                  </address>
                  <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
                </header>
                <div class="comcont">
                  <p>This is an example of a question made on a course.</p>
                </div>
              </article>
            </li>
            <li>
              <article>
                <header>
                  <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                  <address>
                  By <a href="#">A Student</a>
                  </address>
                  <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
                </header>
                <div class="comcont">
                  <p>This is an example of a question made on a course.</p>
                </div>
              </article>-->
            </li>
          </ul>
        </div>
        <!-- ################################################################################################ --> 
      <!-- ################################################################################################ --> 
      
    </main>
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
