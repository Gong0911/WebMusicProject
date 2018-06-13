using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using YueMusic.BLL;

public partial class Admin_songList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindSong();
        }
    }
    protected void BindSong()
    {
        DataTable dt = SongManager.selectAll();
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            string SongId = (ListView1.Items[e.Item.DataItemIndex].FindControl("lblSID") as Label).Text;
            Response.Redirect("updateSong.aspx?SongID=" + SongId);
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button bt = (Button)sender;
        int soid = Convert.ToInt32(((HiddenField)(bt.Parent.FindControl("HiddenField2"))).Value);
        if (SongManager.deleteID(soid) > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language='javascript' >alert('删除成功！');</script>");
            BindSong();
        }
    }
}