using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YueMusic.Model;
using YueMusic.BLL;


public partial class Admin_addNotice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
    }

    protected void btnAddNotice_Click(object sender, EventArgs e)
    {
        Notice us = new Notice();
        us.NoticeTitle = txtNoticeTitle.Text;
        us.NoticeContent = txtNoContent.Text;
        int i = NoticeManager.addNotice(us);

        if (i == 1)
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加成功！');</script>");
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加失败！');</script>");
        }
    }
}
