using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class parent_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void psignup_Click(object sender, EventArgs e)
    {
      
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd3 = new SqlCommand("parentSignUp", conn);
        cmd3.CommandType = CommandType.StoredProcedure;
        

        //To read the input from the user


        string fName = first_name.Text;
        string lName = last_name.Text;
        string pEmail = email.Text;
        string pMobile = mobile.Text;
        string pAddress = address.Text;
        string pHomeNumber = homenumber.Text;
        string pUsername = username.Text;
        string pPassword = parent_password.Text;
        
        //pass parameters to the stored procedure
        cmd3.Parameters.Add(new SqlParameter("@first_name", fName));
        cmd3.Parameters.Add(new SqlParameter("@last_name", lName));
        cmd3.Parameters.Add(new SqlParameter("@email", pEmail));
        cmd3.Parameters.Add(new SqlParameter("@mobile_number", pMobile));
        cmd3.Parameters.Add(new SqlParameter("@parents_address", pAddress));
        cmd3.Parameters.Add(new SqlParameter("@home_number", pHomeNumber));
        cmd3.Parameters.Add(new SqlParameter("@username", pUsername));
        cmd3.Parameters.Add(new SqlParameter("@parent_password", pPassword));

        SqlCommand cmd2 = new SqlCommand("select count(*) from Parents P where P.username='" + pUsername + "'" , conn);
        cmd2.CommandType = CommandType.Text;

        /*SqlCommand cmd4 = new SqlCommand("loginPeople", conn);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.Add(new SqlParameter("@username", pUsername));
        cmd4.Parameters.Add(new SqlParameter("@password", pPassword));
        cmd4.Parameters.Add(new SqlParameter("@type", "Parent"));
        //Executing the SQLCommand*/
        Console.Write(cmd2.ExecuteNonQuery());
        if ((int)cmd2.ExecuteScalar()==0)
        {

            
            cmd3.ExecuteNonQuery();
         
                Session["MyUsername"] = pUsername;
                Session["MyPassword"] = pPassword;
                Response.Redirect("parent-signup-addphone.aspx");
            
        }
        else
        {
           Response.Redirect(Request.RawUrl);
    
        }
        conn.Close();


    }

  
}