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

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindNotice();
        BindHotSong();
        BindNewSong();
        BindSinger();

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
            }
        }

    }

    protected void lbExit_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("index.aspx");
    }

    private void BindNotice()
    {
        DataTable dt = NoticeManager.selectTop10();
        if (dt != null && dt.Rows.Count != 0)
        {
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }

    private void BindHotSong()
    {
        DataTable dt = SongManager.selectTop12();
        if (dt != null && dt.Rows.Count != 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
    private void BindNewSong()
    {
        DataTable dt = SongManager.selectTop8();
        if (dt != null && dt.Rows.Count != 0)
        {
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }
    }

    private void BindSinger()
    {
        DataTable dt = SingerManager.selectTop5();
        if (dt != null && dt.Rows.Count != 0)
        {
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
        }
    }

    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Search.aspx");
    }
}
