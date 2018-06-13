using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;

public partial class RankList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["id"] = Convert.ToInt32(Request.QueryString["id"]);
        ChooseRanklist();
        BindNewSong();
        BindHotSong();
        BindHotSingers();
    }

    private void ChooseRanklist()//单击左边不同的链接 右边切换不同的内容
    {
        switch (ViewState["id"].ToString())
        {

            case "1": panel1.Visible = true; break;
            case "2": panel1.Visible = false; panel2.Visible = true; break;
            case "3": panel1.Visible = false; panel3.Visible = true; break;       
            default: break;
        }
    }

    private void BindNewSong()
    {
        DataTable dt = SongManager.selectAllNew();
        if (dt != null && dt.Rows.Count != 0)
        {
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
    private void BindHotSong()
    {
        DataTable dt = SongManager.selectAllHot();
        if (dt != null && dt.Rows.Count != 0)
        {
            ListView2.DataSource = dt;
            ListView2.DataBind();
        }
    }
    private void BindHotSingers()
    {
        DataTable dt = SingerManager.selectTop12();
        if (dt != null && dt.Rows.Count != 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        DataBind();
    }
}