using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherSearching : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void search1_Click(object sender, EventArgs e)
    {

        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /* create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/

        //To read the input from the user
        string mySchoolName = schoolName.Value;

        /*ASP.NET session state enables you to store and retrieve values for a user
        as the user navigates ASP.NET pages in a Web application.
        This is how we store a value in the session*/

        Session["MySchoolName"] = mySchoolName;

        //To navigate to the right webpage

        Server.Transfer("TeacherSearchSchoolName.aspx", true);

        conn.Close();
    }
    protected void search2_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /* create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/

        //To read the input from the user
        string mySchoolAddress = schoolAdress.Value;

        /*ASP.NET session state enables you to store and retrieve values for a user
        as the user navigates ASP.NET pages in a Web application.
        This is how we store a value in the session*/

        Session["MySchoolAddress"] = mySchoolAddress;

        //To navigate to the right webpage

        Server.Transfer("TeacherSearchSchoolAddress.aspx", true);

        conn.Close();
    }
    protected void search3_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /* create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/

        //To read the input from the user
        string mySchoolType = schoolType.Value;

        /*ASP.NET session state enables you to store and retrieve values for a user
        as the user navigates ASP.NET pages in a Web application.
        This is how we store a value in the session*/

        Session["MySchoolType"] = mySchoolType;

        //To navigate to the right webpage

        Server.Transfer("TeacherSearchSchoolType.aspx", true);

        conn.Close();
    }
}