using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.IO;


public partial class Portfolio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            LoadImages();
          
        }
    }
   
    private void LoadImages()
    {
        try
        {
            string strcmd = "select picPath from UploadPhoto";
            DataTable dt = new DataTable();
            dt = SQLHelper.FillData(strcmd);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}