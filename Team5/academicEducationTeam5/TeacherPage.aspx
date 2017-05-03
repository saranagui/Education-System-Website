<%@Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="TeacherPage.aspx.cs" Inherits="teacherPage" %>


<!DOCTYPE html>

<html>
<head runat="server">
<title>Egypt Education | Teacher Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
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
        <li><a href="#">My Page</a></li>
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
      <div id="portfolio">
        <ul class="nospace clear">
          <li class="one_half first">
            <article><img class="borderedbox" src="../images/demo/portfolio/1.png" alt="">
              <h2>Assignments</h2>
              <p>How to teach the next generation, that Google is their best friend. </p>
              <p class="right"><a href="TeacherPostsAssignment.aspx">Post Assignment &raquo;</a></p>
            </article>
          </li>
          <li class="one_half">
            <article><img class="borderedbox" src="../images/demo/portfolio/1.png" alt="">
              <h2>Grading</h2>
              <p>Relax, it&#39;s gonna be over soon. Tip: have a little coffee before checking the solutions.</p>
              <p class="right"><a href="TeacherGradesAssignment.aspx">Grade Assignment &raquo;</a></p>
            </article>
          </li>
          <li class="one_half first">
            <article><img class="borderedbox" src="../images/demo/portfolio/1.png" alt="">
              <h2>Reports</h2>
              <p>Kind words can be short and easy to speak but their echos are truly endless.</p>
              <p class="right"><a href="TeacherReports.aspx">Post Report &raquo;</a></p>
            </article>
          </li>
          <li class="one_half">
            <article><img class="borderedbox" src="../images/demo/portfolio/1.png" alt="">
              <h2>Questions and Answers</h2>
              <p>He who asks a Question remains a fool for 5 minutes. He who does not ask,&nbsp; remains a fool forever.</p>
              <p class="right"><a href="TeacherQuestions.aspx">Answer Question &raquo;</a></p>
            </article>
          </li>
          <li class="one_half first">
            <article><img class="borderedbox" src="../images/demo/portfolio/1.png" alt="">
              <h2>My Students</h2>
                <p>Habaiby El Helween.</p>
              <p>&nbsp;</p>
              <p class="right"><a href="TeacherStudents.aspx">View Students »</a></p>
            </article>
          </li>
            <li class="one_half">
            <article><img class="borderedbox" src="../images/demo/portfolio/1.png" alt="">
              <h2>My Courses</h2>
                <p>Let me explain. Asl dih ba2a Le3bety.</p>
              <p>&nbsp;</p>
              <p class="right"><a href="TeacherCourses.aspx">View Courses »</a></p>
            </article>
          </li>
        </ul>
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ 
      <nav class="pagination">
        <ul>
          <li><a href="#">&laquo; Previous</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">6</a></li>
          <li class="current"><strong>7</strong></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">14</a></li>
          <li><a href="#">15</a></li>
          <li><a href="#">Next &raquo;</a></li>
        </ul>
      </nav>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ 
<div class="wrapper row4">
  <div class="rounded">
    <footer id="footer" class="clear"> 
      <!-- ################################################################################################ 
      <div class="one_third first">
        <figure class="center"><img class="btmspace-15" src="../images/demo/worldmap.png" alt="">
          <figcaption><a href="#">Find Us With Google Maps &raquo;</a></figcaption>
        </figure>
      </div>
      <div class="one_third">
        <address>
        Long Educational Facility Name<br>
        Address Line 2<br>
        Town/City<br>
        Postcode/Zip<br>
        <br>
        <i class="fa fa-phone pright-10"></i> xxxx xxxx xxxxxx<br>
        <i class="fa fa-envelope-o pright-10"></i> <a href="#">contact@domain.com</a>
        </address>
      </div>
      <div class="one_third">
        <p class="nospace btmspace-10">Stay Up to Date With What's Happening</p>
        <ul class="faico clear">
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-flickr" href="#"><i class="fa fa-flickr"></i></a></li>
          <li><a class="faicon-rss" href="#"><i class="fa fa-rss"></i></a></li>
        </ul>
        <form class="clear" method="post" action="#">
          <fieldset>
            <legend>Subscribe To Our Newsletter:</legend>
            <input type="text" value="" placeholder="Enter Email Here&hellip;">
            <button class="fa fa-sign-in" type="submit" title="Sign Up"><em>Sign Up</em></button>
          </fieldset>
        </form>
      </div>
      <!-- ################################################################################################ 
    </footer>
  </div>
</div>
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