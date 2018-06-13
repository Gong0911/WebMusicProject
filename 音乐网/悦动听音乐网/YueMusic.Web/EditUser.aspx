<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript">
        $(document).ready(function () {
            $(".chooseList a").each(function () {
                $this = $(this);
                if ($this[0].href == String(window.location)) {
                    $this.addClass("active1");
                }
            });
        });
    </script>
    <style type="text/css">
        #contentPage{
            position:relative;
            width:1100px;
            height:900px;
            margin:0 auto;
            border:1px solid #D8D8D8;
            border-radius:8px;
            margin-top:20px;
            background:#ffffff;
        }
        #contentPage .pageLeft{
            position:absolute;
            top:30px;
            left:15px;
            width:250px;
            height:500px;
           background:#C20C0C;
            border-radius:6px;         
        }
        #contentPage .pageLeft .headPicture{
            position:absolute;
            top:20px;
            left:75px;
            width:100px;
            height:100px;
            background:white;
            border-radius:50%;
            overflow:hidden;
        } 
        #contentPage .pageLeft .userName{
            position:absolute;
            top:130px;
            text-align:center;
            width:100%;
            height:30px;
            line-height:30px;
       }
      
         #contentPage .pageLeft .chooseList{
             position:absolute;
             top:200px;
             left:0;
             width:250px;
             height:290px;
            
             
         }
         #contentPage .pageLeft .chooseList li{
             display:block;
             width:250px;
             height:60px;
             text-align:center;
             line-height:60px;
            
         }
         #contentPage .pageLeft .chooseList li a{
             display:inline-block;
             width:250px;
             height:60px;
             font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
             font-size:18px;
            color:#ffffff;
            
         }
        
         .active1{
             background:#242424;
         }

/*右边部分*/
        #contentPage .pageRight{
            position:absolute;
            top:15px;
            right:15px;
            width:800px;
            height:800px;
           /*border:1px solid #cccccc;*/
            border-radius:6px;   
        }
        #contentPage .pageRight .title1{
            width:800px;
            height:50px;
            line-height:50px;
            text-align:center;
            font-size:18px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            color:#242424;
            border-bottom:2px solid #C20C0C;
        }
        #contentPage .pageRight .show_message{
            width:800px;
            height:600px;
            margin-top:10px;
           
        }
         
       .info{
            border:1px solid #cccccc;
            border-radius:6px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div id="contentPage">
        <%-- 内容左边布局 --%>
        <div class="pageLeft">
            
                    <div class="headPicture">
                        <asp:Image  runat="server" ID="image" ImageUrl="~/image/head_img/big_head.png"/>
                    </div>
                    <div class="userName"><asp:Label runat="server" ID="lbluser" ForeColor="#ffff99"></asp:Label></div>
           
            <div class="chooseList">
                <ul>
                     <li><a href="#">我的信息</a></li>
                     <li><a href="#">我的下载</a></li>
                     <li><a href="#">我的收藏</a></li>
                     <li><a href="#">我的评论</a></li>
                </ul>
            </div>
        </div>

        <div class="pageRight">
            <asp:Panel runat="server" ID="panel_a">
                <div class="title1">
                    <p>修改我的信息</p>
                </div>
                <div class="show_message">
                  <table style="margin-left:260px;margin-top:80px;height:400px">
                        <tr>
                        <td>编号：</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtid" Enabled="false" CssClass="info" Height="30"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td>姓名：</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtname" Enabled="true" CssClass="info" Height="30"></asp:TextBox>
                        </td>
                      </tr>
                        <tr>
                        <td>密码：</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtpwd" Enabled="true" CssClass="info" Height="30"></asp:TextBox>
                        </td>
                      </tr>
                        <tr>
                        <td>邮箱：</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtemail" Enabled="true" CssClass="info" Height="30"></asp:TextBox>
                        </td>
                      </tr>
                        <tr>
                        <td>电话：</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtphone" Enabled="true" CssClass="info" Height="30"></asp:TextBox>
                        </td>
                      </tr>
                        <tr>
                        <td>头像：</td>
                        <td>
                            <asp:FileUpload runat="server" ID="dlUserImage" />
                        </td>
                      </tr>
                      <tr>
                        <td colspan="3" style="padding-top:20px;padding-left:135px;">
                        <asp:LinkButton ID="lbtnSave" runat="server" Text="保存" ForeColor="#0066ff" OnClick="lbtnSave_Click" Font-Underline="false"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="lbtnCancel" runat="server" Text="返回" CausesValidation="false" PostBackUrl="~/UserCenter.aspx" ForeColor="#0066ff" Font-Underline="false"></asp:LinkButton>
                    </td>
                  </tr>
                  </table>
                </div>
            </asp:Panel>
      
        </div>
</div>
</asp:Content>

