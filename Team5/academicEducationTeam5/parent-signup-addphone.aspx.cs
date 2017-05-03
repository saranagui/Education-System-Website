using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class parent_signup_addphone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addmobs_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd = new SqlCommand("addPhoneNumber", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        string pMobile = mobile1.Text;
        string pUsername = Session["MyUsername"].ToString();

        cmd.Parameters.Add(new SqlParameter("@username", pUsername));
        cmd.Parameters.Add(new SqlParameter("@mobile_number", pMobile));

        SqlCommand cmd1 = new SqlCommand("select count(*) from Parent_Mobiles where mobile_number='" + pMobile + "' and username='" + pUsername + "'", conn);
        cmd1.CommandType = CommandType.Text;

        if ((int)cmd1.ExecuteScalar() == 0)
        {
            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect(Request.RawUrl);
            }
            catch (System.Exception)
            {

            }
        }


        conn.Close();

    }

    protected void done_Click(object sender, EventArgs e)
    {
        Response.Redirect("parent-loggedin-home.aspx");
    }
}