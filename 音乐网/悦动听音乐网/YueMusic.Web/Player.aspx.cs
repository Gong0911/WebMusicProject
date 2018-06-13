using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindUrl();
    }
    private void BindUrl()
    {
        int songID;
        if (Request.QueryString["ID"] != null)
        {
            songID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            ViewState["vid"] = songID;
            DataTable dt = SongManager.selectID(songID);
            if (dt != null && dt.Rows.Count != 0)
            {
                VDHF.Value = dt.Rows[0][5].ToString().Replace("~", ".");

            }
        }
    }
}