<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="Admin_adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
    <style type="text/css">
        body {
           padding:0;
           margin:0;
           background: url(../Admin/images/bg.jpg);
           background-size:100%;
        }
       
/*登录样式*/
#login_box{
    position: relative;
    width: 350px;
    height:350px;
    margin: 0 auto;
    margin-top: 180px;
   
    border-radius: 6px;
    background-color: rgba(0,0,0,0.1);
}
#login_box .title{
    position:absolute;
    top:0;
    left:0;
    width:350px;
    height:70px;
}
#login_box .title h1{
    line-height:70px;
    text-align:center;
    font-size:26px;
    color:#414448;
}
#login_box .user_name{
    position: absolute;
    top: 100px;
    left: 35px;
    width: 280px;
    height: 55px;
    border-radius: 4px;
    background-color: #ffffff;

}
#login_box .user_password{
    position: absolute;
    top: 165px;
    left:35px;
    width: 280px;
    height: 55px;
    border-radius: 4px;
    margin: 0 auto;
    background-color: #ffffff;
}

#login_box .submit_login{
    position: absolute;
    top:235px;
    left: 35px;
    width: 280px;
    height: 50px;
    border:none;
    color:#ffffff;
    font-size:18px;
    cursor:pointer;
    border-radius: 4px;
    background-color:#00AAEE;
}
#login_box .submit_login:hover{
    background-color: #2F63B7;
}
/*登录框中的details样式*/
#login_box .user_name .user_ico,.password_ico{
    position: absolute;
    top: 12px;
    left: 10px;
    display: inline-block;
    width: 30px;
    height: 30px;
}
#login_box .user_name .user_ico{
    background:url("../Admin/images/user.png") no-repeat;
}
#login_box .user_password .password_ico{
    background: url("../Admin/images/password.png") no-repeat;
}


#login_box .user_name input,.user_password input{
    border-style: none;
    border-color: inherit;
    border-width: medium;
    position:absolute;
    top:7px;
    left:75px;
    width:182px;
    height:40px;
    line-height:40px;
}
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="bg"></div>
     <div id="login_box">
         <div class="title">
             <h1>后台管理中心</h1>
         </div>
     <div class="user_name">
          <i class="user_ico"></i>
          <asp:TextBox ID="txtAdminName" runat="server" placeholder="登录账号" type="text"></asp:TextBox>
    </div>
    <div class="user_password">
         <i class="password_ico"></i>
         <asp:TextBox ID="txtAdminPwd" runat="server" placeholder="登录密码" type="text" TextMode="Password"></asp:TextBox>
    </div>
    
    <div class="login_btn">
        <asp:Button  runat="server" ID="btnLogin" Text="登录" CssClass="submit_login" OnClick="btnLogin_Click"/>
    </div>
   </div>
    </form>
</body>
</html>
