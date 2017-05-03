using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class TeacherReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void post_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd = new SqlCommand("writeReportsAboutStudents", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        //@username varchar(30), @studentUsername int, @teachers_comment varchar(40)

        //To read the input from the user
        //int teacherSsn = Convert.ToInt32(ssn.Value);
        string tusername = username.Value;
        string CommentText = comment.Value;
        string StudentUsername = studentUsername.Value;

        //pass parameters to the stored procedure
        cmd.Parameters.Add(new SqlParameter("@username", tusername));
        cmd.Parameters.Add(new SqlParameter("@teachers_comment", CommentText));
        cmd.Parameters.Add(new SqlParameter("@studentUsername", StudentUsername));

        //Executing the SQLCommand
        try
        {
            cmd.ExecuteNonQuery();
        }catch(Exception ex)
        {

        }
        conn.Close();
        Server.Transfer("TeacherPage.aspx", true);
    }
}