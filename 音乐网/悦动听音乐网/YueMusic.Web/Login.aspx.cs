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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imgCode_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUserName.Text.Trim();
        string password = txtPassword.Text.Trim();
        string checkcode = Session["CheckCode"].ToString();
        //string checkcode = txtCheckCode.Text.Trim();

        if (checkcode.ToLower() == txtCheckCode.Text || checkcode.ToUpper() == txtCheckCode.Text)

        {
           
            DataTable dt = UserInfoManager.Login(username, password);
            if (dt.Rows.Count == 1)
            {
                Session["Username"] = username;
                Response.Redirect("~/index.aspx");
            }
        }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "false", "<script>alert('验证码错误！')</script>");
            }
            
     }
     
    }
