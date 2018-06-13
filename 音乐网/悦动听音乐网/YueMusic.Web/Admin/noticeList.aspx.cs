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

public partial class Admin_noticeList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindNotice();
        }
        
    }

    protected  void BindNotice()
    {
        DataTable dt = NoticeManager.selectAll();
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button bt = (Button)sender;
        int userid = Convert.ToInt32(((HiddenField)(bt.Parent.FindControl("HiddenField2"))).Value);
        if (NoticeManager.deleteID(userid) > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language='javascript' >alert('删除成功！');</script>");
            BindNotice();
        }
    }

    //protected void PreRender()
    //{
    //    DataBind();
    //}

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if(e.CommandName =="Edit")
        {
            string NotId = (ListView1.Items[e.Item.DataItemIndex].FindControl("lblID") as Label).Text;
            Response.Redirect("updateNotice.aspx?NoticeID=" + NotId);
        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        DataBind();
    }
}