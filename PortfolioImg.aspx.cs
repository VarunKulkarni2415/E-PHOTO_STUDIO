using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class PortfolioImg : System.Web.UI.Page
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
                strcmd = "Delete from UploadPhoto where Id=" + strDetail;
                SQLHelper.ExecuteNonQuery(strcmd);
                Response.Redirect("~/PortfolioImg.aspx");
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}