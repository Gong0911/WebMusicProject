using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;

public partial class SingerDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int singerID;
        if (Request.QueryString["ID"] != null)
        {
            singerID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataTable dt = SingerManager.selectID(singerID);
            if (dt != null && dt.Rows.Count != 0)
            {
           
                lblSinName.Text = dt.Rows[0][1].ToString();
                lblSinType.Text = dt.Rows[0][2].ToString();      
                txtinfo.Text = dt.Rows[0][3].ToString();
                imgSin.ImageUrl = ResolveUrl(dt.Rows[0][4].ToString());            
                lblSinHits.Text = (Convert.ToUInt32(dt.Rows[0][5]) + SingerManager.updateClickNum(singerID)).ToString();
              
            }
        }

        BindSinger();
        BindSong();
    }
    private void BindSinger()
    {
        DataTable dt = SingerManager.selectTop5();
        if (dt != null && dt.Rows.Count != 0)
        {
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        DataBind();
    }

    private void BindSong()
    {
           
            DataTable dt = SongManager.selectAll();
            if (dt != null && dt.Rows.Count != 0)
            {
                ListView1.DataSource = dt;
                ListView1.DataBind();
            }
        
    }
}