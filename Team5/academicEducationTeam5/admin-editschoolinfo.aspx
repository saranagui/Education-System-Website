<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-editschoolinfo.aspx.cs" Inherits="admin_editschoolinfo" %>


<html>
<head>
<title>Egypt Education</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function schoolcode_onclick() {

        }
       
        

// ]]>
    </script>
</head>
<body id="top">
<form id="Form1" runat ="server">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
      <ul>
        <li><a href="admin-home.aspx">Back</a></li>
        <li><a href="index.aspx">Logout</a></li>
        <!-- <li><a href="admin-step.aspx">Proceed</a></li>
        <li><a href="parent-signup.aspx">Parent Sign Up</a></li>
        <li><a href="admin-signup.aspx">Admin Sign Up</a></li>
        <li><a href="teacher-signup.aspx">Teacher Sign Up</a></li> -->

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
      <h1><a href="admin-home.aspx">Schools in Egypt</a></h1>
      <p>You can update any information about your school</p>
    </div>
    <div class="fl_right">
      <form class="clear" method="post" action="#">
        <fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here"/>
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<div class="row1">
        <!-- NAME -->
            <fieldset>
                <label for="school_name">New School Name:  </label>
                <input type="text" runat="server" name="school_name" id="school_name" value=""/>
            
                <asp:button id="change_name" runat="server" type="Clear Fields" 
                    text="Update school name" OnClick="changename_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!-- MAIN LANGUAGE -->
    <div class="row1">
            <fieldset>
                <label for="school_mainlang">New Main Language:  </label>
                <input type="text" runat="server" name="school_mainlang" id="school_mainlang" value=""/>
            
                <asp:button id="change_mainlang" runat="server" type="Clear Fields" 
                    text="Update school main language" OnClick="changemainlang_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!-- VISION-->
        <div class="row1">
            <fieldset>
                <label for="school_vision">New Vision:  </label>
                <input type="text" runat="server" name="school_vision" id="school_vision" value=""/>
            
                <asp:button id="change_vision" runat="server" type="Clear Fields" 
                    text="Update school vision" OnClick="changevision_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!--MISSION-->
        <div class="row1">
            <fieldset>
                <label for="school_mission">New Mission:  </label>
                <input type="text" runat="server" name="school_mission" id="school_mission" value=""/>
        
                <asp:button id="change_mission" runat="server" type="Clear Fields" 
                    text="Update school mission" OnClick="changemission_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!--FEES-->
        <div class="row1">
            <fieldset>
                <label for="school_fees">New Fees:  </label>
                <input type="text" runat="server" name="school_fees" id="school_fees" value=""/>
    
                <asp:button id="change_fees" runat="server" type="Clear Fields" 
                    text="Update school fees" OnClick="changefees_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!--TYPE-->
        <div class="row1">
            <fieldset>
                <label for="school_type">New Type:  </label>
                <input type="text" runat="server" name="school_type" id="school_type" value=""/>
            
    
                <asp:button id="change_type" runat="server" type="Clear Fields" 
                    text="Update school type" OnClick="changetype_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!-- ADDRESS-->
        <div class="row1">
            <fieldset>
                <label for="school_address">New Address:  </label>
                <input type="text" runat="server" name="school_address" id="school_address" value=""/>
            
                <asp:button id="change_address" runat="server" type="Clear Fields" 
                    text="Update school address" OnClick="changeaddress_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!--PHONE NUMBER-->
        <div class="row1">
            <fieldset>
                <label for="school_phonenumber">New Phone Number:  </label>
                <input type="text" runat="server" name="school_phonenumber" id="school_phonenumber" value=""/>
            
                <asp:button id="change_phonenumber" runat="server" type="Clear Fields" 
                    text="Update school phone number" OnClick="changephonenumber_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!-- EMAIL-->
        <div class="row1">
            <fieldset>
                <label for="school_email">New Email:  </label>
                <input type="text" runat="server" name="school_email" id="school_email" value=""/>
           
                <asp:button id="change_email" runat="server" type="Clear Fields" 
                    text="Update school email" OnClick="changeemail_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />
    <!--GENERAL INFO-->
        <div class="row1">
            <fieldset>
                <label for="school_generalinfo">New General Information:  </label>
                <input type="text" runat="server" name="school_generalinfo" id="school_generalinfo" value=""/>
            
                <asp:button id="change_generalinfo" runat="server" type="Clear Fields" 
                    text="Update school general information" OnClick="changegeneralinfo_onclick" Width="222px"/>
                    
            </fieldset>
    </div>
    <br />

