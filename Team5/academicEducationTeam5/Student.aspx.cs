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

public partial class studentPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string s_username = Session["MyUsername"].ToString();

        //if (!IsPostBack)
        //{
        //    string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();

        //    ////sqlcommand
        //    ////cmd.executescalar
        //    //SqlCommand cmd = new SqlCommand("select distinct C.name,C.ssn from Children C join Children_appliedForBy_Parents_at_Schools CPS on CPS.ssn=C.ssn where CPS.username='" + s_username + "'", con);
        //    //DataSet ds1 = new DataSet();
        //    ////cmd.ExecuteScalar(ds1, "Children");

        //    //child.DataSource = ds1.Tables[0];
        //    //child.DataTextField = "name";
        //    //child.DataValueField = "ssn";
        //    //child.DataBind();

        //}
       
    }
    protected void studentUpdateInfo_click1(object sender, EventArgs e)
    {
    //    DataTable dt = this.GetDataUpdate();
    //    GridView1.DataSource = dt;
    //    GridView1.DataBind();
    //    StringBuilder html = new StringBuilder();

    //    html.Append("<table border = '1'>");

    //    html.Append("<tr>");
    //    foreach (DataColumn column in dt.Columns)
    //    {
    //        html.Append("<th>");
    //        html.Append(column.ColumnName);
    //        html.Append("</th>");
    //    }
    //    html.Append("</tr>");

    //    foreach (DataRow row in dt.Rows)
    //    {
    //        html.Append("<tr>");
    //        foreach (DataColumn column in dt.Columns)
    //        {
    //            html.Append("<td>");
    //            html.Append(row[column.ColumnName]);
    //            html.Append("</td>");
    //        }
    //        html.Append("</tr>");
    //    }

    //    html.Append("</table>");

    //    PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });




        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();

        SqlConnection conn = new SqlConnection(connStr);

        conn.Open();
        SqlCommand cmd = new SqlCommand("updateStudent", conn);
        cmd.CommandType = CommandType.StoredProcedure;



        int u_ssn = Convert.ToInt32(ssn.Value);
        String u_name = name.Value;
        DateTime u_birthdate = Convert.ToDateTime(birthday.Value);
        String u_gender = gender.Value;
        String u_password = password.Value;
        int u_grade = Convert.ToInt32(grade.Value);
        int u_schoolcode = Convert.ToInt32(school_code.Value);

        cmd.Parameters.Add(new SqlParameter("@ssn", u_ssn));
        cmd.Parameters.Add(new SqlParameter("@name", u_name));
        cmd.Parameters.Add(new SqlParameter("@birthday", u_birthdate));
        cmd.Parameters.Add(new SqlParameter("@gender", u_gender));
        cmd.Parameters.Add(new SqlParameter("@password", u_password));
        cmd.Parameters.Add(new SqlParameter("@grade", u_grade));
        cmd.Parameters.Add(new SqlParameter("@schoolcode", u_schoolcode));


        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("Info Updated");
            Response.Redirect("Student.aspx");
        }
        catch
        {
            Response.Write("Oops, an error occurred");
        }
        conn.Close();
 
    }

    //private DataTable GetDataUpdate()
    //{
    //    string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

    //    using (SqlConnection con = new SqlConnection(constr))
    //    {
    //        SqlCommand cmd = new SqlCommand("updateStudent", con);
    //        cmd.CommandType = CommandType.StoredProcedure;

    //        int u_ssn = Convert.ToInt32(ssn.Value);
    //        String u_name = name.Value;
    //        DateTime u_birthdate = Convert.ToDateTime(birthday.Value);
    //        String u_gender = gender.Value;
    //        String u_password = password.Value;
    //        int u_grade = Convert.ToInt32(grade.Value);
    //        int u_schoolcode = Convert.ToInt32(school_code.Value);

    //        cmd.Parameters.Add(new SqlParameter("@ssn", u_ssn));
    //        cmd.Parameters.Add(new SqlParameter("@name", u_name));
    //        cmd.Parameters.Add(new SqlParameter("@birthday", u_birthdate));
    //        cmd.Parameters.Add(new SqlParameter("@gender", u_gender));
    //        cmd.Parameters.Add(new SqlParameter("@password", u_password));
    //        cmd.Parameters.Add(new SqlParameter("@grade", u_grade));
    //        cmd.Parameters.Add(new SqlParameter("@schoolcode", u_schoolcode));


    //        using (cmd)
    //        {
    //            using (SqlDataAdapter sda = new SqlDataAdapter())
    //            {
    //                cmd.Connection = con;
    //                sda.SelectCommand = cmd;
    //                using (DataTable dt = new DataTable())
    //                {
    //                    sda.Fill(dt);
    //                    return dt;
    //                }
    //            }
    //        }
    //    }
    //}
}