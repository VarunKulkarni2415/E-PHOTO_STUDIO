using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        details d = new details();
        d.email = semail.Text;
        d.password = spass.Text;
        d.conpass = scpass.Text;

        d.ans = secquestion.Text;
        Session["data"] = d;


        if (Session["data"] != null)
        {
            try
            {
                //to check user already exist or not
                string strcmd = "select userid from reguser where emailid='" + semail.Text + "'";
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                if (dt.Rows.Count > 0)
                {
                    smessage.Text = "User already exits!";
                }
                else
                {
                    strcmd = "insert into reguser values('" + semail.Text + "','" + spass.Text + "','" + scpass.Text + "','" + secquestion.Text + "')";
                    SQLHelper.ExecuteNonQuery(strcmd);
                    smessage.Text = "Account created successfully, now Login to Book Order.";
                    semail.Text = "";
                    spass.Text = "";
                   scpass.Text = "";
                    secquestion.Text = "";
                    semail.Focus();
                }
            }
            catch (Exception ex)
            {
                smessage.Text = ex.Message;
            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:54427/Home.aspx");

    }
}