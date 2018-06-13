using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YueMusic.BLL;
using YueMusic.Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserCenter : System.Web.UI.Page
{
    private UserInfo user;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
           

            if (Session["Username"] != null)
            {
                lblName.Text = Session["Username"].ToString();
                lbluser.Text = Session["Username"].ToString();
               
                panelUser.Visible = true;
                panelLR.Visible = false;
            }
            else
            {
                panelLR.Visible = true;
                panelUser.Visible = false;
                ClientScript.RegisterStartupScript(this.GetType(), "true", "<script>alert('你还没有登录，请先登录!');location='Login.aspx'</script>");
            }

           

            ViewState["id"] = Convert.ToInt32(Request.QueryString["id"]);
            Choose();
            BindUser();
            BindUserImage();



        }

    }
   
    private void Choose()//单击左边不同的链接 右边切换不同的内容
    {
        switch (ViewState["id"].ToString())
        {

            case "1": panel_a.Visible = true; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false; break;
            case "2": panel_a.Visible = false; panel_b.Visible = true; panel_c.Visible = false; panel_d.Visible = false; break;
            case "3": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = true; panel_d.Visible = false; break;
            case "4": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = true; break;
            default: break;
        }
    }
    
    protected void lbExit_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("index.aspx");
    }
    protected void BindUser()
    {
        if (Session["Username"] != null)
        {
            string username = Session["Username"].ToString();
            DataTable dt = UserInfoManager.SelectName(username);
            if (dt != null && dt.Rows.Count != 0)
            {
                ListView1.DataSource = dt;
                ListView1.DataBind();
            }
        }
    }
    protected void BindUserImage()
    {
        if (Session["Username"] != null)
        {
            string userimg = Session["Username"].ToString();
            DataTable dt = UserInfoManager.SelectImage(userimg);
            if (dt != null && dt.Rows.Count != 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
    }


    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            string UserId = (ListView1.Items[e.Item.DataItemIndex].FindControl("lblID") as Label).Text;
            Response.Redirect("EditUser.aspx?UserID=" + UserId);
        }
    }
}
