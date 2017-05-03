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

public partial class CheckReviews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd1 = new SqlCommand("checkReviews", conn);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add(new SqlParameter("@school_code", Convert.ToInt32(Session["MySchoolCode"])));


        ArrayList schools = new ArrayList();
        ArrayList reviews = new ArrayList();


        SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string schoolName = rdr.GetString(rdr.GetOrdinal("name"));
            string review = rdr.GetString(rdr.GetOrdinal("review"));
           

            if (!reviews.Contains(schoolName+" "+review))
            {
                if (!schools.Contains(schoolName))
                {
                    Label cellSchool = new Label();
                    cellSchool.Text = "School: " + schoolName + "  <br /> <br />";
                    Page.Controls.Add(cellSchool);
                    schools.Add(schoolName);
                }
                Label cellReview = new Label();
                cellReview.Text = "Grade: " + review + "  <br /> <br />";
                Page.Controls.Add(cellReview);
                
                Label line = new Label();
                line.Text = "------------------------------------------------------------------------<br /> <br />";
                Page.Controls.Add(line);

                reviews.Add(schoolName + " " + review);
            }
        }
    }
}