<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="admin-home.aspx">Home</a></li>
          <li>
              <a class="bold" href="elementary-schools-admin.aspx">Elementary Schools</a>
              <ul>
                
              </ul>
          <li>
              <a class="bold" href="middle-schools-admin.aspx">Middle Schools</a>
              <ul>
                 
              </ul>
          <li>
              <a class="bold" href="high-schools-admin.aspx">High Schools</a>
              <ul>
                 
              </ul>
          </li>
        <li><a class="bold drop" href="#">Search School</a>
          <ul>
            <li><a href="Searching-admin.aspx">Name</a></li>
            <li><a href="Searching-admin.aspx">Address</a></li>

            <li><a class="drop" href="#">Type</a>
              <ul>
                <li><a href="Searching-admin.aspx">national</a></li>
                <li><a href="Searching-admin.aspx">international</a></li>
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
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper">
  <div id="slider">
    <div id="slide-wrapper" class="rounded clear"> 
      <!-- ################################################################################################ -->
      <figure id="slide-1"><a class="view" href="#"><img src="images/demo/slider/1.png" alt=""></a>
        <figcaption>
          <h2>B.B.King</h2>
          <p>The beautiful thing about learning is nobody can take it away from you.</p>
          <!--<p class="right"><a href="#">Continue Reading &raquo;</a></p>-->
        </figcaption>
      </figure>
      <figure id="slide-2"><a class="view" href="#"><img src="images/demo/slider/2.png" alt=""></a>
        <figcaption>
          <h2>Nelson Mendela</h2>
          <p>Education is the most powerful weapon which you can use to change the world.</p>
          <!--<p class="right"><a href="#">Continue Reading &raquo;</a></p>-->
        </figcaption>
      </figure>
      <figure id="slide-3"><a class="view" href="#"><img src="images/demo/slider/3.png" alt=""></a>
        <figcaption>
          <h2>Benjamin Franklin</h2>
          <p>An investment in knowledge pays the best interest.</p>
  <!--        <p class="right"><a href="#">Continue Reading &raquo;</a></p> -->
        </figcaption>
      </figure>
      <!--<figure id="slide-4"><a class="view" href="#"><img src="images/demo/slider/4.png" alt=""></a>
        <figcaption>
          <h2>Aliquatjusto quisque nam</h2>
          <p>Attincidunt vel nam a maurisus lacinia consectetus magnisl sed ac morbi. Inmaurisus habitur pretium eu et ac vest penatibus id lacus parturpis.</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>
      <figure id="slide-5"><a class="view" href="#"><img src="images/demo/slider/5.png" alt=""></a>
        <figcaption>
          <h2>Dapiensociis temper donec</h2>
          <p>Attincidunt vel nam a maurisus lacinia consectetus magnisl sed ac morbi. Inmaurisus habitur pretium eu et ac vest penatibus id lacus parturpis.</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>-->
      <!-- ################################################################################################ -->
      <ul id="slide-tabs">
        <li><a href="#slide-1">The Beauty of Education</a></li>
        <li><a href="#slide-2">Importance of Education</a></li>
        <li><a href="#slide-3">Why Study</a></li>
        <!--<li><a href="#slide-4">Alumni And Its Donors</a></li>
        <li><a href="#slide-5">Latest University News &amp; Events</a></li>-->
      </ul>
      <!-- ################################################################################################ --> 
    </div>
  </div>
</div>
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