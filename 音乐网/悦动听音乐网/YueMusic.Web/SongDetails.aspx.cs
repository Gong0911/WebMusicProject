using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;
using System.IO;
using YueMusic.Model;

public partial class SongDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            ViewState["SongID"] = Convert.ToInt32(Request.QueryString["id"]);
            ViewState["UserID"] = Convert.ToInt32(Request.QueryString["id"]);
        }

        BindTop5HotSong();
        BindSongDetails();
        //ListView();
        BindTest();

    }
    private void BindSongDetails()//绑定歌曲详情
    {
        int songID;
        if (Request.QueryString["ID"] != null)
        {
            songID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            ViewState["vid"] = songID;
            DataTable dt = SongManager.selectID(songID);
            if (dt != null && dt.Rows.Count != 0)
            {

                lblSongName.Text = dt.Rows[0][2].ToString();
                lblSongType.Text = dt.Rows[0][4].ToString();
              
                txtLyric.Text = dt.Rows[0][8].ToString();
                imgSong.ImageUrl = ResolveUrl(dt.Rows[0][3].ToString());
               
                lblSongHits.Text = (Convert.ToUInt32(dt.Rows[0][6]) + SongManager.updateClickNum(songID)).ToString();//歌曲点击量

            }
        }
    }

    private void BindTop5HotSong()//绑定前5的热歌
    {
        DataTable dt = SongManager.selectTop5();
        if (dt != null && dt.Rows.Count != 0)
        {
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }

    private void BindTest()
    {
        DataTable dt = CommentManager.selectTop1();
        if (dt != null && dt.Rows.Count != 0)
        {
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }

    protected void btnDownMusic_Click(object sender, EventArgs e)
    {
      
        try
        {
            Button bt = (Button)sender;
            string fileName = lblSongName.Text.Trim() + "." + GetFileFormat(bt.CommandArgument);
            string filePath = Server.MapPath(bt.CommandArgument);
            if (File.Exists(filePath))
            {
                FileInfo fi = new FileInfo(filePath);
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                if (Request.UserAgent.ToLower().IndexOf("msie") > -1)
                {
                    fileName = HttpUtility.UrlPathEncode(fileName);
                }
                if (Request.UserAgent.ToLower().IndexOf("firefox") > -1)
                {

                    Response.AddHeader("Content-Disposition", "attachment;filename=\"" + fileName + "\"");
                }
                else
                {
                    fileName = HttpUtility.UrlEncode(fileName);
                    Response.AddHeader("Content-Disposition", "attachment;filename=" + fileName);
                }

                Response.AddHeader("Content-Length", fi.Length.ToString());
                lblSum.Text = (Convert.ToInt32(lblSum.Text) + SongManager.updateDownLoadNum(Convert.ToInt32(ViewState["vid"]))).ToString();


                Response.WriteFile(filePath);

                Response.Flush();
                Response.End();
            }
            else
            {
               
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('文件不存在！');</script>");
            }

        }
        catch (Exception)
        {
            
            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('下载失败！');</script>");
        }
    }//下载歌曲
    public static string GetFileFormat(string address)
    {
        return address.Split('.')[0];
    }//获得歌曲文件的方法


    protected void btnSendComm_Click(object sender, EventArgs e)
    {

        Button bt = (Button)sender;
        if (Session["Username"] != null)
        {
            try
            {
                Comment CS = new Comment();
                CS.SongID = Convert.ToInt32(Request.QueryString["id"].ToString());
                CS.UserID = int.Parse(Session["UserID"].ToString());
                CS.CommContent = txtComment.Text;
                if (CommentManager.addComment(CS) == 1)
                {
                    txtComment.Text = "";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script>alert('评论成功！');</script>");

                    //ListView();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script>alert('评论失败！');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
        }


        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('对不起,请先登录！');</script>");
        }
    }//发布评论

    

    private void ListView()
    {
        int nid = Convert.ToInt32(Request.QueryString["id"].ToString());
        DataTable dt = CommentManager.SelectID(nid);
        if (dt != null && dt.Rows.Count != 0)
        {
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }



    //protected void btnPlayMusic_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Player.aspx");
    //}

    protected void btnPlayMusic_Click(object sender, EventArgs e)
    {
        Response.Redirect("Player.aspx");
    }
}