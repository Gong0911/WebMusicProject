<%@ Page Language="C#" AutoEventWireup="true" CodeFile="commentList.aspx.cs" Inherits="Admin_commentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
 <meta name="renderer" content="webkit"/>
 <title>用户信息</title>  
 <link rel="stylesheet" href="css/pintuer.css"/>
 <link rel="stylesheet" href="css/admin.css"/>  
    <style type="text/css">
          .commentContent{
            margin-top:10px;
        }
        .info{
            width:40px;
            height:30px;
            border:none;
            color:white;
            line-height:20px;
            border-radius:4px;        
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel-head"><strong><span class="icon-list-ul"></span> 评论信息</strong></div>
    <div class="commentContent">
        <table class="table" style="background:#a1def8">
            <thead>
                <tr>
                    <th style="width:1%;text-align:left;">评论编号</th>
                    <th style="width:1%;text-align:left;">评论者</th>
                    <th style="width:1%;text-align:left;">评论歌曲</th>
                    <th style="width:1%;text-align:left;">评论内容</th>
                    <th style="width:1%;text-align:left;">评论时间</th>
                    <th style="width:1%;text-align:left;">点赞量</th>
                    <th style="width:1%;text-align:left;">删除</th>
                </tr>
            </thead>
        <%--绑定用户信息数据 --%>
            <asp:ListView ID="ListView1" runat="server" on>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("CommentID") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblUName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblSName" runat="server" Text='<%# Eval("SongName") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblContent" runat="server" Text='<%# Eval("CommContent") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblTime" runat="server" Text='<%# Eval("CommentTime") %>'></asp:Label>
                            </td>
                              <td>
                                <asp:Label ID="lblHits" runat="server" Text='<%# Eval("PraiseHits") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CommentID") %>' />
                                <asp:Button ID="btnDelete" runat="server" Text="删除" CssClass="info" OnClick="btnDelete_Click" OnClientClick="return confirm('你确认删除这个用户吗？')" BackColor="#EE3333"/>
                           </td>
                        </tr>
                    </tbody>
                </ItemTemplate>
            </asp:ListView>
        </table>
    </div>
    </form>
</body>
</html>
