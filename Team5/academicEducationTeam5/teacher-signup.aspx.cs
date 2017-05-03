using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class teacherSignUp : System.Web.UI.Page
{
   //global::System.Web.UI.WebControls.Button teacherSubmit;
    // The page_load method is called before loading the corresponding HTML file to the browser
    protected void Page_Load(object sender, EventArgs e)
    {
        /*try
        {
            teacherSubmit.Click += new EventHandler(this.SignUp);
        }
        catch (System.IO.IOException ex)
        {
           // Console.WriteLine("Error reading from {0}. Message = {1}", path, ex.Message);
        }*/

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        //Get the information of the connection to the database
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd = new SqlCommand("signUpTeacher", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        Console.WriteLine("hi");

        //To read the input from the user
        int teacherSsn = Convert.ToInt32(ssn.Value);
        string fName = first_name.Value;
        string mName = middle_name.Value;
        Console.WriteLine(mName);
        string lName = last_name.Value;
        Console.WriteLine(lName);
        DateTime birthday = Convert.ToDateTime(birth_date.Value);
        Console.WriteLine(birthday);
        string tAddress = address.Value;
        Console.WriteLine(tAddress);
        string tEmail = email.Value;
        Console.WriteLine(tEmail);
        string tGender = Request.Form["gender"];
        Console.WriteLine(tGender);


        //pass parameters to the stored procedure
        cmd.Parameters.Add(new SqlParameter("@ssn", teacherSsn));
        cmd.Parameters.Add(new SqlParameter("@first_name", fName));
        cmd.Parameters.Add(new SqlParameter("@middle_name", mName));
        cmd.Parameters.Add(new SqlParameter("@last_name", lName));
        cmd.Parameters.Add(new SqlParameter("@birth_date", birthday));
        cmd.Parameters.Add(new SqlParameter("@address", tAddress));
        cmd.Parameters.Add(new SqlParameter("@email", tEmail));
        cmd.Parameters.Add(new SqlParameter("@gender", tGender));
        //Executing the SQLCommand
        cmd.ExecuteNonQuery();
        conn.Close();
        Server.Transfer("index.aspx", true);
    }
}
