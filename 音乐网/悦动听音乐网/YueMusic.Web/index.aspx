<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>悦动听音乐网</title>
    <link href="css/style.css" rel="stylesheet" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".nav_list a").each(function () {
                $this = $(this);
                if ($this[0].href == String(window.location)) {
                    $this.addClass("active");
                }
            });
        });
    </script>
</head>
<body>
<form id="form1" runat="server">
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
             <li><a href="UserCenter.aspx">个人中心</a> </li>
         </ul>
     </div>
      <div class="nav_search">   
            <%--<asp:TextBox ID="txtSearch" runat="server" placeholder="搜索歌名、歌手" type="text" CssClass="text"></asp:TextBox><asp:Button  runat="server" ID="btnSearch" Text="搜索" BorderStyle="None" Width="45px" Height="27px" ForeColor="#242424"/>   --%>
          <div class="search">
              <asp:TextBox runat="server" ID="txtSearch" placeholder="搜索歌名、歌手" type="text" CssClass="text"></asp:TextBox>
              <asp:ImageButton runat="server" ID="btnSearch" ImageUrl="~/image/ico/search.png" Width="28px" Height="28px" CssClass="img" OnClick="btnSearch_Click"/>
          </div>
      </div>
  </div>
</div>
<div class="banner_right">
    <div id="innerht">
        <ul>
            <li><img src="image/banner_img/banner1.jpg" width="1100"  height="320"/></li>
            <li><img src="image/banner_img/banner2.jpg" width="1100"  height="320"/></li>
            <li><img src="image/banner_img/banner3.jpg" width="1100"  height="320"/></li>
            <li><img src="image/banner_img/banner4.jpg" width="1100"  height="320"/></li>
            <li><img src="image/banner_img/banner5.jpg" width="1100"  height="320"/></li>
        </ul>
        <ol></ol>
        <button id="left"></button><button id="right"></button>
    </div>
</div>
<div id="content">
       <%-- 热歌 --%>
     <div class="content_hot">
           <div class="hot_list">
           <span></span>
           <div class="hot_title">
               <h2>热歌推荐</h2>
           </div>
           <div class="hot_type">
               <ul>
                   <li><a href="#">华语</a></li> 
                   <li><a href="#">流行</a></li>
                   <li><a href="#">摇滚</a></li> 
                   <li><a href="#">民谣</a></li>
                   <li><a href="#">电子</a></li>
                    <li><a href="#">轻音乐</a></li>
               </ul>
           </div>
           <div class="hot_more">
               <a href="RankList.aspx">更多&gt;&gt;</a>
           </div>
       </div>
       <div class="hot_show">
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
     </div>
       <%--新歌  --%>
     <div class="content_new">
           <div class="new_list">
           <span></span>
           <div class="new_title">
               <h2>新歌推送</h2>
           </div>
           <div class="new_more">
               <a href="RankList.aspx">更多&gt;&gt;</a>
           </div>
       </div>
       <div class="new_show">
             <asp:DataList ID="DataList2" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;">
                                <br />
                                <span style="display:block;width:160px;height:145px;border:1px solid #cccccc">
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "SongDetails.aspx?ID="+ Eval("SongID") %>'>
                                        <asp:Image ID="villageImg" runat="server" Width="160px" Height="145px" ImageUrl='<%#Eval("SongImage") %>' />
                                    </asp:HyperLink>
                                </span>
                            </td>
                        </tr>
                        <tr class="y">

                            <td  style="text-align:center">
                                <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SongName")%></span>
                            </td>
                        </tr>
                        <tr class="y">
                            <td  style="text-align:center;font-size:13px;color:#666666">                            
                                <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>
                            </td>
                        </tr>                       
                    </table>
                </ItemTemplate>
            </asp:DataList>
   
       </div>
     </div>

   

    <!--侧边公告栏部分-->
    <div class="notice">
        <div class="notice_title">
            <span></span>
            <div class="n_title">
                <h2>公告资讯</h2>
            </div>
            <div class="n_more">
                <a href="#">更多&gt;&gt;</a>
            </div>
        </div>
        <div class="notice_content">
             <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                  <table style="width:290px;">
                    <tr >
                        <td  style="text-align:left;font-size:14px;line-height:33px;">
                            <asp:HyperLink ID="hp1" runat="server"  Text='<%# DataBinder.Eval(Container.DataItem,"NoticeTitle").ToString().Length>11 ? DataBinder.Eval(Container.DataItem,"NoticeTitle").ToString().Substring(0,11)+"..." : DataBinder.Eval(Container.DataItem, "NoticeTitle") %> ' NavigateUrl='<%# "NoticeDetail.aspx?id="+ Eval("NoticeID") %>' CssClass="linkTitle"></asp:HyperLink>
                        </td>
                        <td  style="text-align:right;font-size:14px;color:#494949;" >
                             <span><%# string.Format("{0:yyyy-MM-dd}",Eval("NoticeTime"))%></span>
                        </td>
                    </tr>                              
                </table>
              </ItemTemplate>
          </asp:Repeater>
        </div>
    </div>
    <!--侧边人气歌手排行-->
      <div class="singer">
        <div class="singer_title">
            <span></span>
            <div class="s_title">
                <h2>人气歌手榜</h2>
            </div>
            <div class="s_more">
                <a href="#">更多&gt;&gt;</a>
            </div>
        </div>
        <div class="singer_content">
               <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <table style="width: 200px;">
                        <tr>
                            <td>
                                <span>
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>'>
                                        <asp:Image ID="Image2" runat="server" Width="80px" Height="80px"  ImageUrl='<%#Eval("SingerImg")%>' />
                                    </asp:HyperLink>
                                </span>
                            </td>
                            <td>   
                                   <table style="padding-left:10px;">
                                        <tr>
                                            <td>                                              
                                                <span>
                                                    <asp:HyperLink ID="HyperLink7" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "SingerName")%>' NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>' ForeColor="#333333" Font-Bold="true"></asp:HyperLink>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                 <span style="font-size:12px;color:#666666">人气值：<%#DataBinder.Eval(Container.DataItem, "SingerHits")%></span>
                                            </td>
                                       </tr>
                                    </table>
                              </td>
                           </tr>                   
                    </table>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
    <%--底部布局 --%>
