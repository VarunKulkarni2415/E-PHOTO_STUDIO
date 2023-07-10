using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bookings : System.Web.UI.Page
{
   // string strcmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    //{
    //    string strDetail = "";
    //    int index = 0;
    //    if (e.CommandName == "Del")
    //    {
    //        index = Convert.ToInt32(e.CommandArgument);
    //        strDetail = GridView1.Rows[index].Cells[0].Text;
    //        strcmd = "Delete from orderdetails where orderid=" + strDetail;
    //        SQLHelper.ExecuteNonQuery(strcmd);
    //        Response.Redirect("~/Admin.aspx");

    //    }
    //}

    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}
}