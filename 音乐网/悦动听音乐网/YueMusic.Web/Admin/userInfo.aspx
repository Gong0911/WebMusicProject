<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userInfo.aspx.cs" Inherits="userInfo" EnableEventValidation="false" %>

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
 <script src="js/jquery.js"></script>
 <script src="js/pintuer.js"></script> 
     
    <style type="text/css">
        .table{
            width:800px;
            background:#C1A5A1;
            
        }
/*删除按钮的样式*/
        .delCss{
            border:none;
            color:#ffffff;
            background:red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
   
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 用户信息</strong></div>
  <div class="userInfoContent">
    <table class="table" style="background:#a1def8">
            <thead>
                <tr>
                    <th style="width:1%;text-align:left;">用户编号</th>
                    <th style="width:1%;text-align:left;">用户名</th>
                    <th style="width:1%;text-align:left;">用户密码</th>
                    <th style="width:1%;text-align:left;">用户邮箱</th>
                    <th style="width:1%;text-align:left;">用户电话号码</th>
                    <th style="width:1%;text-align:left;">删除</th>
                </tr>
            </thead>
        <%--绑定用户信息数据 --%>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblPass" runat="server" Text='<%# Eval("UserPwd") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("UserEmail") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("UserPhone") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("UserID") %>' />
                                <asp:Button ID="btnDelete" runat="server" Text="删除" CssClass="delCss" OnClick="btnDelete_Click" OnClientClick="return confirm('你确认删除这个用户吗？')" />
                           </td>
                        </tr>
                    </tbody>
                </ItemTemplate>
            </asp:ListView>
        </table>
      <%-- 分页 --%>
     <div class="paging">
         <asp:DataPager runat="server" ID="dpage" PagedControlID="ListView1" PageSize="4">
             <Fields>  
                <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
                <asp:NumericPagerField  ButtonCount="4"  />  
                <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
           </Fields>  
         </asp:DataPager>
     </div>
       
     </div>

    </form>
</body>
</html>
