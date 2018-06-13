<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addNotice.aspx.cs" Inherits="Admin_addNotice" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
 <meta name="renderer" content="webkit"/>
 <title>添加公告</title>  
 <link rel="stylesheet" href="css/pintuer.css"/>
 <link rel="stylesheet" href="css/admin.css"/>
 <script src="js/pintuer.js"></script> 

    <style type="text/css">
        .addnoticeContent{
            margin-top:20px;
        }
         .addnoticeContent td{
            padding-top:40px;
        }
         .info{
            border:1px solid #cccccc;
            border-radius:6px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel-head"><strong><span class="icon-plus"></span> 添加公告</strong></div>
    <div class="addnoticeContent">
       <table style="width:100%;">
         <tr>
                <td class="td1">公告标题：</td>
                <td class="td2">
                    <asp:TextBox ID="txtNoticeTitle" runat="server" MaxLength="50" Width="700" Height="40px" CssClass="info"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtNoticeTitle" ErrorMessage="标题不能为空！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                </td>
               
            </tr>
            <tr>
                <td class="td1">公告内容：</td>
                <td class="td2">
                   <asp:TextBox ID="txtNoContent" runat="server" Width="700" Wrap="true" Rows="10" MaxLength="600" TextMode="MultiLine" CssClass="info"></asp:TextBox>
                </td>
           </tr>
           <tr>
               <td></td>
               <td>
                   <asp:Button runat="server" ID="btnAddNotice" Text="添加" OnClick="btnAddNotice_Click" BackColor="#3399FF" BorderStyle="None" ForeColor="White" style="height: 30px;Width:50px;border-radius:6px"/>
               </td>
           </tr>
       
     </table>
    </div>
    </form>
</body>
</html>
