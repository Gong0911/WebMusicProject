using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using YueMusic.Model;
using YueMusic.BLL;

public partial class Admin_addSinger : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        if (!IsPostBack)
        {

            BindType();
        }
    }

    protected void btnAddSinger_Click(object sender, EventArgs e)
    {
        Singer si = new Singer();
        si.SingerName = txtSingerName.Text;
        si.SingerType = ddlType.SelectedItem.Text;
        si.SingerInfo = txtSiContent.Text;

        try
        {
            if (uploadImg.HasFile)
            {
                string filePath = uploadImg.PostedFile.FileName;
                string filename = filePath.Substring(filePath.LastIndexOf("\\") + 1);
                string serverpath = Server.MapPath(@"~\image\singer_img\") + filename;
                string relativepath = @"~\image\singer_img\" + filename;
                uploadImg.PostedFile.SaveAs(serverpath);
                si.SingerImg = relativepath;
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先上传歌手图片！');</script>");
                return;
            }
            if (SingerManager.addSinger(si) == 1)
            {
                txtSingerName.Text = txtSiContent.Text = "";
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加成功！');</script>");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('添加失败！');</script>");

            }

        }
        catch (Exception ex)
        {
            Response.Write("错误原因：" + ex.Message);
        }
    }

    protected void BindType()
    {
        ddlType.Items.Clear();
        ddlType.Items.Add(new ListItem("华语男歌手"));
        ddlType.Items.Add(new ListItem("华语女歌手"));
        ddlType.Items.Add(new ListItem("华语组合/乐队"));

        ddlType.Items.Add(new ListItem("欧美男歌手"));
        ddlType.Items.Add(new ListItem("欧美女歌手"));
        ddlType.Items.Add(new ListItem("欧美组合/乐队"));

        ddlType.Items.Add(new ListItem("日本男歌手"));
        ddlType.Items.Add(new ListItem("日本女歌手"));
        ddlType.Items.Add(new ListItem("日本组合/乐队"));

        ddlType.Items.Add(new ListItem("韩国男歌手"));
        ddlType.Items.Add(new ListItem("韩国女歌手"));
        ddlType.Items.Add(new ListItem("韩国组合/乐队"));

        ddlType.Items.Add(new ListItem("其他男歌手"));
        ddlType.Items.Add(new ListItem("其他女歌手"));
        ddlType.Items.Add(new ListItem("其他组合/乐队"));

    }



}