<div id="footer">
    <div class="footer_content">
             <p>江西师范大学3522-2工作室&copy;版权所有&nbsp;&nbsp;&nbsp;&nbsp;<a href="Admin/adminLogin.aspx">后台管理入口</a></p>
    </div>
</div>
</form>
</body>
<script type="text/javascript">
    //轮播图原生js
    (function(window){
        // 封装document.getElementById函数
        function $(id){
            return document.getElementById(id);
        }
        // 获取相应对象
        var innerht = $("innerht"),ul = innerht.children[0],ulli = ul.children[0];
        // 获取ul的第一个li克隆并插入ul最后
        ul.appendChild( ulli.cloneNode(true) );
        // 获取一个banner的宽度
        var liWidth = innerht.offsetWidth;
        var ulLis = ul.children, ol = ul.nextElementSibling;
        // 设定ul的宽度
        ul.style.width = ulLis.length + "00%";
        // 设定每个li的宽度
        for( i = 0 ; i < ulLis.length ; i++ ){
            ulLis[i].style.width = 100 / ulLis.length + "%";
        }
        for( i = 0 ; i < ulLis.length - 1 ; i++ ){
            var li = document.createElement("li");
            li.innerHTML = i + 1 ;
            ol.appendChild(li);
        }
        var olLis = ol.children;
        // 为第一个li添加选中状态
        olLis[0].className = "current";
        var left = $("left"),right = $("right");
        //给大盒子绑定鼠标事件
        innerht.onmouseover = function(){
            left.style.display = "block";
            right.style.display = "block";
            clearInterval(clock);

        };
        innerht.onmouseout = function(){
            left.style.display = "none";
            right.style.display = "none";
            clock = setInterval(right.onclick, 3000);
        };
        //为ol中的li添加鼠标事件
        for( i = 0 ; i < olLis.length ; i++ ){
            // 为每个li添加自定义属性
            olLis[i].index = i;
            olLis[i].onmouseover = function(){
                for( j = 0 ; j < olLis.length ; j++ ){
                    olLis[j].className = "";
                };
                this.className = "current";
                var index = this.index;
                s = index;
                squire = index;
                var target = -index * liWidth ;
                animate(ul,target);
            }
        }
        // 左右按钮点击事件
        var s = 0 , squire = 0 ;
        right.onclick = function(){
            if( s === olLis.length ){
                ul.style.left = "0px";
                s = 0 ;
            }
            s++;
            var target = -s * liWidth ;
            animate(ul,target);
            if( squire === olLis.length - 1 ){
                squire = 0
            }else{
                squire++;
            }
            for( i = 0 ; i < olLis.length ; i++ ){
                olLis[i].className = "";
            };
            olLis[squire].className = "current";
        };
        left.onclick = function(){
            if( s === 0 ){
                ul.style.left = -olLis.length * liWidth + "px";
                s = olLis.length;
            }
            s--;
            var target = -s * liWidth ;
            animate(ul,target);
            if( squire === 0 ){
                squire = olLis.length - 1 ;
            }else{
                squire--;
            };
            for( i = 0 ; i < olLis.length ; i++ ){
                olLis[i].className = "";
            };
            olLis[squire].className = "current";
        };
        // 添加自动播放事件
        var clock = null ;
        clock = setInterval(right.onclick, 5000);
        //封装animate函数
        function animate(obj,target){
            clearInterval(obj.timer);
            obj.timer = setInterval(function(){
                var leader = obj.offsetLeft , step = 30 ;
                step = leader < target ? step : -step ;
                if( Math.abs( leader - target ) >= Math.abs( step ) ){
                    leader = leader + step;
                    obj.style.left = leader + "px" ;
                }else{
                    obj.style.left = target + "px" ;
                    clearInterval(obj.timer);
                }
            }, 15);
        }
    })(window);

</script>
</html>
