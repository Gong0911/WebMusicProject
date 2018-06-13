<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Singer.aspx.cs" Inherits="Singer" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #singerContent{
            width:980px;
            height:900px;
            margin:0 auto;
            margin-top:20px;
            background:#ffffff;
            border-radius:8px;
            border:1px solid #cccccc;
        }
   
/*左边样式*/
        #singerContent .singerLeft{
            position:relative;
            width:180px;
            height:900px;
            float:left;
        }
        #singerContent .singerLeft .typeTitle{
            width:160px;
            height:40px;
            line-height:40px;
        }
        #singerContent .singerLeft h3{
           font-size:16px;
           font-family: 'Microsoft YaHei';
           padding-left:15px;
           color:#333333;
        }
        #singerContent .singerLeft .s1{
            position:absolute;
            top:20px;
            left:10px;
            width:160px;
            height:95px;
            border-bottom:1px solid #cccccc;
        }
        #singerContent .singerLeft .s1 li{
             list-style:disc;  
             padding-bottom:10px;
              color:#AFAFAF;    
        }
        #singerContent .singerLeft .s1 ul,.s2 ul,.s3 ul,.s4 ul,.s5 ul,.s6 ul{
            position:absolute;
            left:30px;
        }
        #singerContent .singerLeft .s2 li,.s3 li,.s4 li,.s5 li,.s6 li{
            padding-bottom:10px;
            list-style:disc;
            color:#AFAFAF;     
        }
        #singerContent .singerLeft .s1 li a,.s2 li a,.s3 li a,.s4 li a,.s5 li a,.s6 li a{
             color:#333333;
             font-size:12px; 
        }
        #singerContent .singerLeft .s1 li a:hover,.s2 li a:hover,.s3 li a:hover,.s4 li a:hover,.s5 li a:hover,.s6 li a:hover{
            color:#C10D0C;
        }
         #singerContent .singerLeft .s2{
             position:absolute;
             top:120px;
             left:10px;
             width:160px;
             height:125px;
             border-bottom:1px solid #cccccc;
         }
          #singerContent .singerLeft .s3{
             position:absolute;
             top:250px;
             left:10px;
             width:160px;
             height:125px;    
             border-bottom:1px solid #cccccc;
         }
           #singerContent .singerLeft .s4{
             position:absolute;
             top:380px;
             left:10px;
             width:160px;
             height:125px;    
             border-bottom:1px solid #cccccc;
         }
           #singerContent .singerLeft .s5{
             position:absolute;
             top:510px;
             left:10px;
             width:160px;
             height:125px;    
             border-bottom:1px solid #cccccc;
         }
          #singerContent .singerLeft .s6{
             position:absolute;
             top:640px;
             left:10px;
             width:160px;
             height:125px;   
         }
/*右边样式*/
        #singerContent .singerRight{
            position:relative;
            width:799px;
            height:800px;
            /*background:#edcaca;*/
            float:right;
            border-left:1px solid #cccccc;
        }
        #singerContent .singerRight .singerList{
             width:760px;
             height:800px;
             /*background:#eee475;*/
             margin:0 auto;
         }
        #singerContent .singerRight .singerList .singerTitle{
            position:absolute;
            top:20px;
            left:40px;
            width:730px;
            height:40px;        
            border-bottom:2px solid #C10D0C;
            line-height:40px;
        }
        #singerContent .singerRight .singerList h2{
            color:#333333;
            font-family: 'Microsoft YaHei';
            font-size:22px;
            font-weight:normal;
        }
        #singerContent .singerRight .singerList .showSinger{
            position:absolute;
            top:62px;
            width:760px;
            height:760px;
            /*background:#efa1a1*/     
        }
        #singerContent .singerRight .singerList .pageing{
            position:absolute;
            bottom:30px;
            left:220px;
            width:320px;
            height:30px;
          
           
        }
