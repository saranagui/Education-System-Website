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

public partial class accepted_schools : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string p_username = Session["MyUsername"].ToString();//Session??

        if (!IsPostBack)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            SqlDataAdapter myCommand = new SqlDataAdapter("select distinct C.name,C.ssn from Children C join Children_appliedForBy_Parents_at_Schools CPS on CPS.ssn=C.ssn where CPS.username='"+p_username+"'", con);
            DataSet ds1 = new DataSet();
            myCommand.Fill(ds1, "Children");

            child.DataSource = ds1.Tables[0];
            child.DataTextField = "name";
            child.DataValueField ="ssn";
            child.DataBind();

        }
       

    }

    protected void proceed_Click(object sender, EventArgs e)
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

      
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

        int cssn = (int)Int32.Parse(Request.Form["child"]);

            SqlCommand cmd = new SqlCommand("viewAccepted", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@ssn", cssn));
        string csl = cmd.CommandText;
            SqlDataAdapter myCommand = new SqlDataAdapter(csl, con);
            DataSet ds1 = new DataSet();
        myCommand.SelectCommand.CommandType = CommandType.StoredProcedure;
        myCommand.SelectCommand.Parameters.AddWithValue("@ssn", cssn);
        myCommand.Fill(ds1, "Schools");



            a_schools.DataSource = ds1.Tables[0];
            a_schools.DataTextField = "School Name";
            a_schools.DataValueField = "School Code";
            a_schools.DataBind();

        

    }

       private DataTable GetData()
       {
           string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        
           using (SqlConnection con = new SqlConnection(constr))
           {
            SqlCommand cmd = new SqlCommand("viewAccepted", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@ssn", (int) Int32.Parse(Request.Form["child"])));
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

    protected void enroll_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd9 = new SqlCommand("enrollChild", con);
        cmd9.CommandType = CommandType.StoredProcedure;
        con.Open();
        int cssn = (int)Int32.Parse(Request.Form["child"]);
        int schoolCode = (int)Int32.Parse(Request.Form["a_schools"]);
        cmd9.Parameters.Add(new SqlParameter("@ssn", cssn));
        cmd9.Parameters.AddWithValue("@school_code", schoolCode);


        try
        {
            cmd9.ExecuteNonQuery();
            Response.Redirect("parent-loggedin-home.aspx");
        }
        catch
        {
            Response.Write("Already Enrolled");
        }
        con.Close();
    }
}