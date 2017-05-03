using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherSearchSchoolName : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string p_username = Session["MyUsername"].ToString();//Session??

        //Populating a DataTable from database.
        DataTable dt = this.GetData();

        //Building an HTML string.
        StringBuilder html = new StringBuilder();

        //Table start.
        html.Append("<table border = '1'>");

        //Building the Header row.
        html.Append("<tr>");
        foreach (DataColumn column in dt.Columns)
        {
            html.Append("<th>");
            html.Append(column.ColumnName);
            html.Append("</th>");
        }
        html.Append("</tr>");

        //Building the Data rows.
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

        //Table end.
        html.Append("</table>");

        //Append the HTML string to Placeholder.
        PlaceHolder2.Controls.Add(new Literal { Text = html.ToString() });
    }
    private DataTable GetData()
    {
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlCommand cmd = new SqlCommand("searchForSchool_name", con);
            cmd.Parameters.Add(new SqlParameter("@school_name", Session["MySchoolName"]));
            cmd.CommandType = CommandType.StoredProcedure;
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
    protected void post_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /* create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/

        //To read the input from the user
        string mySchoolCode = schoolCode.Value;

        /*ASP.NET session state enables you to store and retrieve values for a user
        as the user navigates ASP.NET pages in a Web application.
        This is how we store a value in the session*/

        Session["MySchoolCode"] = mySchoolCode;

        //To navigate to the right webpage

        Server.Transfer("TeacherCheckReviews.aspx", true);

        conn.Close();
    }

    protected void post_Click1(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /* create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/

        //To read the input from the user
        string mySchoolCode = schoolCode2.Value;

        /*ASP.NET session state enables you to store and retrieve values for a user
        as the user navigates ASP.NET pages in a Web application.
        This is how we store a value in the session*/

        Session["MySchoolCode"] = mySchoolCode;

        //To navigate to the right webpage

        Server.Transfer("TeacherCheckAnnouncements.aspx", true);

        conn.Close();
    }
}