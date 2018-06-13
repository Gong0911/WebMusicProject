using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using YueMusic.Model;
using YueMusic.BLL;

public partial class Admin_addSongType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Song us = new Song ();
            us.SType = txtSongType.Text;
           
            int i = SongManager.AddSongType(us);
            if (i > 0)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加成功！');</script>");
            }
        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('数据库中已存在相同用户名！');</script>");
            Response.Write("错误原因：" + ex.Message);
        }
    }
}