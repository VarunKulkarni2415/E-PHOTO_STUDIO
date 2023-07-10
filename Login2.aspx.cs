using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login2 : System.Web.UI.Page
{
    SqlConnection con;
    int count;
    string password, password1;
    string email;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        details d1 = new details();
        d1.email1 = lemail.Text;
        d1.pass1 = lpass.Text;
        Session["data"] = d1;


        string cs = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand cmd = new SqlCommand("select emailid from reguser where emailid='" + lemail.Text + "'", con);
        cmd.ExecuteNonQuery();
        email = cmd.ExecuteScalar().ToString();
        con.Close();
        if (email == "UdayAdmin919@gmail.com")
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select password from reguser where emailid='" + lemail.Text + "'", con);
            password1 = cmd1.ExecuteScalar().ToString().Replace(" ", "");
            con.Close();
            if (password1 == lpass.Text)
            {
                Response.Redirect("~/AdminPage.aspx");
            }
            else
            {
                lmessage.Text = "incorrect password";
            }
        }
        else
        {
            string cs1 = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
            SqlConnection con1 = new SqlConnection(cs1);
            con1.Open();
            SqlCommand cmd2 = new SqlCommand("select count(*) from reguser where emailid='" + lemail.Text + "'", con1);
            cmd2.ExecuteNonQuery();
            int temp = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
            con1.Close();
            if (temp == 1)
            {
                con1.Open();
                SqlCommand cmd1 = new SqlCommand("select password from reguser where emailid='" + lemail.Text + "'", con1);
                password = cmd1.ExecuteScalar().ToString().Replace(" ", "");
                con1.Close();
                if (password == lpass.Text)
                {
                    Response.Redirect("~/EventBookingForm.aspx");
                }
                else
                {
                    lmessage.Text = "Password Incorrect..!";
                }
            }
            else
            {
               lmessage.Text = "password incorrect..!";
            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:54427/Home.aspx");

    }
}