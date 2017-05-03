//I DONT KNOW OUR LOGIN PROCEDURE NAME
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{

    // The page_load method is called before loading the corresponding HTML file to the browser
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /* create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd = new SqlCommand("loginPeople", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        //To read the input from the user
        string theUsername = username.Value;
        string thePassword = userPassword.Value;
        string type = whatAmI.Value;

        //pass parameters to the stored procedure
        cmd.Parameters.Add(new SqlParameter("@username", theUsername));
        cmd.Parameters.Add(new SqlParameter("@password", thePassword));
        cmd.Parameters.Add(new SqlParameter("@type", type));

        //Save the output from the procedure
        SqlParameter count = cmd.Parameters.Add("@passedOrNot", SqlDbType.Int);
        count.Direction = ParameterDirection.Output;

        //Executing the SQLCommand
        cmd.ExecuteNonQuery();


        if (count.Value.ToString().Equals("1"))
        {
            //To send response data to the client side (HTML)
            Response.Write("Passed");

            /*ASP.NET session state enables you to store and retrieve values for a user
            as the user navigates ASP.NET pages in a Web application.
            This is how we store a value in the session*/

            Session["MyUsername"] = theUsername;
            Session["MyPassword"] = thePassword;

            //To navigate to another webpage
            if (type.Equals("Teacher"))
                Response.Redirect("TeacherHome.aspx", true);
            else if (type.Equals("Student"))
                Response.Redirect("StudentHome.aspx", true);
            else if (type.Equals("Parent"))
                Response.Redirect("parent-loggedin-home.aspx", true);
            else if (type.Equals("Administrator"))
                Response.Redirect("admin-step.aspx", true);
            else
                Server.Transfer("index.aspx", true);
        }
        else
        {

            Response.Redirect(Request.RawUrl);
        }
        conn.Close();

    }
}
