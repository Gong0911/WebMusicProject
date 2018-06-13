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

public partial class Admin_updateNotice : System.Web.UI.Page
{
    private Notice notice;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }

        if (!IsPostBack)
        {
            if (Request.QueryString["NoticeID"] != null)
            {
                int id = int.Parse(Request.QueryString["NoticeID"]);
                DataTable dtNot = NoticeManager.selectID(id);
               
                ViewState["object"] = notice;
                txtNoticeID.Text = Convert.ToString(dtNot.Rows[0]["NoticeID"]);
                txtNoticeTitle.Text = Convert.ToString(dtNot.Rows[0]["NoticeTitle"]);
                txtNoContent.Text = Convert.ToString(dtNot.Rows[0]["NoticeContent"]);

            }
        }
    }

    protected void lbtnSave_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            notice = new Notice();
            notice.NoticeId = Convert.ToInt32(txtNoticeID.Text.Trim());
            notice.NoticeTitle = txtNoticeTitle.Text.Trim();
            notice.NoticeContent = txtNoContent.Text.Trim();
            try
            {
                if (ViewState["object"] == null)
                {
                    
                    if (NoticeManager.updateId(notice) == 1)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script>alert('保存成功！');</script>");
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script>alert('保存失败！');</script>");
                    }

                }
               
               
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }

        }
    }
}