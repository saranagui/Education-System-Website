using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class TeacherGradesAssignment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
       /* SqlCommand cmd1 = new SqlCommand("viewSolution", conn);
        cmd1.CommandType = CommandType.StoredProcedure;

        ArrayList assignments = new ArrayList();
        ArrayList grades = new ArrayList();

        cmd1.Parameters.Add(new SqlParameter("@username", Session["MyUsername"]));

        SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string studentGrade = rdr.GetInt32(rdr.GetOrdinal("grade")) + "";
            string studentName = rdr.GetString(rdr.GetOrdinal("name"));

            if (!studentsOfTeacher.Contains(studentName + " " + studentGrade))
            {
                if (!grades.Contains(studentGrade))
                {
                    Label cellGrade = new Label();
                    cellGrade.Text = "Grade: " + studentGrade + "  <br /> <br />";
                    Page.Controls.Add(cellGrade);
                    grades.Add(studentGrade);
                }
                Label cellName = new Label();
                cellName.Text = "Name: " + studentName + "  <br /> <br />";
                Page.Controls.Add(cellName);

                studentsOfTeacher.Add(studentName + " " + studentGrade);
            }
        }*/
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
        SqlCommand cmd = new SqlCommand("gradeAssignment", conn);
        cmd.CommandType = CommandType.StoredProcedure;

       // @username varchar(30), @course_code varchar(30), @assignment_number int, @student_ssn int, @grade float

        //To read the input from the user
        //int teacherSsn = Convert.ToInt32(ssn.Value);
        string tusername = teacherUsername.Value;
        string courseCodeInt = courseCode.Value;
        int assNum = Convert.ToInt32(assignmentNum.Value);
        string StudentUsername = studentUsername.Value;
        int Grade = Convert.ToInt32(grade.Value);

        //pass parameters to the stored procedure
        cmd.Parameters.Add(new SqlParameter("@username", tusername));
        cmd.Parameters.Add(new SqlParameter("@course_code", courseCodeInt));
        cmd.Parameters.Add(new SqlParameter("@assignment_number", assNum));
        cmd.Parameters.Add(new SqlParameter("@student_username", StudentUsername));
        cmd.Parameters.Add(new SqlParameter("@grade", Grade));
        //Executing the SQLCommand
        cmd.ExecuteNonQuery();
        conn.Close();
        Server.Transfer("TeacherPage.aspx", true);
    }
}