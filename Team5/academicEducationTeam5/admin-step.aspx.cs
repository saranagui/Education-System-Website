using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class academic_education_admin_step : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void proceed_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("schoolCodeCheck", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string school_code = schoolcode.Value;
        string user_name = Session["MyUsername"].ToString();
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@username", user_name);
        SqlParameter count = cmd.Parameters.Add("@passedOrNot", SqlDbType.Int);
        count.Direction = ParameterDirection.Output;

        //Executing the SQLCommand
        cmd.ExecuteNonQuery();

        if (count.Value.ToString().Equals("1"))
        {
            Session["school_code"] = school_code;
            Server.Transfer("admin-home.aspx");
           
        }
        else
        {
            // Response.Redirect(Request.RawUrl);
            Response.Redirect("index.aspx");
        }
        conn.Close();
    }
}