using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class admin_editschoolinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void changename_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolName", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_name.Value);
       
        conn.Close();
    }
    protected void changemainlang_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolMainLang", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_mainlang.Value);

        conn.Close();
    }
    protected void changevision_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolVision", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_vision.Value);

        conn.Close();
    }
    protected void changemission_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolMission", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_mission.Value);

        conn.Close();
    }
    protected void changefees_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolFees", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", float.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_fees.Value);

        conn.Close();
    }
    protected void changetype_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolType", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_type.Value);

        conn.Close();
    }
    protected void changeaddress_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolAddress", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_address.Value);

        conn.Close();
    }
    protected void changephonenumber_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolPhoneNum", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_phonenumber.Value);

        conn.Close();
    }
    protected void changeemail_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolEmail", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_email.Value);

        conn.Close();
    }
    protected void changegeneralinfo_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("editSchoolGeneralInfo", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@new_entry", school_generalinfo.Value);

        conn.Close();
    }
}