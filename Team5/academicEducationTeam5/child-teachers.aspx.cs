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

public partial class child_teachers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string p_username = Session["MyUsername"].ToString();//Session??

        if (!IsPostBack)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            SqlDataAdapter myCommand = new SqlDataAdapter("select distinct C.name,C.ssn from Children C join Children_appliedForBy_Parents_at_Schools CPS on CPS.ssn=C.ssn where CPS.username='" + p_username + "'", con);
            DataSet ds1 = new DataSet();
            myCommand.Fill(ds1, "Children");

            child.DataSource = ds1.Tables[0];
            child.DataTextField = "name";
            child.DataValueField = "ssn";
            child.DataBind();

        }
    }

    protected void proceed_Click(object sender, EventArgs e)
    {


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
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlCommand cmd = new SqlCommand("select E.username, E.first_name +E.last_name as name, E.email from Teachers T join Courses_taughtBy_Teachers CT on CT.teacher_ssn=T.ssn join Courses_TakenBy_Students CS on CT.course_code=CS.course_code join Employees E on T.ssn=E.ssn where CS.ssn='" + (int)Int32.Parse(Request.Form["child"]) + "'", con);
           
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