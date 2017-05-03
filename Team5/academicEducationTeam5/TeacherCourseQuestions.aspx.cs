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

public partial class TeacherCourseQuestions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            SqlCommand cmd = new SqlCommand("viewQuestions", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@teacher_username", Session["MyUsername"]));
            cmd.Parameters.Add(new SqlParameter("@course_code", Session["MyCourseCode"]));

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
    protected void post_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd = new SqlCommand("answerQuestions", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        //@course_code varchar(30),@answerText varchar(100),@username varchar(30), @questionID int, @student_username varchar(30)

        //To read the input from the user
        //int teacherSsn = Convert.ToInt32(ssn.Value);
        string tusername = username.Value;
        string courseCodeStr = course_code.Value;
        string AnswerText = answer.Value;
        int QuestionID = Convert.ToInt32(questionID.Value);
        string StudentUsername = studentUsername.Value;

        //pass parameters to the stored procedure
        cmd.Parameters.Add(new SqlParameter("@username", tusername));
        cmd.Parameters.Add(new SqlParameter("@course_code", Session["MyCourseCode"]));
        cmd.Parameters.Add(new SqlParameter("@answerText", AnswerText));
        cmd.Parameters.Add(new SqlParameter("@question_id", QuestionID));
        cmd.Parameters.Add(new SqlParameter("@student_username", StudentUsername));

        //Executing the SQLCommand
        cmd.ExecuteNonQuery();

        conn.Close();
        Server.Transfer("TeacherPage.aspx", true);
    }

}