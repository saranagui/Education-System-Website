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

public partial class TeacherAssignments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd1 = new SqlCommand("viewAllAssignments", conn);
        cmd1.CommandType = CommandType.StoredProcedure;

        ArrayList assignments = new ArrayList();
        ArrayList courses = new ArrayList();

        cmd1.Parameters.Add(new SqlParameter("@username", Session["MyUsername"]));

        SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string courseCode = rdr.GetString(rdr.GetOrdinal("course_code2"));
            string assignmentNumber = rdr.GetInt32(rdr.GetOrdinal("assignment_number")) + "";
            string postingDate = rdr.GetDateTime(rdr.GetOrdinal("posting_date")) + "";
            string dueDate = rdr.GetDateTime(rdr.GetOrdinal("due_date")) + "";
            string content = rdr.GetString(rdr.GetOrdinal("content"));

            if (!assignments.Contains(courseCode + " " + assignmentNumber))
            {
                if (!courses.Contains(courseCode))
                {
                    Label cellCourse = new Label();
                    cellCourse.Text = "Course: " + courseCode + "  <br /> <br />";
                    Page.Controls.Add(cellCourse);
                    courses.Add(courseCode);
                }
                Label cellAssignmentNuber = new Label();
                cellAssignmentNuber.Text = "Assignment #: " + assignmentNumber + "  <br /> <br />";
                Page.Controls.Add(cellAssignmentNuber);
                assignments.Add(courseCode + " " + assignmentNumber);

                Label cellPDate = new Label();
                cellPDate.Text = "Posted: " + postingDate + "  <br /> <br />";
                Page.Controls.Add(cellPDate);

                Label cellDDate = new Label();
                cellDDate.Text = "Due: " + dueDate + "  <br /> <br />";
                Page.Controls.Add(cellDDate);

                Label cellcontent = new Label();
                cellcontent.Text = "Content: " + content + "  <br /> <br />";
                Page.Controls.Add(cellcontent);

                Label line = new Label();
                line.Text = "------------------------------------------------------------------------<br /> <br />";
                Page.Controls.Add(line);
            }
        }
    }
}