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

public partial class TeacherStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd1 = new SqlCommand("viewStudentsITeach", conn);
        cmd1.CommandType = CommandType.StoredProcedure;

        ArrayList studentsOfTeacher = new ArrayList();
        ArrayList grades = new ArrayList();

        cmd1.Parameters.Add(new SqlParameter("@username", Session["MyUsername"]));

        SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string studentGrade = rdr.GetInt32(rdr.GetOrdinal("grade")) + "";
            string studentName = rdr.GetString(rdr.GetOrdinal("name"));
            
            if (!studentsOfTeacher.Contains(studentName+" "+ studentGrade))
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

                Label line = new Label();
                Page.Controls.Add(line);

                studentsOfTeacher.Add(studentName + " " + studentGrade);
            }
        }
    }
    protected void post_Click(object sender, EventArgs e)
    {

    }
}