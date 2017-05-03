using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class studentClubs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void joinClub_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();

        SqlConnection conn = new SqlConnection(connStr);

        conn.Open();
        SqlCommand cmd = new SqlCommand("joinClub", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);
        int gr = Convert.ToInt32(studentGrade.Value);
        String cname = clubName.Value;
        int scode = Convert.ToInt32(schoolcode.Value);
        int ccode = Convert.ToInt32(clubcode.Value);

        cmd.Parameters.Add(new SqlParameter("@s_ssn", s));
        cmd.Parameters.Add(new SqlParameter("@s_grade", gr));
        cmd.Parameters.Add(new SqlParameter("@c_name", cname));
        cmd.Parameters.Add(new SqlParameter("@s_code", scode));
        cmd.Parameters.Add(new SqlParameter("@c_code", ccode));

        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("Joined");
            Response.Redirect("student_clubs.aspx");
        }
        catch
        {
            Response.Write("Oops, can't join");
        }
        
      
        conn.Close();
    }
    protected void viewClubs_Click(object sender, EventArgs e)
    {

    }
}