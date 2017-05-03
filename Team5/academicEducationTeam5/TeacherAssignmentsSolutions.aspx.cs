using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherAssignmentsSolutions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd1 = new SqlCommand("viewSolution", conn);
        cmd1.CommandType = CommandType.StoredProcedure;

        ArrayList assignments = new ArrayList();
        ArrayList courses = new ArrayList();
        ArrayList solutions = new ArrayList();

        cmd1.Parameters.Add(new SqlParameter("@username", Session["MyUsername"]));

        SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string courseCode = rdr.GetString(rdr.GetOrdinal("course_code2"));
            string assignmentNumber = rdr.GetInt32(rdr.GetOrdinal("assignment_number")) + "";
            string solution = rdr.GetString(rdr.GetOrdinal("solution"));
            string studentID = rdr.GetInt32(rdr.GetOrdinal("id"))+"";
            string studentUsername = rdr.GetString(rdr.GetOrdinal("username"));

            if (!solutions.Contains(courseCode + " " + assignmentNumber+ " "+ studentID))
            {
                if (!courses.Contains(courseCode))
                {
                    Label cellCourse = new Label();
                    cellCourse.Text = "Course: " + courseCode + "  <br /> <br />";
                    Page.Controls.Add(cellCourse);
                    courses.Add(courseCode);
                }
                if (!assignments.Contains(courseCode + " " + assignmentNumber))
                {
                    Label cellAssignmentNuber = new Label();
                    cellAssignmentNuber.Text = "Assignment #: " + assignmentNumber + "  <br /> <br />";
                    Page.Controls.Add(cellAssignmentNuber);
                    assignments.Add(courseCode + " " + assignmentNumber);
                }
                Label cellStudentID = new Label();
                cellStudentID.Text = "Student ID: " + studentID + "  <br /> <br />";
                Page.Controls.Add(cellStudentID);

                Label cellUsername = new Label();
                cellUsername.Text = "Student Username: " + studentUsername + "  <br /> <br />";
                Page.Controls.Add(cellUsername);

                Label cellSolution = new Label();
                cellSolution.Text = "Content: " + solution + "  <br /> <br />";
                Page.Controls.Add(cellSolution);

                Label line = new Label();
                line.Text = "------------------------------------------------------------------------<br /> <br />";
                Page.Controls.Add(line);


                assignments.Add(courseCode + " " + assignmentNumber + " " + studentID);

            }
        }
    }
}