using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class studentActivities : System.Web.UI.Page
{
    //PAGE FREAKIN LOAD
    //School_code and SSN
    protected void Page_Load(object sender, EventArgs e)
    {
        //string s_username = Session["MyUsername"].ToString();

        //if (!IsPostBack)
        //{
        //    string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();

        //    //sqlcommand
        //    //cmd.executescalar
        //   // int @student_ssn;
        //   // SqlDataAdapter myCommand = new SqlDataAdapter("select @student_ssn=S.ssn from Students S where S.username='" + s_username + "'", con);
        //   // DataSet ds1 = new DataSet();
        //   // myCommand.Fill(ds1, "Students");

        //    //ssn.DataValueField = Convert.ToInt32(@student_ssn.Value);
        //    //child.DataValueField = "ssn";
        //    //child.DataBind();

        //}
    }

    //VIEW FREAKIN ACTIVITIES IN A FREAKIN TABLE IN A FREAKIN PLACEHOLDER
    protected void viewActivities_Click(object sender, EventArgs e)
    {

        
        DataTable dt = this.GetDataActivities();

        
        StringBuilder html = new StringBuilder();

        
        html.Append("<table border = '1'>");

       
        html.Append("<tr>");
        foreach (DataColumn column in dt.Columns)
        {
            html.Append("<th>");
            html.Append(column.ColumnName);
            html.Append("</th>");
        }
        html.Append("</tr>");

      
        foreach (DataRow row in dt.Rows)
        {
            html.Append("<tr>");
            foreach (DataColumn column in dt.Columns)
            {
                html.Append("<td>");
                html.Append(row[column.ColumnName]);
                html.Append("</td>");
            }
            html.Append("</tr>");
        }

        
        html.Append("</table>");

        
        viewedActivities.Controls.Add(new Literal { Text = html.ToString() });



        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("viewActivityAndTeacher", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);
        cmd.Parameters.Add(new SqlParameter("@s_ssn", s));

        //string csl = cmd.CommandText;
        //SqlDataAdapter myCommand = new SqlDataAdapter(csl, con);
        //DataSet ds1 = new DataSet();
        //myCommand.SelectCommand.CommandType = CommandType.StoredProcedure;
        //myCommand.SelectCommand.Parameters.AddWithValue("@ssn", cssn);
        //myCommand.Fill(ds1, "Schools");



        //a_schools.DataSource = ds1.Tables[0];
        //a_schools.DataTextField = "School Name";
        //a_schools.DataValueField = "School Code";
        //a_schools.DataBind();
        //cmd.ExecuteNonQuery();
        //conn.Close();
    }

    private DataTable GetDataActivities()
    {
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlCommand cmd = new SqlCommand("viewActivities", con);
            cmd.CommandType = CommandType.StoredProcedure;
            int s = Convert.ToInt32(ssn.Value);
            cmd.Parameters.Add(new SqlParameter("@s_ssn", s));
            using (cmd)
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }

    protected void joinActivity_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();

        SqlConnection conn = new SqlConnection(connStr);

        conn.Open();
        SqlCommand cmd = new SqlCommand("joinActivity", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);
        String n = activityName.Value;
        String sc = schoolcode.Value;


        cmd.Parameters.Add(new SqlParameter("@s_ssn", s));
        cmd.Parameters.Add(new SqlParameter("@a_name", n));
        cmd.Parameters.Add(new SqlParameter("@a_school_code", sc));

        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("Done!");
            Response.Redirect("student_activities.aspx");
        }
        catch
        {
            Response.Write("Oops, can't join");
        }
        conn.Close();

    }
}