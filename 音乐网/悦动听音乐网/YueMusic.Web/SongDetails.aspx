<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SongDetails.aspx.cs" Inherits="SongDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        #songDetails{
            width: 980px;
            height: 1500px;
            margin: 0 auto;
            margin-top: 20px;
            background: #ffffff;
            border-radius: 8px;
            border: 1px solid #cccccc;        
        }
/*左边布局*/
        #songDetails .deLeft {
            position:relative;
            width: 720px;
            height: 1500px;
            float: left;
            border-right:1px solid #cccccc;
            /*background: #f89999;*/
        }
          
         #songDetails .deLeft .deTopInfo{
               width:720px;
               height:400px;
               border-bottom:1px solid #cccccc;
            }
            #songDetails .deLeft .deTopInfo .songimg{
               margin-top:30px;
               margin-left:20px;
               width:220px;
               height:220px;
               border:1px solid #cccccc;
            }
            #songDetails .deLeft .deTopInfo .songinfo{
                position:absolute;
                left:285px;
                top:30px;
                width:400px;
                height:360px;
                float:right;
                /*background:red;*/
            }
            #songDetails .deLeft .deTopInfo .songinfo span {
                 display: inline-block;
                 width: 90px;
                 height: 40px;
                 text-align: left;
                 color:#666666;
                    
                }
            #songDetails .deLeft .deTopInfo .songinfo .songname,.singer,.songtype,.songbtn{
                width:390px;
                height:40px;
                line-height:40px;
            }
/*btn播放 下载 评论按钮部分*/
          #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnPlay{
              margin-top:5px;
              width:65px;
              height:30px;
              background:#3987D0;        
              border-radius:6px;
          }
          #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnPlay span{
              position:absolute;
              top:132px;
              left:7px;
              width:20px;
              height:20px;
              background:url(../image/ico/btnPlay.png) no-repeat;
          }
          #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnPlay .btnP{
              position:absolute;
              top:127px;
              left:25px;
              width:40px;
              height:26px;
              border:none;
              border-radius:6px;
              background:#3987D0;
              color:#ffffff;
          }
/*下载*/
          #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnDownload{
              position:absolute;
              top:125px;
              left:90px;
              width:65px;
              height:30px;
              border:1px solid #cccccc;
              border-radius:6px;
              /*background:red;*/
          }
          #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnDownload span{
              position:absolute;
              top:7px;
              left:9px;
              width:16px;
              height:16px;
              background:url(../image/ico/btnDownload.png) no-repeat;
          }
           #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnDownload .btnD{
              position:absolute;
              top:2px;
              left:25px;
              width:40px;
              height:26px;
              border:none;
              background:#ffffff;
              color:#666666;
          }
         
/*收藏*/
          #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnCollect{
              position:absolute;
              top:125px;
              left:180px;
              width:65px;
              height:30px;
              border:1px solid #cccccc;
              border-radius:6px;
              /*background:red;*/
          }
           #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnCollect span{
              position:absolute;
              top:7px;
              left:9px;
              width:16px;
              height:16px;
              background:url(../image/ico/btnCollect.png) no-repeat;
          }
           #songDetails .deLeft .deTopInfo .songinfo .songbtn .btnCollect .btnC{
              position:absolute;
              top:2px;
              left:25px;
              width:40px;
              height:26px;
              border:none;
              background:#ffffff;
              color:#666666;
          }
/*下载量*/
                #songDetails .deLeft .deTopInfo .songinfo .songbtn .DLSum {
                    position: absolute;
                    top: 125px;
                    left: 270px;
                    width: 80px;
                    height: 26px;
                    border: none;
                    background: #ffffff;
                    color: #666666;
                    text-align:center;

                }
/*歌词信息部分*/
            #songDetails .deLeft .deTopInfo .songinfo .lyric{
                width:430px;
                height:200px;
        
            }
            #songDetails .deLeft .deTopInfo .songinfo .lyric .sintitle{
                width:90px;
                height:40px;
                line-height:40px;
                font-size:14px;
                color:#666A88;
            }
            #songDetails .deLeft .deTopInfo .songinfo .lyric .sinmessage{
                position:absolute;
                left:90px;
                top:170px;
                width:300px;
                height:100px;
            }

