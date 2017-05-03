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


public partial class childs_schools : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string p_username = Session["MyUsername"].ToString();//Session??

        if (!IsPostBack)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            SqlDataAdapter myCommand = new SqlDataAdapter("select distinct  X.school_code as 'School code',X.name as 'Name' from Children C join Children_appliedForBy_Parents_at_Schools CPS on CPS.ssn=C.ssn join Students S on S.ssn=C.ssn join Schools X on X.school_code= S.school_code where CPS.username='" + p_username + "'", con);
            DataSet ds1 = new DataSet();
            myCommand.Fill(ds1, "Schools");
            school.DataSource = ds1.Tables[0];
            school.DataTextField = "Name";
            school.DataValueField = "School code";
            school.DataBind();
        }

    }

    protected void views_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

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
        PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });


    }

    protected void rates_Click(object sender, EventArgs e)
    {
        string p_username = Session["MyUsername"].ToString();

        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd9 = new SqlCommand("writeReviews", con);
        cmd9.CommandType = CommandType.StoredProcedure;
        con.Open();
        int schoolcode = (int)Int32.Parse(Request.Form["school"]);
        string review = reviewText.Text;
        cmd9.Parameters.AddWithValue("@parent_username", p_username);
        cmd9.Parameters.AddWithValue("@school_code", schoolcode);
        cmd9.Parameters.AddWithValue("@review", review);
        
        try
        {
            cmd9.ExecuteNonQuery();
            Response.Write("Done");
        }
        catch
        {
            Response.Write("Error");
        }

    }

    private DataTable GetData()
    {
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlCommand cmd = new SqlCommand("select * from Schools S where S.school_code='" + (int)Int32.Parse(Request.Form["school"]) + "'", con);
            //cmd.CommandType = CommandType.StoredProcedure;
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
}