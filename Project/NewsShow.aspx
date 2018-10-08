<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsShow.aspx.cs" Inherits="Project.NewsShow" %>
<%@ Register src="Controls/Head.ascx" tagname="Head" tagprefix="uc1" %>
<%@ Register src="Controls/Foot.ascx" tagname="Foot" tagprefix="uc2" %>
<%@ Register src="Controls/Left.ascx" tagname="Left" tagprefix="uc3" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="style/style.css" />
    <script type="text/javascript" src="script/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="script/bootstrap.min.js"></script>
    <script type="text/javascript" src="script/co.Core.js"></script>
    <script type="text/javascript" src="script/system.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
</head>
<body>
<form id="Form1" runat="server">
<uc1:Head ID="Head1" runat="server" />

<div class="main_body padding_lr_0" style="width:1150px;">
    <uc3:Left ID="Left1" runat="server" />

    <div class="col-md-9" style="border-left:#ccc solid 1px;">

    <div class="col-md-12 nav-tit"><i class="icon-home"></i> 信息详情</div>
    <div class="col-md-12">
        
        <div class="col-md-12">
            <div class="col-md-12 text-center" style="font-size:20px;padding:15px 0;">
                <b><asp:Label ID="Title" runat="server" Text="Label"></asp:Label></b>
            </div>
            <div class="col-md-12 text-center" style="padding:15px 0;">
                时间：<asp:Label ID="AddTime" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;|&nbsp;&nbsp;
                浏览量：<asp:Label ID="Hits" runat="server" Text="Label"></asp:Label>
            </div>
        </div>

        <div class="main_body col-md-12" style="font-size:16px;line-height:30px;">
            <%if (!string.IsNullOrEmpty(simg))
              { %>
            <p style=" text-align:center;"><img src="<%=simg %>" style=" min-width:450px; max-width:95%;" /></p>
            <%} %>
            <p><asp:Label ID="Content" runat="server" Text="Label"></asp:Label></p>
            <p><div class="bshare-custom icon-medium"><div class="bsPromo bsPromo2"></div><a title="分享到" href="http://www.bShare.cn/" id="bshare-shareto" class="bshare-more">分享到</a><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a><a title="分享到腾讯微博" class="bshare-qqmb"></a><a title="分享到QQ好友" class="bshare-qqim" href="javascript:void(0);"></a><a title="分享到新浪微博" class="bshare-sinaminiblog" href="javascript:void(0);"></a><a title="分享到网易微博" class="bshare-neteasemb"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count" style="float: none;">32.5K</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script></p>
        </div>


    </div>
    </div>

<uc2:Foot ID="Foot1" runat="server" />
</div>
</form>
</body>
</html>