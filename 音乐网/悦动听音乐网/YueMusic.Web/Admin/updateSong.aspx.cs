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

public partial class Admin_updateSong : System.Web.UI.Page
{
    private Song song;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
    

        if (!IsPostBack)
        {
            if (Request.QueryString["SongID"] != null)
            {
                int id = int.Parse(Request.QueryString["SongID"]);
                DataTable dt = SongManager.selectID(id);


                ViewState["object"] = song;
                txtSongid.Text = Convert.ToString(dt.Rows[0]["SongID"]);
                txtSongrname.Text = Convert.ToString(dt.Rows[0]["SongName"]);
                txtSingerName.Text = Convert.ToString(dt.Rows[0]["SingerName"]);//歌手编号
                txtSonType.Text = Convert.ToString(dt.Rows[0]["SongType"]);
                txtLyrics.Text = Convert.ToString(dt.Rows[0]["Lyric"]);
                songImage.ImageUrl = ResolveUrl(dt.Rows[0]["SongImage"].ToString());

            }
        }
    }

    protected void lbtnSave_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            song = new Song();
            song.Songid = Convert.ToInt32(txtSongid.Text.Trim());
            song.SNmae = txtSongrname.Text.Trim();
            song.Singername = txtSingerName.Text.Trim();
            song.SType = ddlsongType.SelectedItem.Text;
            song.Lyrics = txtLyrics.Text.Trim();

            if (DownloadSongimg.HasFile)
            {
                string filePath = DownloadSongimg.PostedFile.FileName;
                string filename = filePath.Substring(filePath.LastIndexOf("\\") + 1);
                string serverpath = Server.MapPath(@"~\image\song_img\") + filename;
                string relativepath = @"~\image\song_img\" + filename;
                DownloadSongimg.PostedFile.SaveAs(serverpath);
                song.SImage = relativepath;
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先上传歌曲图片！');</script>");
                return;
            }

            //修改歌曲路径
            if (fuSongUrl.HasFile)//歌曲路径
            {
                string filePath = fuSongUrl.PostedFile.FileName;
                string filename = filePath.Substring(filePath.LastIndexOf("\\") + 1);
                //提取文件后缀名
                //string MExtend = filePath.Substring(filePath.LastIndexOf(".") + 1);
                //if (!(MExtend == "mp3"))
                //{
                //    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('上传音乐的格式不正确!！');</script>");
                //    return;
                //}

                string serverpath = Server.MapPath(@"~\songs\") + filename;
                string relativepath = @"~\songs\" + filename;
                fuSongUrl.PostedFile.SaveAs(serverpath);
                song.Url = relativepath;
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先上传歌曲路径！');</script>");
                return;
            }


            try
            {
                if (ViewState["object"] == null)
                {

                    if (SongManager.updateId(song) == 1)
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

    

