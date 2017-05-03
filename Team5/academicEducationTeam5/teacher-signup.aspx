<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher-signup.aspx.cs" Inherits="teacherSignUp" %>

<!DOCTYPE html>

<html>
<head>
    <title>Egypt Education | Teacher Sign Up</title>
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
                    <li><a href="parent-signup.aspx">Parent Sign Up</a></li>
                    <li><a href="log-in.aspx">Login</a></li>
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
                <p>Teacher Sign Up</p>
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
    <div class="wrapper row1" />
    <header class="clear">
        <!-- ################################################################################################ -->
        <div class="row1">
                <fieldset>
                    <input id="ssn" runat="server" type="text" value="" placeholder="Social Security Number" required="required" />
                </fieldset>
            </div>
        <!-- ################################################################################################ -->
    </header>
    <!--#####################################################################-->

    <div class="wrapper row1" />
            <!-- ################################################################################################ -->
            <div class="row1">
                    <fieldset>
                        <input id="first_name" runat="server" type="text" value="" placeholder="First Name" required="required">
                    </fieldset>
                </div>
            <div class="row1">
                    <fieldset>
                        <input id="middle_name" runat="server" type="text" value="" placeholder="Middle Name" required="required">
                    </fieldset>
                </div>
            <div class="row1">
                    <fieldset>
                        <input id="last_name" runat="server" type="text" value="" placeholder="Last Name" required="required">
                    </fieldset>
                </div>

    <div class="wrapper row1" />
        <!-- ################################################################################################ -->
        <div class="row1">
                <fieldset>
                    <input id="birth_date" runat="server" value="" placeholder="Birthday MM-DD-YY" required="required">
                </fieldset>
        </div>

    <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                <input id="address" runat="server" type="text" value="" placeholder="Address" required="required">
            </fieldset>
        </div>

    <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                <input id="email" runat="server" type="text" value="" placeholder="Email" required="required">
            </fieldset>
        </div>

    <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                gender
                <select id="gender" name="gender" runat="server">
                    <option value="female">
                        female
                    </option>
                    <option value="male">
                        male
                    </option>
                </select>
            </fieldset>
        </div>
    <div class="wrapper row1" />
    <!-- ################################################################################################ -->
    <div class="row1">
            <fieldset>
                <!--OnClick="SignUp"-->
                <asp:button id="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click1" />
            </fieldset>
    </div>
    <!-- JAVASCRIPTS -->
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.fitvids.min.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
    </form>
</body>
</html>

