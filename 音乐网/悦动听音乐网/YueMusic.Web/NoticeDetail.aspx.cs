using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using YueMusic.BLL;
using YueMusic.Model;


public partial class noticedetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int noticeID;
        if (Request.QueryString["ID"] != null)
        {
            noticeID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataTable dt = NoticeManager.selectID(noticeID);
            if (dt != null && dt.Rows.Count != 0)
            {
                lblNoticeTitle.Text = dt.Rows[0][1].ToString();
                lblContent.Text = dt.Rows[0][2].ToString();
                lblPublishTime.Text = dt.Rows[0][3].ToString();
            }
        }

         BindNotice();

    }
    protected void BindNotice()
    {
        DataTable dt = NoticeManager.selectTop10();
        if (dt != null && dt.Rows.Count != 0)
        {
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
   
}