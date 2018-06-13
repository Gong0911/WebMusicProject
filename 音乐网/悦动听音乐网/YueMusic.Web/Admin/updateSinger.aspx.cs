using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;
using YueMusic.Model;
using System.Data.SqlClient;

public partial class Admin_updateSinger : System.Web.UI.Page
{
    private Singer singer;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }


        if (!IsPostBack)
        {
            if (Request.QueryString["SingerID"] != null)
            {
                int id = int.Parse(Request.QueryString["SingerID"]);
                DataTable dt = SingerManager.selectID(id);

                ViewState["object"] = singer;//使用视图 ViewState 因为大量的session会增加服务器负担 将需要的保存在视图中
                txtSingerid.Text = Convert.ToString(dt.Rows[0]["SingerID"]);
                txtSingername.Text = Convert.ToString(dt.Rows[0]["SingerName"]);
                txtType.Text = Convert.ToString(dt.Rows[0]["SingerType"]);
                txtSiContent.Text = Convert.ToString(dt.Rows[0]["SingerInfo"]);
                sinImage.ImageUrl = ResolveUrl(dt.Rows[0]["SingerImg"].ToString());

            }
        }
    }

    protected void lbtnSave_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            singer = new Singer();
            singer.SingerId = Convert.ToInt32(txtSingerid.Text.Trim());
            singer.SingerName = txtSingername.Text.Trim();
            singer.SingerType = ddlsingerType.SelectedItem.Text;
            singer.SingerInfo = txtSiContent.Text.Trim();

            if (download.HasFile)
            {
                string filePath = download.PostedFile.FileName;
                string filename = filePath.Substring(filePath.LastIndexOf("\\") + 1);
                string serverpath = Server.MapPath(@"~\image\singer_img\") + filename;
                string relativepath = @"~\image\singer_img\" + filename;
                download.PostedFile.SaveAs(serverpath);
                singer.SingerImg = relativepath;
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先上传歌手图片！');</script>");
                return;
            }


            try
            {
                if (ViewState["object"] == null)
                {

                    if (SingerManager.updateId(singer) == 1)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script>alert('保存成功！');</script>");
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script>alert('保存失败！');</script>");
                    }

                }


            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }

        }
    }
}