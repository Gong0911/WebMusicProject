<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/style.css" rel="stylesheet" />
    <style type="text/css">
        #searchContent{
            width: 920px;
            height: 900px;
            margin: 0 auto;
            margin-top: 20px;
            background: #ffffff;
            border-radius: 8px;
            border: 1px solid #cccccc;    
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <%-- 头部布局 --%>
<div id="top">
  <div class="top_page">
      <div class="left">
          <ul>
              <li><a href="#">我的主页</a> </li>
              <li><a href="#">关于我们</a> </li>
              <li><a href="#">帮助中心</a> </li>
          </ul>
      </div>
      <div class="right">
          <ul>   
              <li>
                  <asp:Panel runat="server" ID="panelUser">
                  <asp:Image  runat="server" ID="imgHead" ImageUrl="~/image/head_img/head2.png" CssClass="headImg"/>
                  <a href="UserCenter.aspx"><asp:Label runat="server" ID="lblName" ForeColor="White"></asp:Label></a>
                  <asp:LinkButton runat="server" ID="lbExit" ForeColor="#ffff99" OnClick="lbExit_Click">[退出]</asp:LinkButton>
                  </asp:Panel>
                </li> 
             
              <li>
                <asp:Panel runat="server" ID="panelLR">
                  <a href="Login.aspx">登录</a>
                  <a href="#" class="none">|</a>
                  <a href="Register.aspx">注册</a>
                </asp:Panel>       
              </li>
              
          </ul>
      </div>
  </div>
</div>
    <%-- logo 导航 搜索 --%>
<div id="nav">
  <div class="nav_page">
     <div class="nav_logo">
         <div class="logo_img"></div>
         <div class="logo_title">
             <h1>悦动听音乐</h1>
         </div>
     </div>
     <div class="nav_list">
         <ul>
             <li><a href="index.aspx">首页</a></li>
             <li><a href="Song.aspx">歌单</a> </li>
             <li><a href="Singer.aspx">歌手</a> </li>
             <li><a href="RankList.aspx">排行榜</a></li>
             <li class="active"><a href="UserCenter.aspx">个人中心</a> </li>
         </ul>
     </div>
      <div class="nav_search">
           <div class="search">
              <asp:TextBox runat="server" ID="txtSearch" placeholder="搜索歌名、歌手" type="text" CssClass="text"></asp:TextBox>
              <asp:ImageButton runat="server" ID="btnSearch" ImageUrl="~/image/ico/search.png" Width="28px" Height="28px" CssClass="img" OnClick="btnSearch_Click"/>
          </div>      
      </div>
  </div>
</div>

        <%-- 内容页 --%>
        <div id="searchContent">
              <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;" >
                                <br />
                                <span style="display:block;width:160px;height:145px;border:1px solid #cccccc">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "SongDetails.aspx?ID="+ Eval("SongID") %>'>
                                        <asp:Image ID="sonImg" runat="server" Width="160px" Height="145px" ImageUrl='<%#Eval("SongImage") %>' />
                                    </asp:HyperLink>
                                </span>
                            </td>
                        </tr>
                        <tr class="y">
                            <td style="text-align:center">
                                <asp:HyperLink runat="server" ID="HyperLink2" NavigateUrl='<%# "SongDetails.aspx?ID="+ Eval("SongID") %>' ForeColor="#333333">
                                    <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SongName")%></span>
                                </asp:HyperLink>
                            </td>
                        </tr>
                        <tr class="y">
                           <td style="text-align:center;font-size:13px;color:#666666">
                                 <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl='<%# "Singer.aspx?ID="+ Eval("SongID") %>' ForeColor="#666666">
                                      <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>
                                </asp:HyperLink>                       
                         </td>
                        </tr>
                        
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
