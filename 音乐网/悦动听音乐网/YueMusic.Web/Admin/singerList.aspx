<%@ Page Language="C#" AutoEventWireup="true" CodeFile="singerList.aspx.cs" Inherits="Admin_singerList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit"/>
<title>歌手信息</title>
<link rel="stylesheet" href="css/pintuer.css"/>
<link rel="stylesheet" href="css/admin.css"/>
<style type="text/css">
        .singerlistContent{
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
    <div class="panel-head"><strong><span class="icon-list-ul"></span> 歌手信息</strong></div>
    <div class="singerlistContent">
      <table class="table" style="width:100%;background:#d4f3ce">
            <thead>
                <tr>
                    <th style="width:1%;text-align:left;">歌手编号</th>
                    <th style="width:1%;text-align:left;">歌手名</th>                 
                    <th style="width:1%;text-align:left;">歌手类型</th>
                    <th style="width:3%;text-align:left;">歌手介绍</th>
                    <th style="width:1%;text-align:left;">歌手图片</th>
                    <th style="width:1%;text-align:left;">点击量</th>              
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
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("SingerID") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblSname" runat="server" Text='<%# Eval("SingerName") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblStype" runat="server" Text='<%# Eval("SingerType") %>'></asp:Label>
                            </td>
                             <td>
                                <asp:Label ID="lblSinfo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SingerInfo").ToString().Length>40 ? DataBinder.Eval(Container.DataItem,"SingerInfo").ToString().Substring(0,40)+"..." : DataBinder.Eval(Container.DataItem, "SingerInfo") %> '></asp:Label>
                            </td>
                            <td>
                                <asp:Image ID="singerImg" runat="server" height="35" width="80" ImageUrl='<%#Eval("SingerImg") %>'/>
                            </td>
                            <td>
                                <asp:Label ID="lblShits" runat="server" Text='<%# Eval("SingerHits") %>'></asp:Label>
                           </td>                 
                           <td>       
                                <asp:Button ID="btnUpdate" runat="server" Text="编辑" CommandName="Edit" CssClass="info" BackColor="#22CC77" />
                          </td>
                            <td>
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("SingerID") %>' />
                                <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" OnClientClick="return confirm('你确认删除这条信息吗？')" BackColor="#EE3333" CssClass="info" />
                           </td>
                        </tr>
                    </tbody>
                </ItemTemplate>
            </asp:ListView>
        </table>
      <%-- 分页 --%>
    <%-- <div class="paging">
         <asp:DataPager runat="server" ID="dpage" PagedControlID="ListView1" PageSize="4">
             <Fields>  
                <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
                <asp:NumericPagerField  ButtonCount="4"  />  
                <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
           </Fields>  
         </asp:DataPager>
     </div>--%>
    </div>
    </form>
</body>
</html>