/*分页*/

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="singerContent">
        <%-- 左边歌手分类布局 --%>
        <div class="singerLeft">
            <div class="s1">
                <h3 class="typeTitle">推荐</h3>
                <ul>
                  <li><a href="Singer.aspx?id=1">全部歌手</a></li>
                  <li><a href="Singer.aspx?id=2">热门歌手</a></li>
                </ul>
            </div>
            <div class="s2">
                <h3 class="typeTitle">华语</h3>
                <ul>
                    <li><a href="Singer.aspx?id=3">华语男歌手</a></li>
                    <li><a href="Singer.aspx?id=4">华语女歌手</a></li>
                    <li><a href="Singer.aspx?id=5">华语组合/乐队</a></li>
                </ul>
            </div>
            <div class="s3">
                <h3 class="typeTitle">欧美</h3>
                <ul>
                    <li><a href="#">欧美男歌手</a></li>
                    <li><a href="#">欧美女歌手</a></li>
                    <li><a href="#">欧美组合/乐队</a></li>
                </ul>
            </div>
            <div class="s4">
                <h3 class="typeTitle">日本</h3>
                <ul>
                    <li><a href="#">日本男歌手</a></li>
                    <li><a href="#">日本女歌手</a></li>
                    <li><a href="#">日本组合/乐队</a></li>
                </ul>
            </div>
            <div class="s5">
                <h3 class="typeTitle">韩国</h3>
                <ul>
                    <li><a href="#">韩国男歌手</a></li>
                    <li><a href="#">韩国女歌手</a></li>
                    <li><a href="#">韩国组合/乐队</a></li>
                </ul>
            </div>
            <div class="s6">
                <h3 class="typeTitle">其他</h3>
                <ul>
                    <li><a href="#">其他男歌手</a></li>
                    <li><a href="#">其他女歌手</a></li>
                    <li><a href="#">其他组合/乐队</a></li>
                </ul>
            </div>
        </div>

        <%-- 右边内容布局 --%>
        <div class="singerRight">
           <div class="singerList">
               <%-- 分类绑定:全部歌手 --%>
                <asp:Panel runat="server" ID="panel1" Visible="true">
                <div class="singerTitle">
                   <h2>全部歌手</h2>
                </div>
               <div class="showSinger">
               <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;" >
                                <br />
                                <span>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>' Visible='<%#System.IO.File.Exists(Server.MapPath(Eval("SingerImg").ToString())) %>'>                                      
                                        <asp:Image ID="singerImg" runat="server" Width="130px" Height="130px" ImageUrl='<%#Eval("SingerImg") %>'/>
                                    </asp:HyperLink></span>
                            </td>
                        </tr>
                        <tr class="y">
                            <td  style="text-align:center;color:#333333;font-size:14px;">
                                <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>

                            </td>
                        </tr>                               
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
           </asp:Panel>
               <%-- 分类绑定:热门歌手 --%>
                <asp:Panel runat="server" ID="panel2" Visible="false">
                <div class="singerTitle">
                   <h2>热门歌手</h2>
               </div>
               <div class="showSinger">
               <asp:DataList ID="DataList2" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;" >
                                <br />
                                <span>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>'>
                                        <asp:Image ID="villageImg" runat="server" Width="130px" Height="130px" ImageUrl='<%#Eval("SingerImg") %>' />
                                    </asp:HyperLink></span>
                            </td>
                        </tr>
                        <tr class="y">
                            <td  style="text-align:center;color:#333333;font-size:14px;">
                                <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>
                           </td>
                        </tr>                               
                    </table>
                </ItemTemplate>
            </asp:DataList>
           </div>
           </asp:Panel>
               <%-- 分类绑定:华语男歌手 --%>
                <asp:Panel runat="server" ID="panel3" Visible="false">
                <div class="singerTitle">
                   <h2>华语男歌手</h2>
               </div>
               <div class="showSinger">
               <asp:DataList ID="DataList3" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;" >
                                <br />
                                <span>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>'>
                                        <asp:Image ID="villageImg" runat="server" Width="130px" Height="130px" ImageUrl='<%#Eval("SingerImg") %>' />
                                    </asp:HyperLink></span>
                            </td>
                        </tr>
                        <tr class="y">
                            <td  style="text-align:center;color:#333333;font-size:14px;">
                                <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>
                           </td>
                        </tr>                               
                    </table>
                </ItemTemplate>
            </asp:DataList>
    
           </div>
           </asp:Panel>
               <%-- 分类绑定:华语女歌手 --%>
                <asp:Panel runat="server" ID="panel4" Visible="false">
                <div class="singerTitle">
                   <h2>华语女歌手</h2>
               </div>
               <div class="showSinger">
               <asp:DataList ID="DataList4" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;" >
                                <br />
                                <span>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>'>
                                        <asp:Image ID="villageImg" runat="server" Width="130px" Height="130px" ImageUrl='<%#Eval("SingerImg") %>' />
                                    </asp:HyperLink></span>
                            </td>
                        </tr>
                        <tr class="y">
                            <td  style="text-align:center;color:#333333;font-size:14px;">
                                <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>
                           </td>
                        </tr>                               
                    </table>
                </ItemTemplate>
            </asp:DataList>
           </div>
           </asp:Panel>
               <%-- 分类绑定:华语组合/乐队 --%>
                <asp:Panel runat="server" ID="panel5" Visible="false">
                <div class="singerTitle">
                   <h2>华语组合/乐队</h2>
               </div>
               <div class="showSinger">
               <asp:DataList ID="DataList5" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="y" cellspacing="12">
                        <tr class="y">
                            <td class="y" style="padding-left:20px;" >
                                <br />
                                <span>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "SingerDetails.aspx?ID="+ Eval("SingerID") %>'>
                                        <asp:Image ID="villageImg" runat="server" Width="130px" Height="130px" ImageUrl='<%#Eval("SingerImg") %>' />
                                    </asp:HyperLink></span>
                            </td>
                        </tr>
                        <tr class="y">
                            <td  style="text-align:center;color:#333333;font-size:14px;">
                                <span style="font-family: 'Microsoft YaHei'"><%#DataBinder.Eval(Container.DataItem, "SingerName")%></span>
                           </td>
                        </tr>                               
                    </table>
                </ItemTemplate>
            </asp:DataList>
         <%-- 分页 --%>
     
           </div>
           </asp:Panel>
                     
           </div>  
    </div>
</div>
</asp:Content>

