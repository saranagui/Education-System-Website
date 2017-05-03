using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Text;

public partial class TeacherQuestions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /* create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        
        //To read the input from the user
        string courseCode = myCourseCode.Value;
        
        /*ASP.NET session state enables you to store and retrieve values for a user
        as the user navigates ASP.NET pages in a Web application.
        This is how we store a value in the session*/

        Session["MyCourseCode"] = courseCode;

        //To navigate to the right webpage

        Server.Transfer("TeacherCourseQuestions.aspx", true);
       
        conn.Close();

    }

}