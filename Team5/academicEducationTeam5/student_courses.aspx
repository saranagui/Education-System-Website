<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_courses.aspx.cs" Inherits="studentCourses" %>

<!DOCTYPE html>
<!--
Template Name: Egypt Education
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Egypt Education| Your Courses</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<form runat="server" class="clear" method="post" action="#">

<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<div class="wrapper row0">
  <div id="topbar" class="clear"> 

    <nav>
      <ul>

        <li><a href="StudentHome.aspx">Home</a></li>
        <li><a href="index.aspx">Sign Out</a></li>

      </ul>
    </nav>
 
  </div>
</div>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 

    <div id="logo" class="fl_left">
      <h1><a href="StudentHome.aspx">Schools in Egypt</a></h1>
      <p>Welcome to the Egyptian Education System</p>
    </div>

  </header>
</div>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 

      <ul class="clear">
        
          <div class="center">
               <li> <a href="Student.aspx">Profile</a></li>
         </div>

         <div class="center">
               <li><a href="student_courses.aspx">Courses</a></li>
         </div>

         <div class="center">
               <li><a href="student_activities.aspx">Activities</a></li>
         </div>

         <div class="center">
               <li><a href="student_clubs.aspx">Clubs</a></li>
         </div>
        
      </ul>
     
    </nav>
  </div>
</div>
 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row3">
    <header id="header" class="clear">

       
         <div class="fl_right">
           
                <fieldset>
                    
                     <label>
                       Solution
                     </label>
                     <input id="assignSol" runat= "server" type="text" value="" placeholder="Your Solution"/>
                </fieldset>
           
         </div>
        <div class="fl_right">
            
                <fieldset>
                     
                     <label>
                       AssignmnetNo.:
                     </label>
                     <input id="assignNum" runat= "server" type="text" value="" placeholder="Assignment No."/>
                </fieldset>
             
         </div>
        <div class="fl_right">
             
                <fieldset>
                    
                     <label>
                       Question
                     </label>
                     <input id="questiontxt" runat= "server" type="text" value="" placeholder="ask here"/>
                </fieldset>
             
         </div>

           <div class="fl_right">
        
           
                <fieldset>
                     
                     <label>
                       Course
                     </label>
                     <input id="coursecode" runat= "server" type="text" value="" placeholder="Course Code"/>
                </fieldset>
             
            </div>
    <div class="fl_right">
     
        <fieldset>
          
          <label>
             SSN
          </label>
          <input id="ssn" runat= "server" type="text" value="" placeholder="SSN" />
         
        </fieldset>
     
         
    </div>
    
     <div class="fl_left">
            
                 <fieldset>
                        <asp:Button id="viewCourses" runat="server"  Text="View Courses" onclick="viewCourses_Click" />
                        <input id="viewedCourses" runat= "server" visible="true"/>
                 </fieldset>
           
         

     
            <fieldset>
                <asp:Button id="viewGrades" runat="server" Text="View Grades" onclick="viewGrades_Click" Height="40px" />
                <input id="viewedGrades" runat= "server" visible="true"/>
            </fieldset>
       
      
      
            <fieldset>
                <asp:Button id="solveAssign" runat="server" Text="Sumbit Solution" onclick="solveAssign_Click" Height="40px" />
            </fieldset>
        

        
            <fieldset>
                <asp:Button id="viewAssignments" runat="server" Text="View Assignments" onclick="viewAssignments_Click" Height="40px" />
                <input id="viewedAssignments" runat= "server" visible="true"/>
            </fieldset>
        

       
            <fieldset>
                <asp:Button id="viewQsAndAs" runat="server" Text="View Qs & As" onclick="viewQsAndAs_Click" Height="40px" />
                <input id="viewedQsAndAs" runat= "server" visible="true"/>
            </fieldset>
       

        
            <fieldset>
                <asp:Button id="postQuestion" runat="server" Text="Ask Question" onclick="postQuestion_Click" Height="40px" />
            </fieldset>
        </div>

  </header>
</div>

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
 <div class="wrapper row4">
  <div id="copyright" class="clear"> 
   
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Egypt Education System</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
   
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

