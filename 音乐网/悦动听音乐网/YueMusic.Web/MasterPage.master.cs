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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Username"] != null)
            {
                lblName.Text = Session["Username"].ToString();
                panelUser.Visible = true;
                panelLR.Visible = false;
            }
            else
            {
                panelLR.Visible = true;
                panelUser.Visible = false;
            }
        }
    }

    protected void lbExit_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("index.aspx");
    }

  

   
}
