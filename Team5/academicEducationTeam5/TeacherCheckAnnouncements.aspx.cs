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


public partial class TeacherCheckAnnouncements : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();

        //create a new connection
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        int mySchoolCode = Convert.ToInt32(Session["MySchoolCode"]);
        /*create a new SQL command which takes as parameters the name of the stored procedure and
         the SQLconnection name*/
        SqlCommand cmd1 = new SqlCommand("select a.* from Announcements a", conn);
        cmd1.CommandType = CommandType.Text;

        ArrayList announcements = new ArrayList();


        SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string announcementDate = rdr.GetDateTime(rdr.GetOrdinal("announcement_date")) + "";
            string theTitle = rdr.GetString(rdr.GetOrdinal("title"));
            string announcementDescription = rdr.GetString(rdr.GetOrdinal("announcement_description"));
            string announcementType = rdr.GetString(rdr.GetOrdinal("announcement_type"));


            if (!announcements.Contains(announcementDate + " " + theTitle))
            {

                Label cellAnnouncementDate = new Label();
                cellAnnouncementDate.Text = "Posted: " + announcementDate + "  <br /> <br />";
                Page.Controls.Add(cellAnnouncementDate);

                Label cellTitle = new Label();
                cellTitle.Text = "Title: " + theTitle + "  <br /> <br />";
                Page.Controls.Add(cellTitle);

                Label cellDescription = new Label();
                cellDescription.Text = "Description: " + announcementDescription + "  <br /> <br />";
                Page.Controls.Add(cellDescription);

                Label cellType = new Label();
                cellType.Text = "Announcement: " + announcementType + "  <br /> <br />";
                Page.Controls.Add(cellType);

                Label line = new Label();
                line.Text = "------------------------------------------------------------------------<br /> <br />";
                Page.Controls.Add(line);

                announcements.Add(announcementDate + " " + theTitle);
            }
        }
        conn.Close();

    }
}