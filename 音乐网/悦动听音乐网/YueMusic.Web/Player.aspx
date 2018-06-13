<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Player.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <audio id="au" src='<%#Eval("SongUrl") %>' autoplay="autoplay" controls="controls" loop="loop" style="width:800px;height:60px;"></audio>
           <asp:HiddenField ID="VDHF" runat="server" />
    <%--<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width="630" height="86" src="songs/BEYOND - 真的爱你.mp3"></iframe>--%>
    </div>
    </form>
</body>
</html>
