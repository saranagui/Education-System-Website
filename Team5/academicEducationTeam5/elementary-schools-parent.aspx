<%@ Page Language="C#" AutoEventWireup="true" CodeFile="elementary-schools-parent.aspx.cs" Inherits="elementary_schools_parent" %>

<!DOCTYPE html>
<!--
Template Name: Egypt Education
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html>
<head>
<title>Egypt Education| Elementary Schools</title>
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
      <h1><a href="parent-loggedin-home.aspx">Schools in Egypt</a></h1>
      <p>Welcome to the Egyptian Education System</p>
    </div>
    <div class="fl_right">
      <!--  <fieldset>
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
        <li class="active"><a href="parent-loggedin-home.aspx">Home</a></li>
          <li>
              <a class="active" runat="server" id="eschool" href="elementary-schools-parent.aspx">Elementary Schools</a>
              <ul>
                  <!--<li><a href="pages/gallery.html">Gallery</a></li>-->
                  <!--<li><a href="pages/portfolio.html">Portfolio</a></li>-->
                  <!--<li><a href="pages/full-width.html">Full Width</a></li>-->
                 <!-- <li><a href="pages/sidebar-left.html">Elementary Schools</a></li>
                  <li><a href="pages/sidebar-left-2.html">Middle Schools</a></li>
                  <li><a href="pages/sidebar-left-3.html">High Schools</a></li>-->
                  <!--<li><a href="pages/sidebar-right.html">Sidebar Right</a></li>-->
                  <!--<li><a href="pages/sidebar-right-2.html">Sidebar Right 2</a></li>
            <li><a href="pages/basic-grid.html">Basic Grid</a></li>-->
              </ul>
          <li>
              <a class="bold" href="middle-schools-parent.aspx">Middle Schools</a>
              <ul>
                  <!--<li><a href="pages/gallery.html">Gallery</a></li>-->
                  <!--<li><a href="pages/portfolio.html">Portfolio</a></li>-->
                  <!--<li><a href="pages/full-width.html">Full Width</a></li>-->
                  <!-- <li><a href="pages/sidebar-left.html">Elementary Schools</a></li>
                  <li><a href="pages/sidebar-left-2.html">Middle Schools</a></li>
                  <li><a href="pages/sidebar-left-3.html">High Schools</a></li>-->
                  <!--<li><a href="pages/sidebar-right.html">Sidebar Right</a></li>-->
                  <!--<li><a href="pages/sidebar-right-2.html">Sidebar Right 2</a></li>
            <li><a href="pages/basic-grid.html">Basic Grid</a></li>-->
              </ul>
          <li>
              <a class="bold" href="high-schools-parent.aspx">High Schools</a>
              <ul>
                  <!--<li><a href="pages/gallery.html">Gallery</a></li>-->
                  <!--<li><a href="pages/portfolio.html">Portfolio</a></li>-->
                  <!--<li><a href="pages/full-width.html">Full Width</a></li>-->
                   <!-- <li><a href="pages/sidebar-left.html">Elementary Schools</a></li>
                  <li><a href="pages/sidebar-left-2.html">Middle Schools</a></li>
                  <li><a href="pages/sidebar-left-3.html">High Schools</a></li>-->
                  <!--<li><a href="pages/sidebar-right.html">Sidebar Right</a></li>-->
                  <!--<li><a href="pages/sidebar-right-2.html">Sidebar Right 2</a></li>
            <li><a href="pages/basic-grid.html">Basic Grid</a></li>-->
       </ul>
          </li>
        <li><a class="bold drop" href="#">Search School</a>
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
        <!--<li><a href="#">Link Text</a></li>
        <li><a href="#">Another Link Text</a></li>
        <li><a href="#">This a very long link</a></li>
        <li><a href="#">This is the last</a></li>-->
      </ul>

      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>
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
              <div><fieldset><input type="text" runat="server" name="schoolCode" id="schoolCode2" value="" size="22"></fieldset></div>
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
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<!--<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> -->
      <!-- main body --> 
      <!-- ################################################################################################ -->
 <!--     <div class="group btmspace-30"> 
        <!-- Left Column -->
 <!--       <div class="one_quarter first"> 
          <!-- ################################################################################################ -->
 <!--         <ul class="nospace">
            <li class="btmspace-15"><a href="#"><em class="heading">Prospective Students</em> <img class="borderedbox" src="images/demo/220x95.gif" alt=""></a></li>
            <li class="btmspace-15"><a href="#"><em class="heading">Current Students</em> <img class="borderedbox" src="images/demo/220x95.gif" alt=""></a></li>
            <li class="btmspace-15"><a href="#"><em class="heading">International Students</em> <img class="borderedbox" src="images/demo/220x95.gif" alt=""></a></li>
            <li><a href="#"><em class="heading">Alumni</em> <img class="borderedbox" src="images/demo/220x95.gif" alt=""></a></li>
          </ul>
          <!-- ################################################################################################ --> 
 <!--       </div>
        <!-- / Left Column --> 
        <!-- Middle Column -->
 <!--       <div class="one_half"> 
          <!-- ################################################################################################ -->
 <!--         <h2>Latest News &amp; Events</h2>
          <ul class="nospace listing">
            <li class="clear">
              <div class="imgl borderedbox"><img src="images/demo/120x120.gif" alt=""></div>
              <p class="nospace btmspace-15"><a href="#">Sentumquisque morbi dui congue.</a></p>
              <p>This is a W3C compliant free website template from <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a>. This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a></p>
            </li>
            <li class="clear">
              <div class="imgl borderedbox"><img src="images/demo/120x120.gif" alt=""></div>
              <p class="nospace btmspace-15"><a href="#">Sentumquisque morbi dui congue.</a></p>
              <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
            </li>
            <li class="clear">
              <div class="imgl borderedbox"><img src="images/demo/120x120.gif" alt=""></div>
              <p class="nospace btmspace-15"><a href="#">Sentumquisque morbi dui congue.</a></p>
              <p>For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>. Attincidunt vel nam a maurisus lacinia consectetus magnisl sed ac morbi. Inmaurisus habitur pretium eu et ac vest penatibus id lacus parturpis.</p>
            </li>
          </ul>
          <p class="right"><a href="#">Click here to view all of the latest news and events &raquo;</a></p>
          <!-- ################################################################################################ --> 
