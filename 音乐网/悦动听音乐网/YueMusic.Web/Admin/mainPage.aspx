<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainPage.aspx.cs" Inherits="Admin_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit"/>
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <script src="js/jquery.js"></script>   
     <style type="text/css">
         .logo li{
             float:left;
             padding-left:30px;
         }
     </style>
</head>
<body>
<form id="form1" runat="server">
<div class="header bg-main">
    <%-- logo和管理员登录名 --%>
<div class="logo">
      <ul>
          <li>
              <img src="images/y.jpg" class="radius-circle rotate-hover" height="45" alt="" />
              <asp:Label runat="server" ID="lblName" ForeColor="#ffff00"></asp:Label>
       </li>
          <li>
              <h1> 后台管理中心</h1>
          </li>
      </ul>
</div>
    <%-- 前台首页 退出登录的链接 --%>
<div class="head-l">
      <a class="button button-little bg-green" href="../index.aspx" target="_blank" ><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="adminLogin.aspx"><span class="icon-power-off"></span> 退出登录</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a></div>
</div>
    <%-- 侧边栏布局 --%>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <%-- 用户管理 --%>
  <h2><span class="icon-user"></span>用户管理</h2>
  <ul style="display:block">
    <li><a href="userInfo.aspx" target="right"><span class="icon-caret-right"></span>用户信息</a></li>
    <li><a href="addAdmin.aspx" target="right"><span class="icon-caret-right"></span>添加管理员</a></li>
  </ul>   
    <%-- 音乐管理 --%>
  <h2><span class="icon-music"></span>音乐管理</h2>
  <ul>
    <li><a href="songList.aspx" target="right"><span class="icon-caret-right"></span>音乐信息</a></li>
    <li><a href="addSong.aspx" target="right"><span class="icon-caret-right"></span>添加音乐</a></li>
    <li><a href="addSongType.aspx" target="right"><span class="icon-caret-right"></span>添加分类</a></li>        
  </ul>  
    <%-- 歌手管理 --%>
    <h2><span class="icon-user-md"></span>歌手管理</h2>
  <ul>
    <li><a href="singerList.aspx" target="right"><span class="icon-caret-right"></span>歌手信息</a></li>
    <li><a href="addSinger.aspx" target="right"><span class="icon-caret-right"></span>添加歌手</a></li>  
  </ul> 
    <%-- 评论管理 --%>
    <h2><span class="icon-pencil"></span>评论管理</h2>
  <ul>
    <li><a href="commentList.aspx" target="right"><span class="icon-caret-right"></span>评论信息</a></li>
    <li><a href="#" target="right"><span class="icon-caret-right"></span>回复信息</a></li>
   
  </ul> 
    <%-- 公告管理 --%>
    <h2><span class="icon-volume-up"></span>公告管理</h2>
  <ul>
    <li><a href="addNotice.aspx" target="right"><span class="icon-caret-right"></span>添加公告</a></li>
    <li><a href="noticeList.aspx" target="right"><span class="icon-caret-right"></span>公告信息</a></li>     
  </ul> 
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="{:U('Index/info')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="webInfo.aspx" name="right" width="100%" height="100%"></iframe>
</div>

    </form>
</body>
</html>
