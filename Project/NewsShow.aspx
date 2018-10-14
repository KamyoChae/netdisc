<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsShow.aspx.cs" Inherits="Project.NewsShow" %>
    <%@ Register src="Controls/Head.ascx" tagname="Head" tagprefix="uc1" %>
        <%@ Register src="Controls/Foot.ascx" tagname="Foot" tagprefix="uc2" %>
            <%@ Register src="Controls/Left.ascx" tagname="Left" tagprefix="uc3" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">
                    
                    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximun-scale=1.0,user-scalable=0">
                    <title>校内资讯</title>
                    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
                    <link rel="stylesheet" href="./style/kamstyle.css">
                    <script type="text/javascript" src="script/jquery-1.10.2.min.js"></script>

                    <script type="text/javascript" src="script/bootstrap.min.js"></script>
                    <script type="text/javascript" src="script/co.Core.js"></script>
                    <script type="text/javascript" src="script/system.js"></script>
                    <script type="text/javascript" src="layer/layer.js"></script>
                </head>

                <body>
                    <form id="Form1" runat="server">
                        <uc1:Head ID="Head1" runat="server" />

                        <div class="">
 
                            <div class="">

                                <div class=" nav-tit" id="tit">信息详情</div>
                                <div class="newsbox titlebox">

                                    <div class="news_article_top">
                                        <div class="news_title pshow_title">
                                            <asp:Label ID="Title" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class="news_about">

                                            <span class="about_time">时间： <asp:Label ID="AddTime" runat="server" Text="Label"></asp:Label> </span> 
                                            <span class="about_see">浏览量：<asp:Label ID="Hits" runat="server" Text="Label"></asp:Label></span>
                                        </div>
                                    </div>

                                    <div class="news_article_content">
                                        
                                        <asp:Label ID="Content" runat="server" Text="Label"></asp:Label>
                                                
                                    </div>

                                </div>
                            </div> 
                        </div>
                    </form>

                    <uc2:Foot ID="Foot" runat="server" />
                    <script src="./script/kamJs.js"></script>
                </body>

                </html>