<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RankList.aspx.cs" Inherits="RankList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #ranklistContent{
            width:920px;
            height:900px;
            margin:0 auto;
            margin-top:20px;
            background:#ffffff;
            border-radius:8px;
            border:1px solid #cccccc;
        }
       #ranklistContent .banner_img{
           width:880px;
           height:230px;
           border-bottom:2px solid #C10D0C;
           margin:0 auto;
        
       }
       #ranklistContent .rankcontent{
           width:900px;
           height:600px;
           padding-top:20px;
           margin:0 auto;
       }
       #ranklistContent .rankcontent .rankLeft{
           width:180px;
           height:400px;    
           float:left;
       }
       #ranklistContent .rankcontent .rankLeft .nav .new{
           width:180px;
           height:90px;
           line-height:90px;
           text-align:center;
           background:#2172C1;
           margin-bottom:10px;
       }
       #ranklistContent .rankcontent .rankLeft .nav li{
           width:180px;
           height:90px;
           line-height:90px;
           text-align:center;
           background:#70A2D9;
           margin-bottom:10px;
       }     
         #ranklistContent .rankcontent .rankLeft .nav li a{
           display:inline-block;
           width:180px;
           height:90px;
           color:#ffffff;
           font-family:"微软雅黑";
           font-size:20px;
           text-align:center;
         }    
       
      .active1{    
           background:#2172C1;
      }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ranklistContent">
       <div class="banner_img">
           <asp:Image runat="server" ID="img" ImageUrl="~/image/banner_img/banner.png"/>
       </div>
     <div class="rankcontent">
      <div class="rankLeft">		
		<div class="nav">
			<ul>
                <li><a href="RankList.aspx?id=1">新歌榜</a></li>
			    <li><a href="RankList.aspx?id=2">热歌榜</a></li>
                <li><a href="RankList.aspx?id=3">歌手榜</a></li>
			</ul>
	    </div>
	 </div>
       <div class="rankRight">
           <%-- 新歌榜 --%>
           <asp:Panel runat="server" ID="panel1" >
               <div class="newdiv" style="width:710px;height:600px;border:1px solid #cccccc;border-radius:6px;float:right;">
                  <div class="allSongList">
                      <table style="width:660px;margin-top:20px;margin-left:40px;">
                          <thead style="color:#666666;font-size:14px;text-align:left;">
                              <tr>
                                  <th></th>
                                  <th>歌名</th>
                                  <th>歌手</th>
                                  
                                  <th>播放</th>
                                  <th>下载</th>
                                  <th>收藏</th>
                              </tr>
                          </thead>
                          <%-- 数据绑定 --%>
                            <asp:ListView ID="ListView1" runat="server">
                             <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>                           
                            </LayoutTemplate>  

                             <ItemTemplate>
                                <tbody>
                                 <tr style="height:50px;">
                                   <td>
                                       <asp:CheckBox runat="server" ID="cb"/>
                                   </td>
                                   <td style="color:#333333;font-size:15px;">
                                      <asp:Label ID="lblID" runat="server" Text='<%# Eval("SongName") %>'></asp:Label>
                                   </td>
                                   <td style="color:#707070;font-size:14px;">
                                       <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("SingerName") %>'></asp:Label>
                                   </td>
                                 
                                   <td>                            
                                      <asp:ImageButton  runat="server" ID="playImg" ImageUrl="~/image/ico/play_ico.png"/>  
                                   </td>
                                   <td>
                                        <asp:ImageButton  runat="server" ID="downloadImg" ImageUrl="~/image/ico/download_ico.png"/> 
                                   </td>
                                   <td>                             
                                        <asp:ImageButton  runat="server" ID="collectImg" ImageUrl="~/image/ico/collect_ico.png"/>                 
                                   </td>
                                 </tr>
                                </tbody>
                             </ItemTemplate>
                            </asp:ListView>
                      </table> 
                      <div class="paging" style="padding-left:260px;">
                         <asp:DataPager runat="server" ID="dpage" PagedControlID="ListView1" PageSize="10">
                             <Fields>  
                                <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
                                <asp:NumericPagerField  ButtonCount="4"  />  
                                <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
                           </Fields>  
                         </asp:DataPager>
                    </div>
                   </div>
               </div>
           </asp:Panel>
           <%-- 热歌榜 --%>
           <asp:Panel runat="server" ID="panel2" Visible="false">
               <div class="hotdiv" style="width:710px;height:600px;border:1px solid #cccccc;border-radius:6px;float:right;">
                    <div class="allSongList">
                      <table style="width:660px;margin-top:20px;margin-left:40px;">
                          <thead style="color:#666666;font-size:14px;text-align:left;">
                              <tr>
                                  <th></th>
                                  <th>歌名</th>
                                  <th>歌手</th>
                                  
                                  <th>播放</th>
                                  <th>下载</th>
                                  <th>收藏</th>
                              </tr>
                          </thead>
                          <%-- 数据绑定 --%>
                            <asp:ListView ID="ListView2" runat="server">
                             <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>                           
                            </LayoutTemplate>  

                             <ItemTemplate>
                                <tbody>
                                 <tr style="height:50px;">
                                   <td>
                                       <asp:CheckBox runat="server" ID="cb"/>
                                   </td>
                                   <td style="color:#333333;font-size:15px;">
                                      <asp:Label ID="lblID" runat="server" Text='<%# Eval("SongName") %>'></asp:Label>
                                   </td>
                                   <td style="color:#707070;font-size:14px;">
                                       <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("SingerName") %>'></asp:Label>
                                   </td>
                                 
                                   <td>                            
                                      <asp:ImageButton  runat="server" ID="playImg" ImageUrl="~/image/ico/play_ico.png"/>  
                                   </td>
                                   <td>
                                        <asp:ImageButton  runat="server" ID="downloadImg" ImageUrl="~/image/ico/download_ico.png"/> 
                                   </td>
                                   <td>                             
                                        <asp:ImageButton  runat="server" ID="collectImg" ImageUrl="~/image/ico/collect_ico.png"/>                 
                                   </td>
                                 </tr>
                                </tbody>
                             </ItemTemplate>
                            </asp:ListView>
                      </table> 
                      <div class="paging" style="padding-left:260px;">
                         <asp:DataPager runat="server" ID="DataPager1" PagedControlID="ListView2" PageSize="10">
                             <Fields>  
                                <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
                                <asp:NumericPagerField  ButtonCount="4"  />  
                                <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
                           </Fields>  
                         </asp:DataPager>
                    </div>
                   </div>
               </div>
           </asp:Panel>
           <%-- 歌手榜 --%>
           <asp:Panel runat="server" ID="panel3" Visible="false">
               <div class="sindiv" style="width:710px;height:615px;border:1px solid #cccccc;border-radius:6px;float:right;">           
                 <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;" >
                                <br />
                                <span>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>'>
                                        <asp:Image ID="sinImg" runat="server" Width="152px" Height="145px" ImageUrl='<%#Eval("SingerImg") %>' />
                                    </asp:HyperLink></span>
                            </td>
                        </tr>                 
                        <tr class="y">
                           <td style="text-align:center;font-size:13px;color:#666666">
                                 <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl='<%# "Singer.aspx?ID="+ Eval("SingerID") %>' ForeColor="#666666">
                                      <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>
                                </asp:HyperLink>                       
                         </td>
                        </tr>
                         <tr class="y">
                            <td style="text-align:center">                            
                                   <span style="font-size:12px;color:#666666">人气值：<%#DataBinder.Eval(Container.DataItem, "SingerHits")%></span>                              
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
              </div>
           </asp:Panel>
       </div>
       </div>
    </div>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".nav a").each(function () {
                $this = $(this);
                if ($this[0].href == String(window.location)) {
                    $this.addClass("active1");
                }
            });
        });
    </script>
</asp:Content>

