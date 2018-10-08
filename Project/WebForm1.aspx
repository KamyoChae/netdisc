<!--修改-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project.WebForm1" %>
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

                                <div class="col-md-12 nav-tit"><i class="icon-home"></i> 最新资源</div>
                                <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
                                        <div class="col-md-12 padding_top_10" style="padding:10px 0;border-bottom:#eee solid 1px;">
                                            <a href="ProductShow.aspx?id=<%#Eval(" Id ") %>">
                                                <div class="col-md-8">
                                                    <%#Eval("ProductName")%>
                                                </div>
                                                <div class="col-md-8">
                                                    <%#Eval("AddTime") %>
                                                </div>
                                                <div class="col-md-2 text-center">
                                                    <%#Eval("FileType")%>
                                                </div>
                                                <div class="col-md-2 text-center">
                                                    <%#Eval("rename")%> <i class="icon-download-alt"></i></div>
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                                <div class="col-md-12 nav-tit" style="margin-top:20px;"><i class="icon-home"></i> 热门资源</div>
                                <asp:Repeater ID="rptList2" runat="server">
                                    <ItemTemplate>
                                        <div class="col-md-12 padding_top_10" style="padding:10px 0;border-bottom:#eee solid 1px;">
                                            <a href="ProductShow.aspx?id=<%#Eval(" Id ") %>">
                                                <div class="col-md-8">
                                                    <%#Eval("ProductName")%>
                                                </div>
                                                <div class="col-md-2 text-center">
                                                    <%#Eval("FileType")%>
                                                </div>
                                                <div class="col-md-2 text-center"><i class="icon-download-alt"></i> <%#Eval("hits")%> 次
                                                </div>
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                                <div class="col-md-12 nav-tit" style="margin-top:20px;"><i class="icon-home"></i> 用户排行</div>
                                <asp:Repeater ID="rptList3" runat="server">
                                    <ItemTemplate>
                                        <div class="col-md-12 padding_top_10" style="padding:10px 0;border-bottom:#eee solid 1px;">
                                            <div class="col-md-6"><a href="ProductList.aspx?UserName=<%#Eval("UserName") %>"><%#Eval("UserName")%></a></div>
                                            <div class="col-md-6 text-center"><i class="icon-upload-alt"></i> 总计上传数 <%#Eval("num")%>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>

                            <uc2:Foot ID="Foot1" runat="server" />
                        </div>
                    </form>
                </body>

                </html>