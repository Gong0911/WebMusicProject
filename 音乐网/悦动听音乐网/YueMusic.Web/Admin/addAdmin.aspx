<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addAdmin.aspx.cs" Inherits="Admin_addAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit"/>
<title>添加管理员</title>
<link rel="stylesheet" href="css/pintuer.css"/>
<link rel="stylesheet" href="css/admin.css"/>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>

    <style>
        .addAdminContent{
            margin-top:40px;
            width:500px;
            height:200px;
            
        }
       .addAdminContent .btn{
            padding-left:80px;
            width:40px;
            height:30px;
        }
       
        .auto-style1 {
            height: 35px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 50px;
        }
        .info1{
            width:150px;
            height:30px;
            border:1px solid #cccccc;
            border-radius:6px;
            line-height:40px;
       }
    </style>
</head>
<body> <form id="form1" runat="server">
<div class="panel-head"><strong><span class="icon-key"></span> 添加管理员</strong></div>
 <div class="addAdminContent">
     <table style="width:100%;">
         <tr>
                <td class="auto-style1">管理员：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="info1"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtUserName" ErrorMessage="&nbsp;&nbsp;请输入用户名！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">密码：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="info1"></asp:TextBox>
                </td>
                <td class="auto-style3"> <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="&nbsp;&nbsp;请输入密码！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style1">确认密码：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAgainPwd" runat="server" CssClass="info1"></asp:TextBox>
                </td>
                <td class="auto-style3">
                      <asp:RequiredFieldValidator ID="rfvAgain" runat="server" ControlToValidate="txtAgainPwd" ErrorMessage="&nbsp;&nbsp;请输入确认密码！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtAgainPwd" ControlToCompare="txtPassword" ErrorMessage="&nbsp;&nbsp;两次密码不一致！" ForeColor="Red" SetFocusOnError="true"></asp:CompareValidator>
                </td>
            </tr>
     </table>
     <div class="btn">
         <asp:Button runat="server" ID="btnAdd" Text="添加" BackColor="#3399FF" ForeColor="White" BorderStyle="None" OnClick="btnAdd_Click" style="height: 30px;Width:50px;border-radius:6px"/>   
     </div>
   
</div>

    </form>
</body>
</html>
