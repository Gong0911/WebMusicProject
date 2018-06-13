<%@ Page Language="C#" AutoEventWireup="true" CodeFile="noticeList.aspx.cs" Inherits="Admin_noticeList" EnableEventValidation="false" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit"/>
<title>公告信息</title>
<link rel="stylesheet" href="css/pintuer.css"/>
<link rel="stylesheet" href="css/admin.css"/>
    <style type="text/css">
        .noticelistContent{
            margin-top:10px;
        }
        .info{
            width:40px;
            height:20px;
            border:none;
            color:white;
            line-height:20px;
            border-radius:4px;        
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel-head"><strong><span class="icon-list-ul"></span> 公告信息</strong></div>
    <div class="noticelistContent">
       <table class="table" style="width:100%;background:#f8f8d2">
            <thead>
                <tr>
                    <th style="width:1%;text-align:left;">公告编号</th>
                    <th style="width:1%;text-align:left;">公告标题</th>
                    <th style="width:1%;text-align:left;">公告内容</th>
                    <th style="width:1%;text-align:left;">修改</th>
                    <th style="width:1%;text-align:left;">删除</th>
                </tr>
            </thead>
           <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                 <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                              
            </LayoutTemplate>  
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("NoticeID") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("NoticeTitle") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblCont" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NoticeContent").ToString().Length>40 ? DataBinder.Eval(Container.DataItem,"NoticeContent").ToString().Substring(0,40)+"..." : DataBinder.Eval(Container.DataItem, "NoticeContent") %> '></asp:Label>

                            </td>
                          <td>
                              
                                <asp:Button ID="btnUpdate" runat="server" Text="编辑" CommandName="Edit" CssClass="info" BackColor="#22CC77" />
                          
                           </td>
                            <td>
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("NoticeID") %>' />
                                <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" OnClientClick="return confirm('你确认删除这条公告吗？')" CssClass="info" BackColor="#EE3333" />
                           </td>
                        </tr>
                    </tbody>
                </ItemTemplate>
            </asp:ListView>
        </table>
      <%--  <div class="Paging">
         <asp:DataPager runat="server" ID="dPage" PagedControlID="ListView1" PageSize="6">
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
