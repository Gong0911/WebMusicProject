using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;
using YueMusic.Model;

public partial class EditUser : System.Web.UI.Page
{
    private UserInfo user;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            if (Request.QueryString["UserID"] != null)
            {
                int id = int.Parse(Request.QueryString["UserID"]);
                DataTable dt = UserInfoManager.selectID(id);

                ViewState["object"] = user;
                txtid.Text = Convert.ToString(dt.Rows[0]["UserID"]);
                txtname.Text = Convert.ToString(dt.Rows[0]["UserName"]);
                txtpwd.Text = Convert.ToString(dt.Rows[0]["UserPwd"]);
                txtemail.Text = Convert.ToString(dt.Rows[0]["UserEmail"]);
                txtphone.Text = Convert.ToString(dt.Rows[0]["UserPhone"]);
               

            }
        }
    }



    protected void lbtnSave_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            user = new UserInfo();
            user.UserID = Convert.ToInt32(txtid.Text.Trim());
            user.Username = txtname.Text.Trim();
            user.Password = txtpwd.Text.Trim();
            user.Email = txtemail.Text.Trim();
            user.Telephone = txtphone.Text.Trim();

            if (dlUserImage.HasFile)
            {
                string filePath = dlUserImage.PostedFile.FileName;
                string filename = filePath.Substring(filePath.LastIndexOf("\\") + 1);
                string serverpath = Server.MapPath(@"~\image\head_img\") + filename;
                string relativepath = @"~\image\head_img\" + filename;
                dlUserImage.PostedFile.SaveAs(serverpath);
                user.Userimage = relativepath;
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先上传头像！');</script>");
                return;
            }


            try
            {
                if (ViewState["object"] == null)
                {

                    if (UserInfoManager.Modify(user) == 1)
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