/*底部评论*/
            #songDetails .deLeft .deBottom{
                width:720px;
                height:1100px;
                /*background:blue;*/
            }
            #songDetails .deLeft .deBottom .comment{         
                width:660px;
                height:1100px;
                margin:0 auto;
                /*background:red;*/
            }
            #songDetails .deLeft .deBottom .comment .comm_title{
                width:660px;
                height:40px;        
                border-bottom:2px solid #C10D0C;
                line-height:40px;
            }
            #songDetails .deLeft .deBottom .comment .comm_title h2{
                color:#333333;
                font-family: 'Microsoft YaHei';
                font-size:18px;
                font-weight:normal;
            }
            #songDetails .deLeft .deBottom .comment .comm_send{
                margin-top:10px;
                width:660px;
                height:180px;
                /*background:#f8c0c0;*/
            }
            .info{
                float:right;
                margin-top:5px;
            }
            .info1{
                border:1px solid #cccccc;
                border-radius:6px;
            }
            .info2{
                border-radius:50%;
            }
            .info3{
                font-family:'Microsoft YaHei';

            }
            

     /*右边布局*/
        #songDetails .deRight {
            padding-top:10px;
            width: 230px;
            height: 900px;
            float: right;       
           
          }
     
    </style>
      
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="songDetails">
          <%-- 左边歌曲详情部分--%>
        <div class="deLeft">
           <div class="deTopInfo">
                <div class="songimg">
                    <asp:Image runat="server" ID="imgSong" Width="220px" Height="220px" ImageUrl="~/image/song_img/img1.jpg"/>
                </div>
             
                <div class="songinfo">      
                    <div class="songname">
                    <asp:Label runat="server" ID="lblSongName" ForeColor="Black" Font-Size="18pt" Width="365px" Text=""></asp:Label>
                   
                    </div>
                    <div class="singer">
                        <span style="font-size:12px;">点击量：</span><asp:Label runat="server" ID="lblSongHits" ForeColor="#242424" Width="285px" Text=''></asp:Label>
                    </div>
                     
                    <div class="songtype">
                        <span style="font-size:12px;">所属类型：</span><asp:Label runat="server" ID="lblSongType" ForeColor="#242424" Width="285px" Text=""></asp:Label>
                    </div>
                    <div class="songbtn">      
                        <div class="btnPlay">
                            <span></span>
                             <asp:Button ID="btnPlayMusic" runat="server" Text="播放" CssClass="btnP" OnClick="btnPlayMusic_Click"/>
                        </div>
                        <div class="btnDownload">
                            <span class="auto-style1"></span>
                            <asp:Button ID="btnDownMusic" runat="server" Text="下载" CssClass="btnD" OnClick="btnDownMusic_Click" style="left: 25px; top: 2px; height: 26px"/>
                         
                        </div>
                        <div class="btnCollect">
                            <span></span>
                            <asp:Button ID="btnCollectMusic" runat="server" Text="收藏" CssClass="btnC"/>
                        </div>
                          <div class="DLSum">
                            <asp:Label runat="server" ID="lblSum" Height="30px"></asp:Label>
                        </div>
                    </div>
                    <div class="lyric">
                        <div class="sintitle"><p style="font-size:12px;">歌词：</p></div>
                        <div class="sinmessage" style="left: 90px; top: 170px">                         
                            <asp:TextBox runat="server" ID="txtLyric" BorderStyle="None" Enabled="false" Text="" Wrap="true" Rows="20" MaxLength="700" TextMode="MultiLine" Width="300px" Height="190px" ForeColor="#242424" BackColor="#FFFFFF"></asp:TextBox>    
                        </div>
                       
                    </div>
                </div>
            </div>
            
           <div class="deBottom">
               <div class="comment">
                   <div class="comm_title">
                        <h2>评论</h2>
                   </div>
                   <div class="comm_send">
                       <div class="comm_content">
                           <asp:TextBox runat="server" ID="txtComment" TextMode="MultiLine" Width="660" Height="120" CssClass="info1" placeholder="请写下你的评论哦～" type="text"></asp:TextBox>
                       </div>
                       <%-- 发表评论 --%>
                       <div class="sent_btn" style="width:660px;">                   
                           <asp:Button runat="server" ID="btnSendComm" Text="发表评论" Width="80" Height="30" BorderStyle="None" BackColor="Red" ForeColor="White" CssClass="info" OnClick="btnSendComm_Click"/>
                       </div>  
                      
                     <div class="comm_list" style="width:660px;margin-top:100px;">
                           <hr style="height:1px;border:none;border-top:1px dotted #185598;" /> 
                           <asp:ListView ID="ListView1" runat="server">
                                    <LayoutTemplate>
                                        <table>
                                            <asp:PlaceHolder ID="groupPlaceholder" runat="server"></asp:PlaceHolder>
                                        </table>
                                    </LayoutTemplate>
                                    <GroupTemplate>
                                        <tr>
                                            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                                        </tr>
                                    </GroupTemplate>
                                    <ItemTemplate>
                                        <td>
                                            <div style="width:660px;height:150px;overflow:hidden;position:relative;";>
                                                <div style="width:140px;height:150px;float:left;background:#ffffff;position:absolute;">
                                                    <div style="position:absolute;top:15px;left:45px;width:60px;height:60px;">
                                                        <asp:Image ID="imgName" runat="server" Height="60" Width="60" ImageUrl="~/Admin/images/y.jpg" CssClass="info2"/>
                                                    </div>
                                                    <div style="position:absolute;left:0;top:80px;width:140px;height:40px;text-align:center;color:#2878C6;font-size:14px;font-family:'Microsoft YaHei'">
                                                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>
                                                    </div>
                                                </div>
                                                <div style="width:500px;height:150px;float:right;position:absolute;left:150px;top:10px;">
                                                    <div style="text-align:left;height:120px;width:510px;font-size:14px;font-family:'Microsoft YaHei'">
                                                        <asp:Label ID="lbltext" runat="server" Text='<%#Eval("CommContent") %>'></asp:Label>
                                                    </div>
                                                    <div style="width:150px;height:30px;position:absolute;bottom:2px;">
                                                       <asp:ImageButton runat="server" ID="imgHits" ImageUrl="~/image/ico/praise_ico.png"/><span style="color:#666666;font-size:14px;">(</span><asp:Label runat="server" ID="lblPraise" Text='<%#Eval("PraiseHits") %>' ForeColor="#666666" Font-Size="14px"></asp:Label><span style="color:#666666;font-size:14px;">)</span><span style="color:#666666;padding-left:10px;">|</span>
                                                      <asp:LinkButton runat="server" ID="btnReply" Text="回复" ForeColor="#2878C6" Font-Size="14px" CssClass="info3"></asp:LinkButton>
                                                    </div>
                                                    <div style="text-align:right;height:30px;width:140px;position:absolute;bottom:0px;right:2px;font-size:14px;">
                                                        <asp:Label ID="lbltime" runat="server" Text='<%#string.Format("{0:yyyy-MM-dd HH:mm}",Eval("CommentTime")) %>' ForeColor="#666666"></asp:Label>                                                                                                    
                                                    </div>
                                                </div>
                                       </div>
                                            <hr style="height:1px;border:none;border-top:1px dotted #185598;" />
                                        </td>
                                    </ItemTemplate>

                                </asp:ListView>                           
                     </div>

           
                 </div>
               </div>
           </div>
        </div>
           
        <%--  右边绑定热歌数据部分--%>
        <div class="deRight">
           <div style="border-left: 3px solid #C10D0C  ; padding-left: 5px; font-family: 'Microsoft YaHei'; color: #2b2b2b;">
               <asp:HyperLink ID="HyperLink1" runat="server" Text="热门歌曲" Font-Size="14" NavigateUrl="#" ForeColor="#2b2b2b" Font-Underline="false"></asp:HyperLink>
            </div>
            <div class="songContent" style="padding-top:20px;">
               <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <table style="width: 220px;">
                        <tr>
                            <td>
                                <span style="display:block;width:80px;height:80px;border:1px solid #cccccc">
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "SongDetails.aspx?ID="+ Eval("SongID") %>'>
                                        <asp:Image ID="imgSongs" runat="server" Width="80px" Height="80px"  ImageUrl='<%#Eval("SongImage")%>' />
                                    </asp:HyperLink></span>
                            </td>
                            <td>   
                                   <table style="padding-left:10px;">
                                        <tr>
                                            <td>
                                                
                                                <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "SongName")%>' NavigateUrl='<%# "SongDetails.aspx?ID="+ Eval("SongID") %>' ForeColor="#333333" Font-Size="14px"></asp:HyperLink></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                 <span style="font-size:11px;color:#666666">点击量：<%#DataBinder.Eval(Container.DataItem, "SongHits")%></span></td>
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


