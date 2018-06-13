<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录页面</title>
    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="login_box">
    <div class="user_name">
          <i class="user_ico"></i>
          <asp:TextBox ID="txtUserName" runat="server" placeholder="请输入用户名" type="text"></asp:TextBox>
    </div>
    <div class="user_password">
         <i class="password_ico"></i>
         <asp:TextBox ID="txtPassword" runat="server" placeholder="请输入密码" type="text" TextMode="Password"></asp:TextBox>
    </div>
    <div class="check_code">
        <i class="code_ico"></i>
        <asp:TextBox runat="server" ID="txtCheckCode" placeholder="验证码" type="text"></asp:TextBox>
        <asp:ImageButton runat="server" ID="imgCode" ImageUrl="~/CheckCode.aspx" CssClass="imgcode" OnClick="imgCode_Click"  />
    </div>
    <div class="login_btn">
        <asp:Button  runat="server" ID="btnLogin" Text="登录" CssClass="submit_login" OnClick="btnLogin_Click"/>
    </div>
    <div class="link_page">
        <p class="go_homepage"><a href="index.aspx">&lt;&lt;回到首页</a> </p>
        <p class="go_reg">还没有账户? <a href="Register.aspx">立即注册</a></p>
    </div>
</div>
    </form>
</body>
</html>
