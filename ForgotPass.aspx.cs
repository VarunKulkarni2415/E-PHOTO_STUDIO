using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgotPass : System.Web.UI.Page
{
    string addinfo;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand cmd = new SqlCommand("select ans from reguser where emailid='" + email.Text + "'", con);
        cmd.ExecuteNonQuery();
        addinfo = cmd.ExecuteScalar().ToString();
        con.Close();
        if (addinfo == secanswer.Text)
        {
            Response.Redirect("http://localhost:49897/EventBookingForm.aspx");
        }
        else
        {
            formessage.Text = " Incorrect..!";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:54427/Home.aspx");
    }
}
