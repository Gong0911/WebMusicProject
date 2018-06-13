<%@ Page Language="C#" AutoEventWireup="true" CodeFile="songList.aspx.cs" Inherits="Admin_songList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit"/>
<title>音乐信息</title>
<link rel="stylesheet" href="css/pintuer.css"/>
<link rel="stylesheet" href="css/admin.css"/>
    <style type="text/css">
         .songlistContent{
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
    <div class="panel-head"><strong><span class="icon-list-ul"></span> 音乐信息</strong></div>
    <div class="songlistContent">
     <table class="table" style="width:100%;background:#f8f8d2">
            <thead>
                <tr>
                    <th style="width:1%;text-align:left;">编号</th>
                    <th style="width:1%;text-align:left;">歌名</th>
                    <th style="width:1%;text-align:left;">歌手</th>
                    <th style="width:1%;text-align:left;">图片</th>
                    <th style="width:1%;text-align:left;">类型</th>
                    <th style="width:1%;text-align:left;">链接</th>
                    <th style="width:1%;text-align:left;">点击量</th>
                    <th style="width:1%;text-align:left;">下载量</th>
                     <th style="width:1%;text-align:left;">歌词</th>
                    <th style="width:1%;text-align:left;">编辑</th>
                    <th style="width:1%;text-align:left;">删除</th>
                </tr>
            </thead>
           <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" >
                 <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                              
            </LayoutTemplate>  
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="lblSID" runat="server" Text='<%# Eval("SongID") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("SongName") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("SingerName") %>'></asp:Label>
                            </td>
                            <td>
                                  <asp:Image ID="singerImg" runat="server" height="50" width="50" ImageUrl='<%#Eval("SongImage") %>'/>
                            </td>
                             <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("SongType") %>'></asp:Label>
                            </td>
      
                              <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("SongUrl") %>'></asp:Label>
                            </td>
                              <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("SongHits") %>'></asp:Label>
                            </td>
                              <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("SongDownLoad") %>'></asp:Label>
                            </td>
                              <td>
                                
                                <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Lyric").ToString().Length>30 ? DataBinder.Eval(Container.DataItem,"Lyric").ToString().Substring(0,30)+"..." : DataBinder.Eval(Container.DataItem, "Lyric") %> '></asp:Label>
                            </td>
                          <td>                             
                                <asp:Button ID="btnUpdate" runat="server" Text="编辑" CommandName="Edit" CssClass="info" BackColor="#22CC77" />                         
                           </td>
                            <td>
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("SongID") %>' />
                                <asp:Button ID="btnDelete" runat="server" Text="删除" BackColor="#EE3333" CssClass="info" OnClick="btnDelete_Click" OnClientClick="return confirm('你确认删除这条信息吗？')" />
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
