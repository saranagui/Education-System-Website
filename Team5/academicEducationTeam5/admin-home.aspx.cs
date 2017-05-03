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

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void viewteachers_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
       // string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
       // SqlConnection conn = new SqlConnection(connStr);
        //conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        //SqlCommand cmd = new SqlCommand("viewTeachers", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));

        //conn.Close();


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
        view_teachers.Controls.Add(new Literal { Text = html.ToString() });



    }

    private DataTable GetData()
    {
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            String school_code = Session["school_code"].ToString();
            SqlCommand cmd = new SqlCommand("viewTeachers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
            cmd.ExecuteNonQuery();
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
    protected void verifyteachers_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        //if (Session["school_code"] != null)
        //{
        String school_code = Session["school_code"].ToString();
        String tteacher_ssn = teacher_ssn.Value;
        String tteacher_username = teacher_username.Value;
        String tteacher_password = teacher_password.Value;
        //}
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("verifyTeachers", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@teacher_school_code", school_code);
        cmd.Parameters.AddWithValue("@teacher_ssn", int.Parse(tteacher_ssn));
        cmd.Parameters.AddWithValue("@teacher_username", tteacher_username);
        cmd.Parameters.AddWithValue("@teacher_password", tteacher_password);
        cmd.ExecuteNonQuery();
        conn.Close();

    }
    protected void viewapplications_onclick(object sender, EventArgs e)
    {
        ////get the information of the connection to the database
        //string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        ////create a new connection
        //SqlConnection conn = new SqlConnection(connStr);
        //conn.Open();
        ////if (Session["school_code"] != null)
        ////{
        //String school_code = Session["school_code"].ToString();
        ////}
        ////create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        //SqlCommand cmd = new SqlCommand("viewApplications", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@school_code", school_code);

        //conn.Close();


        //Populating a DataTable from database.
        DataTable dt = this.GetData2();

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
        view_applications.Controls.Add(new Literal { Text = html.ToString() });



    }

    private DataTable GetData2()
    {
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            String school_code = Session["school_code"].ToString();
            SqlCommand cmd = new SqlCommand("viewApplications", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@school_code", school_code);
            cmd.ExecuteNonQuery();
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
    protected void viewstudents_onclick(object sender, EventArgs e)
    {
        ////get the information of the connection to the database
        //string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        ////create a new connection
        //SqlConnection conn = new SqlConnection(connStr);
        //conn.Open();
        ////if (Session["school_code"] != null)
        ////{
        //String school_code = Session["school_code"].ToString();
        ////}
        ////create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        //SqlCommand cmd = new SqlCommand("viewStudents", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@school_code", school_code);

        //conn.Close();


        //Populating a DataTable from database.
        DataTable dt = this.GetData3();

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
        view_students.Controls.Add(new Literal { Text = html.ToString() });



    }

    private DataTable GetData3()
    {
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            String school_code = Session["school_code"].ToString();
            SqlCommand cmd = new SqlCommand("viewStudents", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@school_code", school_code);
            cmd.ExecuteNonQuery();
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
    protected void verifystudents_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        String school_code = Session["school_code"].ToString();
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("verifyStudents", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@student_username", assigned_username.Value);
        cmd.Parameters.AddWithValue("@student_school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@student_password", assigned_password.Value);
        cmd.Parameters.AddWithValue("@student_ssn", int.Parse(student_ssn.Value));
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void editinfoonclick(object sender, EventArgs e)
    {
        Response.Redirect("admin-editschoolinfo.aspx");
    }
    protected void postann_onclick(object sender, EventArgs e)
    {

        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("postAnnouncement", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@title", ann_title.Value);
        cmd.Parameters.AddWithValue("@description", ann_description.Value);
        cmd.Parameters.AddWithValue("@type", ann_type.Value);
        cmd.Parameters.AddWithValue("@date", DateTime.Today);
        string user_name = Session["MyUsername"].ToString();
        cmd.Parameters.AddWithValue("@administrator_username",user_name);
        cmd.ExecuteNonQuery();
        conn.Close();

    }
    protected void createactivity_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        String school_code = Session["school_code"].ToString();
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("createActivityWTeacher", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@activity_name", activity_name.Value);
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@activity_description", activity_description.Value);
        cmd.Parameters.AddWithValue("@activity_date", DateTime.Today);
        cmd.Parameters.AddWithValue("@activity_location", activity_location.Value);
        cmd.Parameters.AddWithValue("@activity_type", activity_type.Value);
        cmd.Parameters.AddWithValue("@administrator_ssn", int.Parse(adminstrator_ssn.Value));
        cmd.Parameters.AddWithValue("@teacher_ssn", int.Parse(teachers_ssn.Value));
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void assignteachers_onclick(object sender, EventArgs e)
    {
        //get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        String school_code = Session["school_code"].ToString();
        //create a new SQL command which takes as parameters the name of the stored procedure and the SQL connection name
        SqlCommand cmd = new SqlCommand("assignCourseToTeacher", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@teacher_ssn", int.Parse(teacherr_ssn.Value));
        cmd.Parameters.AddWithValue("@school_code", int.Parse(school_code));
        cmd.Parameters.AddWithValue("@course_code", int.Parse(course_code.Value));
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}