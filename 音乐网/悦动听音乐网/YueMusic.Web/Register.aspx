<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册页面</title>
    <link href="css/reg.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <div id="reg_box">
    <div class="user_name">
          <i class="user_ico"></i>
          <asp:TextBox ID="txtUserName" runat="server" placeholder="姓名" type="text"></asp:TextBox>
        <div class="yan">
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtUserName" ErrorMessage="&nbsp;&nbsp;请输入用户名！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
        </div>
       
    </div>
    <div class="user_password">
         <i class="password_ico"></i>
         <asp:TextBox ID="txtPassword" runat="server" placeholder="密码" type="text" TextMode="Password"></asp:TextBox>
        <div class="yan">
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="&nbsp;&nbsp;请输入密码！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="confirm_pwd">
        <i class="password_ico"></i>
        <asp:TextBox ID="txtAgainPwd" runat="server" placeholder="确认密码" type="text" TextMode="Password"></asp:TextBox>
          <div class="yan">
              <asp:RequiredFieldValidator ID="rfvAgain" runat="server" ControlToValidate="txtAgainPwd" ErrorMessage="&nbsp;&nbsp;请输入确认密码！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
        </div>
        <div class="yan">
             <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtAgainPwd" ControlToCompare="txtPassword" ErrorMessage="&nbsp;&nbsp;两次密码不一致！" ForeColor="Red" SetFocusOnError="true"></asp:CompareValidator>
        </div>
    </div>
       <div class="user_email">
        <i class="email_ico"></i>
        <asp:TextBox ID="txtEmail" runat="server" placeholder="电子邮箱" type="text"></asp:TextBox>
           <div class="yan">
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="&nbsp;&nbsp;请输入您的邮箱！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
           </div>
           <div class="yan">
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="&nbsp;&nbsp;邮箱格式不正确！" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           </div>
    </div>
       <div class="user_phone">
        <i class="phone_ico"></i>
        <asp:TextBox ID="txtPhone" runat="server" placeholder="电话号码" type="text"></asp:TextBox>
           <div class="yan">
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="&nbsp;&nbsp;请输入电话号码！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
           </div>
           <div class="yan">
                 <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="&nbsp;&nbsp;电话号码格式不对！" ForeColor="Red" SetFocusOnError="true" ValidationExpression="1\d{10}"></asp:RegularExpressionValidator>
           </div>
    </div>


    <div class="reg_btn">
        <asp:Button  runat="server" ID="btnRegister" Text="注册" CssClass="submit_reg" OnClick="btnRegister_Click"/>
    </div>
    <div class="link_page">
        <p class="go_homepage"><a href="index.aspx">&lt;&lt;回到首页</a> </p>
        <p class="go_reg">已有账户? <a href="Login.aspx">前往登录</a></p>
    </div>
</div>
    </form>
</body>
</html>
