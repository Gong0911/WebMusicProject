<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateSong.aspx.cs" Inherits="Admin_updateSong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
         .info{
            border:1px solid #cccccc;
            border-radius:6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <table style="width:100%">
        <tr>
            <td>编号：</td>
            <td>
                <asp:TextBox runat="server" ID="txtSongid" Enabled="false" CssClass="info" Height="30"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>歌曲名：</td>
            <td>
                <asp:TextBox runat="server" ID="txtSongrname" CssClass="info" Height="30"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtSongrname" ErrorMessage="歌手不能为空！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>歌手：</td>
            <td>
                <asp:TextBox runat="server" ID="txtSingerName" Enabled="true" CssClass="info" Height="30"></asp:TextBox>
          
            </td>
        </tr>
         <tr>
            <td>歌曲类型：</td>
            <td>
                <asp:TextBox runat="server" ID="txtSonType" Enabled="false" CssClass="info" Height="30"></asp:TextBox>
                <asp:DropDownList runat="server" ID="ddlsongType" CssClass="info" Height="30" Width="80">
                    <asp:ListItem>流行</asp:ListItem>
                     <asp:ListItem>摇滚</asp:ListItem>
                     <asp:ListItem>民谣</asp:ListItem>
                     <asp:ListItem>电子</asp:ListItem>
                     <asp:ListItem>轻音乐</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>歌词：</td>
            <td>
                <asp:TextBox ID="txtLyrics" runat="server" Width="500" Wrap="true" Rows="20" MaxLength="700" TextMode="MultiLine" CssClass="info"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>歌曲图片：</td>
            <td>
                <asp:Image runat="server" ID="songImage" Width="120" Height="120"/>
            </td>         
        </tr>
        <tr>
            <td>修改图片：</td>
            <td>
                 <asp:FileUpload runat="server" ID="DownloadSongimg"/>
            </td>
        </tr>
        <tr>
            <td>修改路径：</td>
            <td>
                 <asp:FileUpload runat="server" ID="fuSongUrl"/>
            </td>
        </tr>
       <tr>
            <td colspan="3" style="padding-top:20px;padding-left:135px;">
                <asp:LinkButton ID="lbtnSave" runat="server" Text="保存" ForeColor="#0066ff" OnClick="lbtnSave_Click" Font-Underline="false"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="lbtnCancel" runat="server" Text="返回" CausesValidation="false" PostBackUrl="~/Admin/songList.aspx" ForeColor="#0066ff" Font-Underline="false"></asp:LinkButton>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
