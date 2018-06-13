using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;


public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {


            if (Session["Username"] != null)
            {
                lblName.Text = Session["Username"].ToString();               
                panelUser.Visible = true;
                panelLR.Visible = false;
            }
            else
            {
                panelLR.Visible = true;
                panelUser.Visible = false;
                ClientScript.RegisterStartupScript(this.GetType(), "true", "<script>alert('你还没有登录，请先登录!');location='Login.aspx'</script>");
            }

        }
    }
    protected void lbExit_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("index.aspx");
    }

    //public void search()
    //{
    //    string keys = txtSearch.Text.Trim();
    //    DataTable dt = SongManager.SelectKeys(keys);
    //    if (dt != null && dt.Rows.Count != 0)
    //    {
    //        DataList1.DataSource = dt;
    //        DataList1.DataBind();
    //    }
    //    else
    //    {
    //        ClientScript.RegisterStartupScript(this.GetType(), "false", "<script>alert('没有找着相关内容！')</script>");
    //    }
    //}

    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        DataTable dtSearch = SongManager.selectSongName(txtSearch.Text.Trim());
        DataList1.DataSource = dtSearch;
        DataList1.DataBind();
    }
}