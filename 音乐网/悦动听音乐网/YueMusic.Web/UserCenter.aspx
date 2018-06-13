<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserCenter.aspx.cs" Inherits="UserCenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/style.css" rel="stylesheet" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".chooseList a").each(function () {
                $this = $(this);
                if ($this[0].href == String(window.location)) {
                    $this.addClass("active1");
                }
            });
        });
    </script>
    <style type="text/css">
        #contentPage{
            position:relative;
            width:1100px;
            height:900px;
            margin:0 auto;
            border:1px solid #D8D8D8;
            border-radius:8px;
            margin-top:20px;
            background:#ffffff;
        }
        #contentPage .pageLeft{
            position:absolute;
            top:30px;
            left:15px;
            width:250px;
            height:500px;
           background:#C20C0C;
            border-radius:6px;         
        }
        #contentPage .pageLeft .headPicture{
            position:absolute;
            top:20px;
            left:75px;
            width:100px;
            height:100px;
            background:white;
            border-radius:50%;
            overflow:hidden;
        } 
        #contentPage .pageLeft .userName{
            position:absolute;
            top:130px;
            text-align:center;
            width:100%;
            height:30px;
            line-height:30px;
       }
      
         #contentPage .pageLeft .chooseList{
             position:absolute;
             top:200px;
             left:0;
             width:250px;
             height:290px;
            
             
         }
         #contentPage .pageLeft .chooseList li{
             display:block;
             width:250px;
             height:60px;
             text-align:center;
             line-height:60px;
            
         }
         #contentPage .pageLeft .chooseList li a{
             display:inline-block;
             width:250px;
             height:60px;
             font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
             font-size:18px;
            color:#ffffff;
            
         }
        
         .active1{
             background:#242424;
         }

/*右边部分*/
        #contentPage .pageRight{
            position:absolute;
            top:15px;
            right:15px;
            width:800px;
            height:800px;
           /*border:1px solid #cccccc;*/
            border-radius:6px;   
        }
        #contentPage .pageRight .title1{
            width:800px;
            height:50px;
            line-height:50px;
            text-align:center;
            font-size:18px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            color:#242424;
            border-bottom:2px solid #C20C0C;
        }
        #contentPage .pageRight .show_message{
            width:800px;
            height:600px;
            margin-top:10px;
          
           
        }
        .info{
            width:40px;
            height:30px;
            border:none;
            color:white;
            line-height:20px;
            border-radius:4px;        
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
              <asp:ImageButton runat="server" ID="btnSearch" ImageUrl="~/image/ico/search.png" Width="28px" Height="28px" CssClass="img"/>
          </div>      
      </div>
  </div>
</div>
    <%-- 内容页 --%>
<div id="contentPage">
        <%-- 内容左边布局 --%>
        <div class="pageLeft">
            
               <div class="headPicture">
                 <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <table style="width: 100px;">
                        <tr>
                            <td>
                                <span>                                   
                                        <asp:Image ID="userimage" runat="server" Width="100px" Height="100px" ImageUrl='<%#Eval("UserImage")%>' />                                   
                                </span>
                            </td>       
                         </tr>                   
                    </table>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
             </div>
                    <div class="userName"><asp:Label runat="server" ID="lbluser" ForeColor="#ffff99"></asp:Label></div>
           
            <div class="chooseList">
                <ul>
                     <li><a href="UserCenter.aspx?id=1">我的信息</a></li>
                     <li><a href="UserCenter.aspx?id=2">我的下载</a></li>
                     <li><a href="UserCenter.aspx?id=3">我的收藏</a></li>
                     <li><a href="UserCenter.aspx?id=4">我的评论</a></li>
                </ul>
            </div>
        </div>

        <div class="pageRight">
            <asp:Panel runat="server" ID="panel_a">
                <div class="title1">
                    <p>我的信息</p>
                </div>
                <div class="show_message">
              <table class="table" style="margin-top:65px;">
            <thead>
                <tr>
                    <th style="width:1%;text-align:left;"></th>
                    <th style="width:1%;text-align:left;">姓名</th>
                    <th style="width:1%;text-align:left;">密码</th>
                    <th style="width:2%;text-align:left;">邮箱</th>
                    <th style="width:1%;text-align:left;">电话号码</th>
                    <th style="width:1%;text-align:left;">编辑</th>
                </tr>
            </thead>
        <%--绑定用户信息数据 --%>
            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                <ItemTemplate>
                    <tbody>
                        <tr >
                             <td>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("UserID") %>' Visible="false"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblPass" runat="server" Text='<%# Eval("UserPwd") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("UserEmail") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("UserPhone") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnUpdate" runat="server" Text="编辑" CommandName="Edit" CssClass="info" BackColor="#ff0000" ForeColor="#ffffff"/>
                           </td>
                        </tr>
                    </tbody>
                </ItemTemplate>
            </asp:ListView>
        </table>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="panel_b" Visible="false">
                 <div class="title1">
                    <p>我的下载</p>
                </div>
            </asp:Panel>
              <asp:Panel runat="server" ID="panel_c" Visible="false">
                 <div class="title1">
                    <p>我的收藏</p>
                </div>
            </asp:Panel>
              <asp:Panel runat="server" ID="panel_d" Visible="false">
                 <div class="title1">
                    <p>我的评论</p>
                </div>
            </asp:Panel>
        </div>
</div>
    <%--底部布局 --%>
<div id="footer">
    <div class="footer_content">
        <p>江西师范大学3522-2工作室&copy;版权所有</p>
    </div>
</div>
    </form>
</body>
</html>
