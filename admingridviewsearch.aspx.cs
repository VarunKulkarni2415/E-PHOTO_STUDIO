using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admingridviewsearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!this.IsPostBack)
        //{
        //    this.BindGrid();
        //}
    }
  

    private void BindGrid()
    {
        string constr = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                string strcmd= "SELECT orderid, fullname, mobno,currentaddress,eventtype,eventaddress,fromdate,todate,package,status FROM orderdetails WHERE fullname LIKE '%" + TextBox1.Text + "%'";
                cmd.CommandText = strcmd;
                cmd.Connection = con;
                
                DataTable dt = new DataTable();
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }

   



    protected void Button1_Click(object sender, EventArgs e)
    {
        this.BindGrid();
    }
}