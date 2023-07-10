using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignupData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string strcmd;
        if (e.CommandName == "Del")
        {
            string strDetail = "";
            int index = 0;
            if (e.CommandName == "Del")
            {
                index = Convert.ToInt32(e.CommandArgument);
                strDetail = GridView1.Rows[index].Cells[0].Text;
                strcmd = "Delete from reguser where userid=" + strDetail;
                SQLHelper.ExecuteNonQuery(strcmd);
                Response.Redirect("~/SignupData.aspx");
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}