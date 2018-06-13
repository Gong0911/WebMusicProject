<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Song.aspx.cs" Inherits="Song" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="js/jquery-3.2.1.min.js"></script>


    <style type="text/css">
        #songContent{
            width:980px;
            height:950px;
            margin:0 auto;
            border:1px solid #D8D8D8;
            border-radius:8px;
            margin-top:20px;
            background:#ffffff;
        }
        #songContent .songStyle{
            position:relative;
            top:20px;
            width:920px;     
            margin:0 auto;    
          
        }
          #songContent .songStyle .styleTitle{
            width:880px;
            height:40px;
            margin:0 auto;
            border-bottom: 2px solid #C10D0C;
          }
           #songContent .songStyle .styleTitle span{
             position:absolute;
             top:10px;
             left:20px;
             width:20px;
             height:20px;
             background:url(../image/ico/style_ico.png) no-repeat;
           }
           #songContent .songStyle .styleTitle h2{
            position: absolute;
            left: 42px;
            line-height: 40px;         
            font-size: 18px;
            color: #333333;
           }       
         #songContent .songStyle .styleList{
             width:880px;
             height:205px;
             margin-top:5px;
             margin-left:20px;
            
         }
          #songContent .songStyle .styleList dl{
              padding:20px 30px;

          }
          #songContent .songStyle .styleList dt{
              color:#494949;
              font-weight:bold;
              float:left;
              font-size:15px;
          }
         
          #songContent .songStyle .styleList dd{
              float:left;
              padding-left:10px;
          }
          #songContent .songStyle .styleList dd a{
              display:inline-block;
              padding-bottom:5px;
              font-size:13px;
              color:#333333;
          }
           #songContent .songStyle .styleList dd a:hover{
               color:#C10D0C;
           }

           #songContent .songStyle .styleList .language span{
              position:absolute;
              top:66px;
              left:25px;
              width:20px;
              height:20px;
              background:url(../image/ico/language_ico.png) no-repeat;
          }
           #songContent .songStyle .styleList .style span{
               position:absolute;
               top:105px;
               left:25px;
               width:20px;
               height:20px;
               background:url(../image/ico/color_ico.png) no-repeat;
           }
           #songContent .songStyle .styleList .location span{
               position:absolute;
               top:145px;
               left:25px;
               width:20px;
               height:20px;
               background:url(../image/ico/location_ico.png) no-repeat;
           }
           #songContent .songStyle .styleList .emotion span{
               position:absolute;
               top:186px;
               left:25px;
               width:20px;
               height:20px;
               background:url(../image/ico/emotion_ico.png) no-repeat;
           }
           #songContent .songStyle .styleList .theme span{
               position:absolute;
               top:225px;
               left:25px;
               width:20px;
               height:20px;
               background:url(../image/ico/theme_ico.png) no-repeat;
           }

           #songContent .songStyle .styleResult{
               width:920px;
               height:600px;
               /*background:#f7a4a4;*/
               margin-top:10px;
             
           }
