<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addSong.aspx.cs" Inherits="Admin_addSong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit"/>
<title>添加音乐</title>
<link rel="stylesheet" href="css/pintuer.css"/>
<link rel="stylesheet" href="css/admin.css"/>
    <style type="text/css">
         .addsongContent td{
            padding-top:15px;
        }
         .info{
            border:1px solid #cccccc;
            border-radius:6px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel-head"><strong><span class="icon-plus"></span> 添加音乐</strong></div>
    <div class="addsongContent">
         <table style="width:100%;margin-top:30px;">
         <tr>
                <td class="td1">歌曲名称：</td>
                <td class="td2">
                    <asp:TextBox ID="txtSongName" runat="server" Width="230px" Height="40px" CssClass="info"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtSongName" ErrorMessage="歌名不能为空！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                </td>
               
            </tr>
             <tr>
                 <td>歌手:</td>
                 <td>               
                     <asp:TextBox runat="server" ID="txtSingerName" CssClass="info" Width="120px" Height="40px"></asp:TextBox>
               </td>
             </tr>
             <tr>
                 <td>歌曲类型：</td>
                 <td><asp:DropDownList runat="server" ID="ddlSongTYpe" CssClass="info" Width="100px" Height="40px">
                     <asp:ListItem>流行</asp:ListItem>
                     <asp:ListItem>摇滚</asp:ListItem>
                     <asp:ListItem>民谣</asp:ListItem>
                     <asp:ListItem>电子</asp:ListItem>
                     <asp:ListItem>轻音乐</asp:ListItem>
                     </asp:DropDownList>
、                 </td>
             </tr>
         
             <tr>
                 <td>歌曲图片：</td>
                 <td><asp:FileUpload runat="server" ID="uploadImg" Width="230px"/></td>
             </tr>
              <tr>
                 <td>歌曲路径：</td>
                 <td><asp:FileUpload runat="server" ID="uploadSongPath" Width="230px"/></td>
             </tr>
             <tr>
                 <td>歌词：</td>
                 <td><asp:TextBox ID="txtLyrics" runat="server" Width="400" Wrap="true" Rows="10" MaxLength="600" TextMode="MultiLine" CssClass="info"></asp:TextBox></td>
             </tr>
           <tr>
               <td></td>
               <td>
                   <asp:Button runat="server" ID="btnAddNotice" Text="添加" BackColor="#3399FF" BorderStyle="None" ForeColor="White" OnClick="btnAddNotice_Click" style="height: 30px;Width:50px;border-radius:6px"/>
               </td>
           </tr>
       
     </table>
    </div>
    </form>
</body>
</html>
