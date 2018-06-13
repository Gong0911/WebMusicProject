using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["adminname"] != null)
            {
                lblName.Text = Session["adminname"].ToString();
            }
            else
            {
                Response.Redirect("adminLogin.aspx");
            }
           
        }
    }
}