using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class TeacherAssignments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void post_Click1(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd = new SqlCommand("postAssignment", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        //@username varchar(30) , @course_code varchar(30), @assignment_number int, @due_date datetime, @content varchar(200)

        //To read the input from the user
        //int teacherSsn = Convert.ToInt32(ssn.Value);
        string tusername = username.Value;
        string courseCodeStr = course_code.Value;
        int assNum = Convert.ToInt32(assignment_number.Value);
        DateTime dueDate = Convert.ToDateTime(due_date.Value);
        string assContent = content.Value;

        //pass parameters to the stored procedure
        cmd.Parameters.Add(new SqlParameter("@username", tusername));
        cmd.Parameters.Add(new SqlParameter("@course_code", courseCodeStr));
        cmd.Parameters.Add(new SqlParameter("@assignment_number", assNum));
        cmd.Parameters.Add(new SqlParameter("@due_date", dueDate));
        cmd.Parameters.Add(new SqlParameter("@content", assContent));
        //Executing the SQLCommand
        try {
            cmd.ExecuteNonQuery();
        }catch(Exception ex)
        {
        }
        conn.Close();
        Server.Transfer("TeacherPage.aspx", true);
    }

    protected void content_TextChanged(object sender, EventArgs e)
    {

    }
}