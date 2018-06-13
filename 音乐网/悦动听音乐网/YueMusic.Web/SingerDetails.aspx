<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SingerDetails.aspx.cs" Inherits="SingerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #sinDetContent {
            width: 980px;
            height: 900px;
            margin: 0 auto;
            margin-top: 20px;
            background: #ffffff;
            border-radius: 8px;
            border: 1px solid #cccccc;
        }
/*左边布局*/
            #sinDetContent .deLeft {
                position:relative;
                width: 720px;
                height: 900px;
                float: left;
                border-right:1px solid #cccccc;
                /*background: #f89999;*/
            }
/*歌手详情部分*/
            #sinDetContent .deLeft .deTopInfo{
                width:720px;
                height:330px;
               border-bottom:1px solid #cccccc;
            }
            #sinDetContent .deLeft .deTopInfo .singerimg{
               padding-top:30px;
               padding-left:20px;
            }
            #sinDetContent .deLeft .deTopInfo .singerinfo{
                position:absolute;
                left:285px;
                top:30px;
                width:400px;
                height:360px;
                float:right;
                /*background:red;*/
            }
            #sinDetContent .deLeft .deTopInfo .singerinfo span {
                 display: inline-block;
                 width: 90px;
                 height: 40px;
                 text-align: left;
                 color:#666666;
                    
                }
            #sinDetContent .deLeft .deTopInfo .singerinfo .singername,.singertype,.singerhits{
                width:390px;
                height:40px;
                line-height:40px;
            }
            #sinDetContent .deLeft .deTopInfo .singerinfo .singermsg{
                width:460px;
                height:150px;
              
            }
            #sinDetContent .deLeft .deTopInfo .singerinfo .singermsg .sintitle{
                width:90px;
                height:40px;
                line-height:40px;
                font-size:14px;
                color:#666A88;
            }
            #sinDetContent .deLeft .deTopInfo .singerinfo .singermsg .sinmessage{
                position:absolute;
                left:90px;
                top:130px;
                width:300px;
                height:100px;
            }
/*所唱歌曲数据绑定部分*/

            #sinDetContent .deLeft .deBottom{
                width:720px;
                height:530px;
                /*background:blue;*/
            }
            #sinDetContent .deLeft .deBottom .allSong{
                width:660px;
                height:530px;
                margin:0 auto;
                /*background:red;*/
            }
            #sinDetContent .deLeft .deBottom .allSong .allSongTitle{
                width:660px;
                height:40px;        
                border-bottom:2px solid #C10D0C;
                line-height:40px;
            }
            #sinDetContent .deLeft .deBottom .allSong .allSongTitle h2{
                color:#333333;
                font-family: 'Microsoft YaHei';
                font-size:18px;
                font-weight:normal;
            }

            /*右边布局*/
            #sinDetContent .deRight {
                padding-top:10px;
                width: 230px;
                height: 900px;
                float: right;           
            }
          
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="sinDetContent">
        <%-- 左边歌手详情部分--%>
        <div class="deLeft">
            <%-- 歌手详情部分 --%>
            <div class="deTopInfo">
                <div class="singerimg">
                    <asp:Image runat="server" ID="imgSin" Width="220px" Height="220px"/>
                </div>
             
                <div class="singerinfo">
                   
                    <div class="singername">
                    <asp:Label runat="server" ID="lblSinName" ForeColor="Black" Font-Size="18pt" Width="365px"></asp:Label>
                    </div>
                    <div class="singertype">
                        <span style="font-size:12px;">类型：</span><asp:Label runat="server" ID="lblSinType" ForeColor="#242424" Width="285px"></asp:Label>
                    </div>
                    <div class="singerhits">
                        <span style="font-size:12px;">人气值：</span><asp:Label runat="server" ID="lblSinHits" ForeColor="#242424" Width="285px" ></asp:Label>
                    </div>
                    <div class="singermsg">
                        <div class="sintitle"><p style="font-size:12px;">歌手介绍：</p></div>
                        <div class="sinmessage">
                            <asp:TextBox runat="server" ID="txtinfo" BorderStyle="None" Enabled="false" Text="" Wrap="true" Rows="20" MaxLength="700" TextMode="MultiLine" Width="300px" Height="90px" ForeColor="#242424" BackColor="#FFFFFF"></asp:TextBox>
                         
                        </div>
                       
                    </div>
                </div>
            </div>
            <%-- 歌手所唱歌曲部分 --%>
            <div class="deBottom">
               <div class="allSong">
                  <div class="allSongTitle">
                     <h2>所有歌曲</h2>
                  </div>
                   <div class="allSongList">
                      <table style="width:660px;margin-top:20px;">
                          <thead style="color:#666666;font-size:14px;text-align:left;color:red;">
                              <tr>
                                  <th></th>
                                  <th></th>
                                  <th style="width:180px;"></th>
                                  
                                  <th></th>
                                  <th></th>
                                  <th></th>
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
                                 <tr style="height:35px;">
                                   <td>
                                       <asp:CheckBox  runat="server" ID="cb"/>
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
                       <div class="paging" style="padding-left:240px;padding-top:10px;">
                         <asp:DataPager runat="server" ID="dpage" PagedControlID="ListView1" PageSize="12">
                             <Fields>  
                                <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
                                <asp:NumericPagerField  ButtonCount="4"  />  
                                <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
                           </Fields>  
                         </asp:DataPager>
                    </div>
                   </div>
               </div>
            </div>
        </div>
        <%--  右边绑定数据部分--%>
        <div class="deRight">
            <div style="border-left: 3px solid #C10D0C  ; padding-left: 5px; font-family: 'Microsoft YaHei'; color: #2b2b2b;">
               <asp:HyperLink ID="HyperLink1" runat="server" Text="人气歌手" Font-Size="14" NavigateUrl="#" ForeColor="#2b2b2b" Font-Underline="false"></asp:HyperLink>
            </div>
            <div class="singerContent" style="padding-top:20px;">
               <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <table style="width: 220px;">
                        <tr>
                            <td>
                                <span>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>'>
                                        <asp:Image ID="Image2" runat="server" Width="80px" Height="80px"  ImageUrl='<%#Eval("SingerImg")%>' />
                                    </asp:HyperLink></span>
                            </td>
                            <td>   
                                   <table style="padding-left:10px;">
                                        <tr>
                                            <td>
                                                
                                                <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "SingerName")%>' NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>' ForeColor="#333333" Font-Bold="True"  
                                                  ></asp:HyperLink></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                 <span style="font-size:12px;color:#666666">人气值：<%#DataBinder.Eval(Container.DataItem, "SingerHits")%></span></td>
                                       </tr>
                                    </table>
                              </td>
                           </tr>                   
                    </table>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </div>
        </div>
    </div>
</asp:Content>

