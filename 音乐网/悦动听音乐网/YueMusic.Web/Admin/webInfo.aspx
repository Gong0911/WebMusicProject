<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webInfo.aspx.cs" Inherits="Admin_webInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit"/>
    <title>网站信息</title>  
    <link rel="stylesheet" href="css/pintuer.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  

    <style type="text/css">
        .webinfoContent{

        }
        .webinfoContent td{
            padding-top:40px;
        }
        .td1{
            width:100px;
        }
       .info{
            width:220px;
            height:40px;
            border:1px solid #cccccc;
            border-radius:6px;
            line-height:40px;
          
        }
       .info1{
            width:440px;
            height:40px;
            border:1px solid #cccccc;
            border-radius:6px;
            line-height:40px;
       }
       .picture{
           width:45px;
           height:45px;
         
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel-head"><strong><span class="icon-book"></span> 网站信息</strong></div>
    <div class="webinfoContent">
     <table style="width:100%;">
         <tr>
                <td class="td1">网站名称：</td>
                <td class="td2">
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="info" Text="悦动听音乐网站" Enabled="false"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="td1">网站LOGO：</td>
                <td class="td2">
                    <asp:Image  runat="server" ID="imagLogo" CssClass="picture" ImageUrl="~/Admin/images/logoInfo.png"/>
                </td>
               
            </tr>
            <tr>
                <td class="td1">网站描述：</td>
                <td class="td2">
                    <asp:TextBox ID="txtAgainPwd" runat="server" CssClass="info1" Enabled="false" Text="用ASP.NET技术实现的一个能够满足音乐爱好者基本需求的音乐网站。"></asp:TextBox>
                </td>
           </tr>
           <tr>
                <td class="td1">建设团队：</td>
                <td class="td2">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="info" Enabled="false" Text="龚彬越 丁明 钟名旺"></asp:TextBox>
                </td>
           </tr>
           <tr>
                <td class="td1">联系方式：</td>
                <td class="td2">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="info" Enabled="false" Text="13576194530"></asp:TextBox>
                </td>
           </tr>
     </table>
    </div>
    </form>
</body>
</html>
