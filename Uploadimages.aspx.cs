using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Uploadimages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            string[] strExt = { ".jpg",".jpeg",".png",".bmp"};
            if(strExt.Contains(ext.ToLower()))
            {
                string strPath = Server.MapPath("~//Portfolioimages//");
                string subDir = Guid.NewGuid().ToString();
                Directory.CreateDirectory(strPath + subDir);
                string strFilePath = "~/Portfolioimages/" + subDir + "/" + FileUpload1.FileName;
                FileUpload1.SaveAs(strPath + "/" + subDir + "/" + FileUpload1.FileName);
                //save to table
                string strcmd = "insert into UploadPhoto(picPath) values('" + strFilePath + "')";
                SQLHelper.ExecuteNonQuery(strcmd);
                Label1.Text = "Photo uploaded successfully.";
            }
        }
    }
}