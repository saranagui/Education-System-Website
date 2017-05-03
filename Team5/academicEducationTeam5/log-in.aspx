<%@ Page Language="C#" AutoEventWireup="true" CodeFile="log-in.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html>
<head>
    <title>Egypt Education | Teacher Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
        <form id="form1" runat="server">
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row0">
        <div id="topbar" class="clear">
            <!-- ################################################################################################ -->
            <nav>
                <ul>
                    <li><a href="index.aspx">Home</a></li>
                    <%--<li><a href="student-signup.html">Student Sign Up</a></li>--%>
                    <li><a href="parent-signup.aspx">Parent Sign Up</a></li>
                    <%--<li><a href="admin-signup.html">Admin Sign Up</a></li>--%>
                    <li><a href="teacher-signup.aspx">Teacher Sign Up</a></li>
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
                <h1><a href="index.aspx">Schools in Egypt</a></h1>
                <p>Welcome to the Egyptian Education System</p>
            </div>
            <!-- ################################################################################################ -->
        </header>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row1" />
            <!-- ################################################################################################ -->
            <div class="wrapper row1">
                    <fieldset>
                        <input id="username" runat="server" type="text" value="" placeholder="Username" required="required" />
                    </fieldset>
            </div>
            <!-- ################################################################################################ -->
        </header>
    <div class="wrapper row5" />
        <header class="clear">
            <!-- ################################################################################################ -->
            <div class="wrapper row5">
                <input id="userPassword" runat="server" type="password" value="" placeholder="Password" required="required" />
            </div>
        </header>
     <div class="wrapper row0" />
    <div class="row5">
            <fieldset>
                <select id="whatAmI" name="whatAmI" runat="server">
                    <option value="Teacher">
                        Teacher
                    </option>
                    <option value="Student">
                        Student
                    </option>
                    <option value="Parent">
                        Parent
                    </option>
                    <option value="Administrator">
                        Administrator
                    </option>
                </select>
            </fieldset>
        </div>
            </div>
            </div>
    <div class="wrapper row1" />
            <!-- ################################################################################################ -->
            <div class="wrapper row1">
                <fieldset>
                    <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="Login" />
                </fieldset>
            </div>
    </form>
</body>
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
</html>