<!--        </div>
        <!-- / Middle Column --> 
        <!-- Right Column -->
 <!--       <div class="one_quarter sidebar"> 
          <!-- ################################################################################################ -->
 <!--         <div class="sdb_holder">
            <h6>Virtual Tour</h6>
            <div class="mediacontainer"><img src="images/demo/video.gif" alt="">
              <p><a href="#">View More Tour Videos Here</a></p>
            </div>
          </div>
          <div class="sdb_holder">
            <h6>Quick Information</h6>
            <ul class="nospace quickinfo">
              <li class="clear"><a href="#"><img src="images/demo/80x80.gif" alt=""> Make An Application</a></li>
              <li class="clear"><a href="#"><img src="images/demo/80x80.gif" alt=""> Order A Prospectus</a></li>
            </ul>
          </div>
          <!-- ################################################################################################ --> 
<!--        </div>
        <!-- / Right Column --> 
<!--      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
<!--      <div id="twitter" class="group btmspace-30">
        <div class="one_quarter first center"><a href="#"><i class="fa fa-twitter fa-3x"></i><br>
          Follow Us On Twitter</a></div>
        <div class="three_quarter bold">
          <p>Inteligula congue id elis donec sce sagittis intes id laoreet aenean. Massawisi condisse leo sem ac tincidunt nibh quis dui fauctor et donecnibh elis velit <a href="#">@name</a> - 10:15 AM yesterday</p>
        </div>
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
 <!--     <div class="group">
        <h2>Quickly Find What You Are Looking For</h2>
        <div class="one_quarter first"> 
          <!-- ################################################################################################ -->
 <!--         <ul class="nospace">
            <li><a href="#">Academic Advisory</a></li>
            <li><a href="#">Academic Assistance</a></li>
            <li><a href="#">Academic Calendars</a></li>
            <li><a href="#">Academics Office</a></li>
            <li><a href="#">Administration</a></li>
            <li><a href="#">Adult Learners</a></li>
            <li><a href="#">Alumni Chapters</a></li>
            <li><a href="#">Alumni Events</a></li>
            <li><a href="#">Athletics</a></li>
            <li><a href="#">Campus Life At a Glance</a></li>
            <li><a href="#">Campus Recreation</a></li>
            <li><a href="#">Campus Safety &amp; Security</a></li>
          </ul>
          <!-- ################################################################################################ --> 
<!--        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
<!--          <ul class="nospace">
            <li><a href="#">Class Schedules</a></li>
            <li><a href="#">Counselling Center</a></li>
            <li><a href="#">Course Descriptions &amp; Catalogue</a></li>
            <li><a href="#">Department Directory</a></li>
            <li><a href="#">Departments &amp; Programs</a></li>
            <li><a href="#">Fellowships</a></li>
            <li><a href="#">Finals Schedules</a></li>
            <li><a href="#">Financial Aid</a></li>
            <li><a href="#">Fitness and Recreation Facilities</a></li>
            <li><a href="#">Global Learning</a></li>
            <li><a href="#">Graduate</a></li>
            <li><a href="#">Graduate Admissions</a></li>
          </ul>
          <!-- ################################################################################################ --> 
 <!--       </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
<!--          <ul class="nospace">
            <li><a href="#">Graduate Health Services</a></li>
            <li><a href="#">Graduate Housing</a></li>
            <li><a href="#">Graduate Programs</a></li>
            <li><a href="#">Graduate Student Association</a></li>
            <li><a href="#">Graduate Studies</a></li>
            <li><a href="#">Honours Program</a></li>
            <li><a href="#">Interactive Schedule</a></li>
            <li><a href="#">International Programs</a></li>
            <li><a href="#">International Students</a></li>
            <li><a href="#">Intramural Sports</a></li>
            <li><a href="#">Language Resources</a></li>
            <li><a href="#">Maps and Directions</a></li>
          </ul>
          <!-- ################################################################################################ --> 
<!--        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
 <!--         <ul class="nospace">
            <li><a href="#">Office of the Registrar</a></li>
            <li><a href="#">Online Learning</a></li>
            <li><a href="#">Parent Information</a></li>
            <li><a href="#">Residence Life</a></li>
            <li><a href="#">Residential Colleges</a></li>
            <li><a href="#">Schools and Colleges</a></li>
            <li><a href="#">Student Activities</a></li>
            <li><a href="#">Student Affairs</a></li>
            <li><a href="#">Student Development</a></li>
            <li><a href="#">Student Financial Services</a></li>
            <li><a href="#">Student Group Directory</a></li>
            <li><a href="#">Student Life</a></li>
          </ul>
          <!-- ################################################################################################ --> 
 <!--       </div>
      </div>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
 <!--     <div class="clear"></div>
    </main>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<!--<div class="wrapper row4">
<div class="wrapper row4">
  <div class="rounded">
    <footer id="footer" class="clear"> 
      <!-- ################################################################################################ -->
<!--      <div class="one_third first">
        <figure class="center"><img class="btmspace-15" src="images/demo/worldmap.png" alt="">
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
      <!-- ################################################################################################ --> 
<!--    </footer>
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
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>
    </form>
</body>
</html>


