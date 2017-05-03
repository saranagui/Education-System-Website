<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherReports.aspx.cs" Inherits="TeacherReports" %>

<html>
<head runat="server">
    <title>Egypt Education | Post Report</title>
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
                <p>Post Report</p>
            </div>
            <!-- ################################################################################################ -->
        </header>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row2" />
    <header class="clear">
        <!-- ################################################################################################ -->
        <div class="row1">
                <fieldset>
                    <input id="username" runat="server" type="text" value="" placeholder="Place your username">
                </fieldset>
            </div>
        <!-- ################################################################################################ -->
    </header>
    <!--#####################################################################-->

    <div class="wrapper row3" />
            <!-- ################################################################################################ -->
            <div class="row1">
                    <fieldset>
                        <input id="studentUsername" runat="server" type="text" value="" placeholder="Place student username">
                    </fieldset>
                </div>

    <div class="wrapper row4" />
        <!-- ################################################################################################ -->
        <div class="row1">
                <fieldset>              
                    <textarea ID="comment" runat="server" value="" placeholder="Write comment" cols="100" rows="10"></textarea>
                </fieldset>
    <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                <!--OnClick="SignUp"-->
                <asp:button id="post" runat="server" Text="Post" OnClick="post_Click" />
            </fieldset>
    </div>
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
    </form>
</body>
</html>

