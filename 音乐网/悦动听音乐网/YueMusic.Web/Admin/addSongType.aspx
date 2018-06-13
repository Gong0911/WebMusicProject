<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addSongType.aspx.cs" Inherits="Admin_addSongType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit"/>
<title>添加音乐分类</title>
<link rel="stylesheet" href="css/pintuer.css"/>
<link rel="stylesheet" href="css/admin.css"/>
    <style type="text/css">
        .info{
            width:150px;
            height:30px;
            border:1px solid #cccccc;
            border-radius:6px;
            line-height:40px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel-head"><strong><span class="icon-plus"></span> 添加音乐分类</strong></div>
    <div class="addSongType" style="margin-top:35px;">
         歌曲分类：<asp:TextBox ID="txtSongType" runat="server" CssClass="info"></asp:TextBox>
        <asp:Button ID="Button1"  runat="server" Text="添加" Width="45px" Height="26px" BackColor="#3399FF" ForeColor="White" BorderStyle="None" OnClick="Button1_Click"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSongType" ErrorMessage="*请添加歌曲类型!" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
 

    </form>
</body>
</html>
