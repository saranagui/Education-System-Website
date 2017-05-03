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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd1 = new SqlCommand("viewMyCourses", conn);
        cmd1.CommandType = CommandType.StoredProcedure;

        ArrayList courses = new ArrayList();
        ArrayList levels = new ArrayList();
        ArrayList grades = new ArrayList();

        cmd1.Parameters.Add(new SqlParameter("@username", Session["MyUsername"]));

        SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string courseCode = rdr.GetString(rdr.GetOrdinal("course_code"));
            string courseName = rdr.GetString(rdr.GetOrdinal("course_name"));
            string courseDescription = rdr.GetString(rdr.GetOrdinal("course_description"));
            string grade = rdr.GetInt32(rdr.GetOrdinal("grade"))+"";
            string level = rdr.GetString(rdr.GetOrdinal("clevel"));
            
            if (!courses.Contains(courseCode))
            {
                if (!levels.Contains(level))
                {
                    Label cellLevel = new Label();
                    cellLevel.Text = "Level: " + level + "  <br /> <br />";
                    Page.Controls.Add(cellLevel);
                    levels.Add(level);
                }
                if (!grades.Contains(grade))
                {
                    Label cellGrade = new Label();
                    cellGrade.Text = "Grade: " + grade + "  <br /> <br />";
                    Page.Controls.Add(cellGrade);
                    grades.Add(grade);
                }
                Label cellName = new Label();
                cellName.Text = "Name: " + courseName + "  <br /> <br />";
                Page.Controls.Add(cellName);

                Label cellCode = new Label();
                cellCode.Text = "Code: " + courseCode + "  <br /> <br />";
                Page.Controls.Add(cellCode);

                Label line = new Label();
                line.Text = "------------------------------------------------------------------------<br /> <br />";
                Page.Controls.Add(line);

                courses.Add(courseCode);
            }
        }
    }
}