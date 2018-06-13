using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using YueMusic.BLL;
using System.Configuration;

public partial class userInfo : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminname"] == null)//判断管理员是否登录，如果session值为空，
        {
            Response.Redirect("adminLogin.aspx");//则跳转到管理员登录页面
        }
        BindUsers();
    }
    private void BindUsers()//绑定用户信息
    {
        DataTable dt = UserInfoManager.alluser();//创建数据表表  往业务逻辑层找到从数据访问层返回回来的alluser()方法
        ListView1.DataSource = dt;//给listview绑定数据源
        ListView1.DataBind();//绑定数据
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button bt = (Button)sender;//把button按钮作为事件转化为button
        int userid = Convert.ToInt32(((HiddenField)(bt.Parent.FindControl("HiddenField2"))).Value);
        if (UserInfoManager.DeleteID(userid) > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language='javascript' >alert('删除成功！');</script>");
            BindUsers();//执行完后重新绑定数据
        }
    }
   
    protected void Page_PreRender(object sender, EventArgs e)
    {
        DataBind();
    }
}