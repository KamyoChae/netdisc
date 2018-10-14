<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="Project.NewsList" %>
    <%@ Register src="Controls/Head.ascx" tagname="Head" tagprefix="uc1" %>
        <%@ Register src="Controls/Foot.ascx" tagname="Foot" tagprefix="uc2" %>
            <%@ Register src="Controls/Left.ascx" tagname="Left" tagprefix="uc3" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">
                    
                    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximun-scale=1.0,user-scalable=0">
                    <title>公告资讯</title> 
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

                        <div class=" "  >

                            <div class=" "  >
                                <div class="">
                                    <div class=" nav-tit" id="tit">  <%=typeid == 1 ? "通知公告" : "校园资讯"%>
                                    </div>

                                    <div class="repeater_box">
                                        <asp:Repeater ID="rptList" runat="server">
                                            <ItemTemplate>
                                                <div class="news_itembox info_item_li" >
                                                    <a class="info_item1" href="NewsShow.aspx?id=<%#Eval(" Id ") %>"> 
                                                            <div class="news_item">
                                                                <div class="news_title "><%#Eval("Title")%>
                                                                </div>
                                                                <div class="news_content">
                                                                    <%#Project.Common.GetSubString(Project.Common.RemoveHTML(Project.Common.ConvertStringToHtml(Eval("Content").ToString())), 180, "...")%>
                                                                </div>
                                                            </div>
                                                    </a>
                                                </div>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                    

                                <asp:Literal ID="ltlNull" runat="server"></asp:Literal>
                            </div>

                            <!--分页-->
                            <div class="page_bg "> 
                                <ul class="pagination  ">
                                    <%=Project.PagingHelper.getPageStr(CurrentPage, PageCount, "&typeid=" + typeid)%>
                                </ul>
                                <div class="pagination">共
                                    <%=PageCount%> 页，
                                        <%=RecordCount%> 条
                                </div>
                                    
                            </div>

                        </div>
 
                    </form>
                    
                    <uc2:Foot ID="Foot1" runat="server" />

                    <script src="./script/kamJs.js"></script>
                </body>

                </html>