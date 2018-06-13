<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateNotice.aspx.cs" Inherits="Admin_updateNotice" %>

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
        .auto-style1 {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
        <tr>
            <td>公告编号：</td>
            <td>
                <asp:TextBox ID="txtNoticeID" runat="server" Width="100" Height="40px" CssClass="info" Enabled="false"></asp:TextBox>
            </td>
        </tr>
         <tr>
                <td class="auto-style1">公告标题：</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtNoticeTitle" runat="server" MaxLength="50" Width="700" Height="40px" CssClass="info"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtNoticeTitle" ErrorMessage="标题不能为空！" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                </td>
               
            </tr>
            <tr>
                <td>公告内容：</td>
                <td>
                   <asp:TextBox ID="txtNoContent" runat="server" Width="700" Wrap="true" Rows="10" MaxLength="600" TextMode="MultiLine" CssClass="info"></asp:TextBox>
                </td>
           </tr>
        <tr>
            <td colspan="3" style="padding-top:20px;padding-left:135px;">
                <asp:LinkButton ID="lbtnSave" runat="server" Text="保存" OnClick="lbtnSave_Click" ForeColor="#0066ff" Font-Underline="false"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="lbtnCancel" runat="server" Text="返回" CausesValidation="false" PostBackUrl="~/Admin/noticeList.aspx" ForeColor="#0066ff" Font-Underline="false"></asp:LinkButton>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
