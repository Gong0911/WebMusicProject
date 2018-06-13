using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using YueMusic.Model;
using YueMusic.BLL;

public partial class Admin_addSong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["adminname"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        
    }
  
    protected void btnAddNotice_Click(object sender, EventArgs e)
    {
        Song so = new Song();
        so.SNmae = txtSongName.Text;
        so.Singername = txtSingerName.Text;
        so.SType = ddlSongTYpe.SelectedItem.Text;
        so.Lyrics = txtLyrics.Text;
      

        if (uploadImg.HasFile)//歌曲图片  获取一个布尔值，用于表示FileUpload控件是否已经包含一个文件；
        {
            string filePath = uploadImg.PostedFile.FileName;
            string filename = filePath.Substring(filePath.LastIndexOf("\\") + 1);
            string serverpath = Server.MapPath(@"~\image\song_img\") + filename;//物理路径  MapPath 方法可把指定的路径影射到服务器上相应的物理路径上。
            string relativepath = @"~\image\song_img\" + filename;//相对路径
            uploadImg.PostedFile.SaveAs(serverpath);
            so.SImage = relativepath;
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先上传歌曲图片！');</script>");
            return;
        }

        if (uploadSongPath.HasFile)//歌曲路径
        {
            string filePath = uploadSongPath.PostedFile.FileName;
            string filename = filePath.Substring(filePath.LastIndexOf("\\") + 1);
            //提取文件后缀名
            //string MExtend = filePath.Substring(filePath.LastIndexOf(".") + 1);
            //if (!(MExtend == "mp3" || MExtend == "rmv"))
            //{
            //    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('上传音乐的格式不正确!！');</script>");
            //    return;
            //}

            string serverpath = Server.MapPath(@"~\songs\") + filename;
            string relativepath = @"~\songs\" + filename;
            uploadSongPath.PostedFile.SaveAs(serverpath);
            so.Url = relativepath;
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先上传歌曲路径！');</script>");
            return;
        }

      
        if (SongManager.addSong(so) == 1)
        {
            txtSongName.Text = txtSongName.Text = "";
            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加成功！');</script>");
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('添加失败！');</script>");

        }
    }
}