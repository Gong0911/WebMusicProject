<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addSinger.aspx.cs" Inherits="Admin_addSinger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit"/>
<title>添加歌手</title>
<link rel="stylesheet" href="css/pintuer.css"/>
<link rel="stylesheet" href="css/admin.css"/>
    <style type="text/css">
        .addsingerContent td{
            padding-top:20px;
        }
         .info{
            border:1px solid #cccccc;
            border-radius:6px;
         }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
    <div class="panel-head"><strong><span class="icon-plus"></span> 添加歌手</strong></div>
    <div class="addsingerContent">
     <table style="width:100%;margin-top:30px;">
         <tr>
                <td class="td1">歌手名：</td>
                <td class="td2">
                    <asp:TextBox ID="txtSingerName" runat="server" CssClass="info" MaxLength="50" Width="105px" Height="40px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtSingerName" ErrorMessage="歌手名不能为空！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                </td>
               
            </tr>
             <tr>
                 <td>歌手类型：</td>
                 <td>
                     <asp:DropDownList ID="ddlType" runat="server" CssClass="info" Height="40px"></asp:DropDownList>
                 </td>
             </tr>
             <tr>
                 <td>歌手介绍：</td>
                 <td> <asp:TextBox ID="txtSiContent" runat="server" Width="700" Wrap="true" Rows="10" MaxLength="600" TextMode="MultiLine" CssClass="info"></asp:TextBox></td>
             </tr>
             <tr>
                 <td>歌手图片：</td>
                 <td><asp:FileUpload runat="server" ID="uploadImg"/></td>
             </tr>
           
           <tr>
               <td></td>
               <td>
                   <asp:Button runat="server" ID="btnAddSinger" Text="添加"  BackColor="#3399FF" BorderStyle="None" ForeColor="White" OnClick="btnAddSinger_Click" style="height: 30px;Width:50px;border-radius:6px"/>
               </td>
           </tr>
       
     </table>
    </div>
    </form>
</body>
</html>
