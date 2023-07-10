using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EventBookingForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcmd = "insert into orderdetails (fullname,mobno,currentaddress,eventtype,eventaddress,fromdate,todate,package,status) values('" + fullname.Text + "','" + phone.Text + "','" + cadd.Text + "','" + DropDownList1.SelectedValue + "','" + eadd.Text + "','" + txtfromdate_CalendarExtender.SelectedDate + "','" + txttodate_CalendarExtender.SelectedDate + "','" + DropDownList2.SelectedValue + "','pending')";
        SQLHelper.ExecuteNonQuery(strcmd);
        Label1.Text = "Your Order Request has been sent successfully.";
        fullname.Text = "";
        eadd.Text = "";
        cadd.Text = "";
        phone.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        txtfromdate.Text = "";
        txttodate.Text = "";

    }
}