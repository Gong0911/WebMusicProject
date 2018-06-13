<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NoticeDetail.aspx.cs" Inherits="noticedetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #noticeDeContent{
            width: 980px;
            height: 900px;
            margin: 0 auto;
            margin-top: 20px;
            background: #ffffff;
            border-radius: 8px;
            border: 1px solid #cccccc;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="noticeDeContent">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div style="clear: both; overflow: hidden;width:960px;margin:0 auto;height:900px;background-color:#ffffff">
        <div style="width: 1080px; margin-top: 15px; border-radius: 3px; padding-top: 10px; overflow: hidden;">
            <div style="padding: 5px; float: left; width: 8%; border-bottom: 2px solid #C10D0C; overflow: hidden;">
                <asp:HyperLink ID="kcLink" runat="server" Text="公告详情" NavigateUrl="#" Font-Names="微软雅黑" Font-Size="16" Font-Underline="false" ForeColor="#C10D0C"></asp:HyperLink>
            </div>       
       </div>
        <div>
            <div style="margin-top: 10px; font-family: 'Microsoft YaHei';">
                <%-- 左边显示详情部分 --%>
                 <div id="Noticeleft" style="width: 68%; border-right: 2px solid #e3e3e5; float: left; overflow: hidden; margin-right: 0px;">
                  <%-- 公告标题 --%>
                    <div style="text-align: center; color: #2b2b2b; font-size: 18px;">
                        <asp:Label ID="lblNoticeTitle" runat="server" Text="" ForeColor="#2b2b2b" Font-Size="18"></asp:Label>
                    </div>
                     <%-- 发布时间 --%>
                    <div style="text-align: center; padding: 5px; margin-top:10px; font-size: 14px; font-family: 'Microsoft YaHei'; color: #555555;">
                        <span style="padding-right: 10px;">发布时间：<asp:Label ID="lblPublishTime" runat="server" Text=""></asp:Label>
                        </span>
                  </div>
                     <%-- 内容 --%>
                    <div style="  line-height:25px; margin-top: 15px; margin-left: 5px; margin-top: 5px;padding:15px; font-size:15px; ">
                        <asp:Literal ID="lblContent" runat="server"></asp:Literal>
                    </div>
                </div>
                <%-- 右边绑定数据部分 --%>
                 <div id="Noticeright" style="float: left; margin-left: 10px; width: 30%; overflow: hidden; color: #555555;height:330px;">
                    <div style="border-left: 3px solid #C10D0C  ; padding-left: 5px; font-family: 'Microsoft YaHei'; color: #2b2b2b;">
                        <asp:HyperLink ID="HyperLink5" runat="server" Target="_blank" Text="最新资讯" Font-Size="15" NavigateUrl="#" ForeColor="#2b2b2b" Font-Underline="false">
                        </asp:HyperLink>
                    </div>
                    <div style="margin-top: 10px;">
                      <asp:Repeater ID="Repeater1" runat="server">
                       <ItemTemplate>
                       <table style="width:285px;">
                        <tr >
                           <td  style="text-align:left;font-size:14px;line-height:33px;">
                             <asp:HyperLink ID="hp1" runat="server"  Text='<%# DataBinder.Eval(Container.DataItem,"NoticeTitle").ToString().Length>11 ? DataBinder.Eval(Container.DataItem,"NoticeTitle").ToString().Substring(0,11)+"..." : DataBinder.Eval(Container.DataItem, "NoticeTitle") %> ' NavigateUrl='<%# "NoticeDetail.aspx?id="+ Eval("NoticeID") %>' CssClass="linkTitle"></asp:HyperLink>
                            </td>
                            <td  style="text-align:right;font-size:14px;color:#494949;" >
                                 <span><%# string.Format("{0:yyyy-MM-dd}",Eval("NoticeTime"))%></span>
                            </td>
                         </tr>                              
                       </table>
                       </ItemTemplate>
                     </asp:Repeater>
                    </div>
             </div>
           </div>
        </div>
  </div>
   </div>

</asp:Content>
    
