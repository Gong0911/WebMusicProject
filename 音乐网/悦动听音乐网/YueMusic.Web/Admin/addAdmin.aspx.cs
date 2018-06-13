using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YueMusic.Model;
using YueMusic.BLL;

public partial class Admin_addAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;//解决VS验证控件出现 WebForms UnobtrusiveValidationMode 需要“jquery”ScriptResour......的错误解决方案
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
            try
            {
                Admin us = new Admin();
                us.AdminName = txtUserName.Text;//输入要添加的管理员的名字
                us.AdminPassword = txtPassword.Text;//输入要添加的管理员的密码
                int i = AdminManager.AddAdmin(us);//找到dal层的插入的方法

                if (i == 1)//判断管理员表中是否影响了一行数据，如果是执行成功 下一操作
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加成功！');</script>");
                }
            }
            catch(Exception)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('数据库中已存在相同用户名！');</script>");
            }

    }
}