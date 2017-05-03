using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class child_addmission : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            SqlDataAdapter myCommand = new SqlDataAdapter("select S.school_code ,S.name from Schools S", con);
            DataSet ds = new DataSet();
            myCommand.Fill(ds, "Schools");
            
            school.DataSource = ds;
            school.DataTextField = "name";
            school.DataValueField = "school_code";
            school.DataBind();
           
        }

    }

    protected void apply_Click(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd3 = new SqlCommand("applyForChild", conn);
        cmd3.CommandType = CommandType.StoredProcedure;

        string pUsername = Session["MyUsername"].ToString();
        int cSsn = (int)Int32.Parse(c_ssn.Text);
        string cName = name.Text;
        DateTime bDate = Convert.ToDateTime(bdate.Text);
        string cGender = Convert.ToString(Request.Form["gender"]);
        int cSchool =(int)Int32.Parse(Request.Form["school"]);

        cmd3.Parameters.Add(new SqlParameter("@pusername", pUsername));
        cmd3.Parameters.Add(new SqlParameter("@ssn", cSsn));
        cmd3.Parameters.Add(new SqlParameter("@name",cName));
        cmd3.Parameters.Add(new SqlParameter("@birthday", bDate));
        cmd3.Parameters.Add(new SqlParameter("@gender", cGender));
        cmd3.Parameters.Add(new SqlParameter("@school_code", cSchool));

       
            cmd3.ExecuteNonQuery();
            Response.Redirect("parent-loggedin-home.aspx");
   
        conn.Close();

    }
}