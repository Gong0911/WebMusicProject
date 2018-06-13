using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using YueMusic.Model;
using YueMusic.BLL;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            try
            {
                UserInfo us = new UserInfo();
                us.Username = txtUserName.Text;
                us.Password = txtPassword.Text;
                us.Email = txtEmail.Text;
                us.Telephone = txtPhone.Text;
                int i = UserInfoManager.AddUser(us);
               
                if (i == 1)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('注册成功！');</script>");
                }
              

            }
            catch(Exception)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('用户名重复,注册失败！');</script>");

                //Response.Write("错误原因：" + ex.Message);
            }

        }
    }
    
    

}