/*分页*/
          .pageing{
              position:absolute;
              top:900px;
              left:300px;
              width:320px;
              height:30px;
          }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div id="songContent">
      <div class="songStyle">
          <div class="styleTitle">
              <span></span>
              <h2>全部分类</h2>
          </div>
          <div class="styleList">

              <div class="language">
                 <span></span>
                 <dl>
                 <dt>语种</dt>
                  <dd>
                      <a href="#">华语</a>
                      <a href="#">欧美</a>
                      <a href="#">日语</a>
                      <a href="#">韩语</a>
                      <a href="#">粤语</a>
                      <a href="#">小语种</a>
                 </dd>
              </dl>
              </div>
              <div class="style">
                  <span></span>
                  <dl>
                  <dt>风格</dt>
                  <dd>
                      <a href="#">流行</a>
                      <a href="#">摇滚</a>
                      <a href="#">民谣</a>
                      <a href="#">电子</a>
                      <a href="#">轻音乐</a>
                      <a href="#">古典</a>
                      <a href="#">民族风</a>
                      <a href="#">说唱</a>
                      <a href="#">R&B</a>
                      <a href="#">爵士</a>
                      <a href="#">金属</a>
                      <a href="#">英伦</a>
                      <a href="#">朋克</a>
                      <a href="#">蓝调</a>
                      <a href="#">乡村</a>
                      <a href="#">古风</a>
                      <a href="#">拉丁</a>
                      <a href="#">另类/独立</a>
                      <a href="#">后摇</a>
                      <a href="#">世界音乐</a>
                      
                  </dd>
              </dl>
              </div>
              <div class="location">
                  <span></span>
                  <dl>
                  <dt>场景</dt>
                  <dd>
                      <a href="#">清晨</a>
                      <a href="#">夜晚</a>
                      <a href="#">学习</a>
                      <a href="#">工作</a>
                      <a href="#">午休</a>
                      <a href="#">下午茶</a>
                      <a href="#">地铁</a>
                      <a href="#">驾车</a>
                      <a href="#">运动</a>
                      <a href="#">旅行</a>
                      <a href="#">散步</a>
                      <a href="#">酒吧</a>
                  </dd>
              </dl>
              </div>
              <div class="emotion">
                  <span></span>
                  <dl>
                  <dt>情感</dt>
                  <dd>
                      <a href="#">怀旧</a>
                      <a href="#">清新</a>
                      <a href="#">伤感</a>
                      <a href="#">思念</a>
                      <a href="#">放松</a>
                      <a href="#">古典</a>
                      <a href="#">孤独</a>
                      <a href="#">感动</a>
                      <a href="#">兴奋</a>
                      <a href="#">快乐</a>
                      <a href="#">安静</a>
                  </dd>
              </dl>
              </div>
              <div class="theme">
                  <span></span>
                  <dl>
                  <dt>主题</dt>
                  <dd>
                      <a href="#">校园</a>
                      <a href="#">游戏</a>
                      <a href="#">影视</a>
                      <a href="#">70后</a>
                      <a href="#">80后</a>
                      <a href="#">90后</a>
                      <a href="#">00后</a>
                      <a href="#">儿童</a>
                      <a href="#">网络歌曲</a>
                      <a href="#">KTV</a>
                      <a href="#">经典</a>
                      <a href="#">钢琴</a>
                      <a href="#">吉他</a>
                      <a href="#">器乐</a>
                  </dd>
              </dl>
              </div>

          </div>
          <div class="styleResult">
             <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;" >
                                <br />
                                <span style="display:block;width:160px;height:145px;border:1px solid #cccccc">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "SongDetails.aspx?ID="+ Eval("SongID") %>'>
                                        <asp:Image ID="villageImg" runat="server" Width="160px" Height="145px" ImageUrl='<%#Eval("SongImage") %>' />
                                    </asp:HyperLink></span>
                            </td>
                        </tr>
                        <tr class="y">
                            <td style="text-align:center">
                                <asp:HyperLink runat="server" ID="HyperLink2" NavigateUrl='<%# "SongDetails.aspx?ID="+ Eval("SongID") %>' ForeColor="#333333">
                                    <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SongName")%></span>
                                </asp:HyperLink>
                            </td>
                        </tr>
                        <tr class="y">
                           <td style="text-align:center;font-size:13px;color:#666666">
                                 <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl='<%# "Singer.aspx?ID="+ Eval("SongID") %>' ForeColor="#666666">
                                      <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>
                                </asp:HyperLink>                       
                         </td>  
                    </table>
                </ItemTemplate>
            </asp:DataList>
                 <%-- 分页 --%>
                   <div class="pageing">        
                    共有<asp:Label ID="lblTotal" runat="server" Text="Label" ForeColor="Red"></asp:Label>页
                    第<asp:Label ID="lblCurrent" runat="server" Text="1" ForeColor="red"></asp:Label>页
                    <asp:LinkButton ID="lbtnFirst" runat="server" OnClick="lbtnFirst_Click">首页</asp:LinkButton>
                    <asp:LinkButton ID="lbntUp" runat="server" OnClick="lbntUp_Click">上一页</asp:LinkButton>
                    <asp:LinkButton ID="lbtnDown" runat="server" OnClick="lbtnDown_Click" >下一页</asp:LinkButton>
                    <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click">尾页</asp:LinkButton>
                   </div>
          </div>
      </div>
  </div>
</asp:Content>

