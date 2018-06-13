using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;

public partial class Admin_commentList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        BindComment();
    }

    private void BindComment()
    {
        DataTable dt = CommentManager.allComment();
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button bt = (Button)sender;//把button按钮实例化
        int userid = Convert.ToInt32(((HiddenField)(bt.Parent.FindControl("HiddenField2"))).Value);
        if (CommentManager.DeleteID(userid) > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language='javascript' >alert('删除成功！');</script>");
            BindComment();//执行完后重新绑定数据
        }
    }
}