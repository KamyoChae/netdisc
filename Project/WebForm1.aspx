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
                    <link rel="stylesheet" type="text/css" href="style/bootstrap1.css" />
                    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
                    <link rel="stylesheet" type="text/css" href="style/style1.css" />
                    <link rel="stylesheet" href="./style/kamstyle.css">
                    <script type="text/javascript" src="script/jquery-1.10.2.min.js"></script>

                    <script type="text/javascript" src="script/bootstrap.min.js"></script>
                    <script type="text/javascript" src="script/co.Core.js"></script>
                    <script type="text/javascript" src="script/system.js"></script>
                    <script type="text/javascript" src="layer/layer.js"></script>
                </head>

                <body>
                    <form id="Form1" runat="server">
                        <uc1:Head ID="Head" runat="server" />

                        <div class="index_body">

                            <div class="index_new">

                                <div class="data-new">
                                    <div class="nav-tit"> 最新资源</div>
                                    <div class="index_listbox">
                                        <asp:Repeater ID="rptList1" runat="server">
                                            <ItemTemplate>
                                                <div class="index_listbox_items">
                                                    <a href="ProductShow.aspx?id=<%#Eval(" Id ") %>">
                                                        <div class="productName">
                                                            <%#Eval("ProductName")%>
                                                        </div>
                                                        <div class="title_item">
                                                            <%#Eval("AddTime") %>
                                                        </div>
                                                        <div class="fileType">
                                                            <%#Eval("FileType")%>
                                                        </div>
                                                        <div class="rename">
                                                            <%#Eval("rename")%> <i class="icon-download-alt"></i></div>
                                                    </a>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>

                                </div>

                                <div class="data-hot">
                                    <div class="nav-tit"> 热门资源</div>
                                    <div class="index_listbox">
                                        <asp:Repeater ID="rptList2" runat="server">
                                            <ItemTemplate>
                                                <div class="index_listbox_items ">
                                                    <a href="ProductShow.aspx?id=<%#Eval(" Id ") %>">
                                                        <div class="productName">
                                                            <%#Eval("ProductName")%>
                                                        </div>
                                                        <div class="fileType">
                                                            <%#Eval("FileType")%>
                                                        </div>
                                                        <div class="download_nums"><i class="icon-download-alt"></i> <%#Eval("hits")%>
                                                                次
                                                        </div>
                                                    </a>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>

                                <div style="display:none"> 
                                    <div class="nav-tit"> 用户排行</div>
                                    <div class="index_listbox">
                                        <asp:Repeater ID="rptList3" runat="server">
                                            <ItemTemplate>
                                                <div class="index_listbox_items ">
                                                    <div class=""><a href="ProductList.aspx?UserName=<%#Eval(" UserName ") %>"><%#Eval("UserName")%></a></div>
                                                    <div class=" text-center"><i class="icon-upload-alt"></i> 总计上传数
                                                        <%#Eval("num")%>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>

                            <uc3:Left ID="Left" runat="server" />
                        </div>
                        <uc2:Foot ID="Foot" runat="server" />
                        <script src="./script/kamJs.js"></script>

                    </form>
                </body>

                </html>