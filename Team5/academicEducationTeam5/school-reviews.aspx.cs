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


public partial class school_reviews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
    private DataTable GetData()
    {

        string p_username = Session["MyUsername"].ToString();
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlCommand cmd = new SqlCommand("select R.school_code, R.review from Parents_writeReviewsAbout_Schools R where R.parent_username='" + p_username + "'", con);
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

    protected void del_Click(object sender, EventArgs e)
    {
        string p_username = Session["MyUsername"].ToString();

        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd9 = new SqlCommand("deleteReview", con);
        cmd9.CommandType = CommandType.StoredProcedure;
        con.Open();
        try
        {
            int schoolcode = (int)Int32.Parse(scode.Text);
            cmd9.Parameters.AddWithValue("@parent_username", p_username);
            cmd9.Parameters.AddWithValue("@school_code", schoolcode);

        
            cmd9.ExecuteNonQuery();
            Response.Write("Done");
        }
        catch
        {
            Response.Write("Error");
        }
    }
}