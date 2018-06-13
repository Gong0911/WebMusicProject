using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using YueMusic.BLL;
using System.Data.SqlClient;

public partial class Singer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindAllSingers();
        BindAllHotSingers();
        BindAllChManSi();
        BindAllChWomanSi();
        BindAllChGroupSi();

        ViewState["id"] = Convert.ToInt32(Request.QueryString["id"]);
        ChooseSinger();
    }
    private void ChooseSinger()//单击左边不同的链接 右边切换不同的内容
    {
        switch (ViewState["id"].ToString())
        {

            case "1": panel1.Visible = true; break;
            case "2": panel1.Visible = false; panel2.Visible = true; break;
            case "3": panel1.Visible = false; panel3.Visible = true; break;
            case "4": panel1.Visible = false; panel4.Visible = true; break;
            case "5": panel1.Visible = false; panel5.Visible = true; break;    
            default: break;
        }
    }
    private void BindAllSingers()//绑定全部歌手
    {
        ////DataTable dt = SingerManager.selectAll();
        ////if (dt != null && dt.Rows.Count != 0)
        ////{
        ////    DataList1.DataSource = dt;
        ////    DataList1.DataBind();
        ////}

        int current_page = Convert.ToInt32(lblCurrent.Text);
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter oda = new SqlDataAdapter("select * from Singer", con);
        DataSet ds = new DataSet();
        oda.Fill(ds);

        PagedDataSource ps = new PagedDataSource();
        ps.DataSource = ds.Tables[0].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 20;
        lblTotal.Text = ps.PageCount.ToString();
        ps.CurrentPageIndex = current_page - 1;
        lbtnFirst.Enabled = true;
        lbntUp.Enabled = true;
        lbtnDown.Enabled = true;
        lbtnLast.Enabled = true;
        if (current_page == 1)
        {
            lbtnFirst.Enabled = false;
            lbntUp.Enabled = false;
        }
        if (current_page == Convert.ToInt32(lblTotal.Text))
        {
            lbtnLast.Enabled = false;
            lbtnDown.Enabled = false;
        }
        DataList1.DataSource = ps;
        DataList1.DataBind();

    }
    private void BindAllHotSingers()//绑定热门歌手
    {
        DataTable dt = SingerManager.selectTop15();
        if (dt != null && dt.Rows.Count != 0)
        {
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }
    }
    private void BindAllChManSi()//绑定华语男歌手
    {
        DataTable dt = SingerManager.selectAllCMansi();
        if (dt != null && dt.Rows.Count != 0)
        {
            DataList3.DataSource = dt;
            DataList3.DataBind();
        }

    }
    private void BindAllChWomanSi()//绑定华语女歌手
    {
        DataTable dt = SingerManager.selectAllCwomansi();
        if (dt != null && dt.Rows.Count != 0)
        {
            DataList4.DataSource = dt;
            DataList4.DataBind();
        }
    }
    private void BindAllChGroupSi()//绑定华语组合/乐队
    {
        DataTable dt = SingerManager.selectAllCgroupsi();
        if (dt != null && dt.Rows.Count != 0)
        {
            DataList5.DataSource = dt;
            DataList5.DataBind();
        }
    }

    


    /// <summary>
    /// 以下是分页按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnFirst_Click(object sender, EventArgs e)
    {
        lblCurrent.Text = "1";
        BindAllSingers();
       
    }
    protected void lbtnDown_Click(object sender, EventArgs e)
    {
        lblCurrent.Text = (Convert.ToInt32(lblCurrent.Text) + 1).ToString();
        BindAllSingers();
       
    }
    protected void lbntUp_Click(object sender, EventArgs e)
    {
        lblCurrent.Text = (Convert.ToInt32(lblCurrent.Text) - 1).ToString();
        BindAllSingers();
      
    }
    protected void lbtnLast_Click(object sender, EventArgs e)
    {
        lblCurrent.Text = lblTotal.Text;
        BindAllSingers();
      
    }

    
}