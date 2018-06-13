using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using YueMusic.BLL;
using YueMusic.Model;

public partial class Admin_adminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string adminname = txtAdminName.Text.Trim();
        string adminpwd = txtAdminPwd.Text.Trim();
      
       DataTable dt = AdminManager.Login(adminname, adminpwd);
        if (dt.Rows.Count == 1)
        {
            Session["adminname"] = adminname;
            Response.Redirect("~/Admin/mainPage.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "false", "<script>alert('账号或密码错误，请重新输入！')</script>");
        }
                
             
       
    }
}
