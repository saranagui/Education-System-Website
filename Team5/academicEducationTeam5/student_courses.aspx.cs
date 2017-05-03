using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class studentCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void viewCourses_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();

        SqlConnection conn = new SqlConnection(connStr);

        conn.Open();
        SqlCommand cmd = new SqlCommand("updateStudent", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);
       

        cmd.Parameters.Add(new SqlParameter("@ssn", s));
        


        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void postQuestion_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("postQuestion", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);
        String cc = coursecode.Value;
        String q = questiontxt.Value;
        

        cmd.Parameters.Add(new SqlParameter("@c_code", cc));
        cmd.Parameters.Add(new SqlParameter("@q_question", q));
        cmd.Parameters.Add(new SqlParameter("@s_ssn", s));
        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("Posted");
            Response.Redirect("student_courses.aspx");
        }
        catch
        {
            Response.Write("Oops, an error occurred");
        }

        conn.Close();
    }
    protected void viewQsAndAs_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();

        SqlConnection conn = new SqlConnection(connStr);

        conn.Open();
        SqlCommand cmd = new SqlCommand("viewQuestionAndAnswer", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);
        String cc = coursecode.Value;

        cmd.Parameters.Add(new SqlParameter("@s_ssn", s));
        cmd.Parameters.Add(new SqlParameter("@c_code", cc));
       
        
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void viewAssignments_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();

        SqlConnection conn = new SqlConnection(connStr);

        conn.Open();
        SqlCommand cmd = new SqlCommand("viewAssignments", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);

        cmd.Parameters.Add(new SqlParameter("@s_ssn", s));
  

        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void solveAssign_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("solveAssignment", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);
        String cc = coursecode.Value;
        String sol= assignSol.Value;
        int n = Convert.ToInt32(assignNum.Value);

        cmd.Parameters.Add(new SqlParameter("@c_code", cc));
        cmd.Parameters.Add(new SqlParameter("@number", n));
        cmd.Parameters.Add(new SqlParameter("@s_ssn", s));
        cmd.Parameters.Add(new SqlParameter("@sol", sol));

        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("Solution submitted");
            Response.Redirect("student_courses.aspx");
        }
        catch
        {
            Response.Write("Oops, an error occurred");
        }
        conn.Close();
    }
    protected void viewGrades_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbbConn"].ToString();

        SqlConnection conn = new SqlConnection(connStr);

        conn.Open();
        SqlCommand cmd = new SqlCommand("viewAssignmentsGrades", conn);
        cmd.CommandType = CommandType.StoredProcedure;


        int s = Convert.ToInt32(ssn.Value);

        cmd.Parameters.Add(new SqlParameter("@s_ssn", s));


        cmd.ExecuteNonQuery();
        conn.Close();
    }
}