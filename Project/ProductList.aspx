<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Project.ProductList" %>
    <%@ Register src="Controls/Head.ascx" tagname="Head" tagprefix="uc1" %>
        <%@ Register src="Controls/Foot.ascx" tagname="Foot" tagprefix="uc2" %>
            <%@ Register src="Controls/Left.ascx" tagname="Left" tagprefix="uc3" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximun-scale=1.0,user-scalable=0">
                    <title>资源列表</title>
                    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
                    <link rel="stylesheet" href="./style/kamstyle.css">
                    <script type="text/javascript" src="script/jquery-1.10.2.min.js"></script>
                     
                    <script type="text/javascript" src="script/co.Core.js"></script>
                    <script type="text/javascript" src="script/system.js"></script>
                    <script type="text/javascript" src="layer/layer.js"></script>
                </head>

                <body>
                    <form id="Form1" runat="server">
                        
                        <uc1:Head ID="Head" runat="server" />

                        <div class="product_box"> 
                            <div class="">
                                <div class="nav-tit" id="tit">资源列表</div>
                                    <div class="index_listbox">
                                        <asp:Repeater ID="rptList" runat="server">
                                                <ItemTemplate>
                                                    <div class="product_item index_listbox_items">
                                                        <a href="ProductShow.aspx?id=<%#Eval(" Id ") %>">
                                                            <div class="productName">
                                                                <%#Eval("ProductName")%>
                                                            </div>
                                                            <div class=" fileType">
                                                                <%#Eval("FileType")%>
                                                            </div>
                                                            <div class=" rename">
                                                                <%#Eval("rename")%> <i class="icon-download-alt"></i>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>

                                            <div class="nodata">

                                                <asp:Literal ID="ltlNull" runat="server"></asp:Literal>
                                            </div>

                                    </div>
                                    
                                </div>
                            </div>

                            <!--分页-->
                            <div class="page_bg">
                                    <ul class="pagination ">
                                        <%=Project.PagingHelper.getPageStr(CurrentPage, PageCount, "&key=" + key + "&FenLeiId=" + fenleiId)%>
                                    </ul>
                                    <div class="pagination">共
                                        <%=PageCount%> 页，
                                            <%=RecordCount%> 条
                                    </div>
                            </div> 


                            <uc3:Left ID="Left" runat="server" />
                        </div>
                        
 
                        <uc2:Foot ID="Foot" runat="server" />
                    </form>
                    <script src="./script/kamJs.js"></script>
                </body>

                </html>