<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateSinger.aspx.cs" Inherits="Admin_updateSinger" %>

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
                <asp:TextBox runat="server" ID="txtSingerid" Enabled="false" CssClass="info" Height="30"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>歌手名：</td>
            <td>
                <asp:TextBox runat="server" ID="txtSingername" CssClass="info" Height="30"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtSingername" ErrorMessage="歌手不能为空！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>歌手类型：</td>
            <td>
                <asp:TextBox runat="server" ID="txtType" Enabled="false" CssClass="info" Height="30"></asp:TextBox>
                <asp:DropDownList runat="server" ID="ddlsingerType" CssClass="info" Height="30">
                    <asp:ListItem>华语男歌手</asp:ListItem>
                    <asp:ListItem>华语女歌手</asp:ListItem>
                    <asp:ListItem>华语组合/乐队</asp:ListItem>

                    <asp:ListItem>欧美男歌手</asp:ListItem>
                    <asp:ListItem>欧美女歌手</asp:ListItem>
                    <asp:ListItem>欧美组合/乐队</asp:ListItem>

                    <asp:ListItem>日本男歌手</asp:ListItem>
                    <asp:ListItem>日本女歌手</asp:ListItem>
                    <asp:ListItem>日本组合/乐队</asp:ListItem>

                    <asp:ListItem>韩国男歌手</asp:ListItem>
                    <asp:ListItem>韩国女歌手</asp:ListItem>
                    <asp:ListItem>韩国组合/乐队</asp:ListItem>

                    <asp:ListItem>其他男歌手</asp:ListItem>
                    <asp:ListItem>其他女歌手</asp:ListItem>
                    <asp:ListItem>其他组合/乐队</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>歌手介绍：</td>
            <td>
                <asp:TextBox ID="txtSiContent" runat="server" Width="700" Wrap="true" Rows="20" MaxLength="700" TextMode="MultiLine" CssClass="info"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>歌手图片：</td>
            <td>
                <asp:Image runat="server" ID="sinImage" Width="120" Height="120"/>
            </td>         
        </tr>
        <tr>
            <td>修改图片：</td>
            <td>
                 <asp:FileUpload runat="server" ID="download"/>
            </td>
        </tr>
       <tr>
            <td colspan="3" style="padding-top:20px;padding-left:135px;">
                <asp:LinkButton ID="lbtnSave" runat="server" Text="保存" ForeColor="#0066ff" OnClick="lbtnSave_Click" Font-Underline="false"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="lbtnCancel" runat="server" Text="返回" CausesValidation="false" PostBackUrl="~/Admin/singerList.aspx" ForeColor="#0066ff" Font-Underline="false"></asp:LinkButton>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
