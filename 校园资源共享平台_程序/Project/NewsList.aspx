<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="Project.NewsList" %>
<%@ Register src="Controls/Head.ascx" tagname="Head" tagprefix="uc1" %>
<%@ Register src="Controls/Foot.ascx" tagname="Foot" tagprefix="uc2" %>
<%@ Register src="Controls/Left.ascx" tagname="Left" tagprefix="uc3" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/greenStyle.css" />
    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
    
    <!--
    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="style/style.css" />
    <script type="text/javascript" src="script/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="script/bootstrap.min.js"></script>
    <script type="text/javascript" src="script/co.Core.js"></script>
    <script type="text/javascript" src="script/system.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    -->
   
</head>
<body>
<form id="Form1" runat="server">
<uc1:Head ID="Head1" runat="server" />
<div class="ib">
        <uc3:Left ID="Left1" runat="server" />

    
        <div class="product">
            <div class="col-md-12 nav-tit"><i class="icon-home"></i> <%=typeid == 1 ? "通知公告" : "校园资讯"%></div>

            <asp:Repeater ID="rptList" runat="server">
            <ItemTemplate>
            <div class="li-table-td margin-top" >
                <a href="NewsShow.aspx?id=<%#Eval("Id") %>">
                    <%--<div class="col-md-3 padding_lr_0"><img src="<%#Eval("sImg") %>" height="200" width="100%" /></div>--%>
                    <div class="col-md-12 padding_lr_0 text-left">
                        <div class="col-md-12 h4 text-left"><span class="red"><%#Eval("Title")%></div>
                        <div class="col-md-12 text-left padding_top_10 line_34"><%#Project.Common.GetSubString(Project.Common.RemoveHTML(Project.Common.ConvertStringToHtml(Eval("Content").ToString())), 180, "...")%></div>
                    </div>
                </a>
            </div>
            </ItemTemplate>
            </asp:Repeater>
           <asp:Literal ID="ltlNull" runat="server"></asp:Literal>
        </div>

        <!--分页-->
        <div class="page_bg col-md-12">
            <nav>
            <ul class="pagination pull-right">
                <%=Project.PagingHelper.getPageStr(CurrentPage, PageCount, "&typeid=" + typeid)%>
            </ul>
            <div class="pull-right line_34 padding_left_15">共 <%=PageCount%> 页，<%=RecordCount%> 条</div>
            <div class="clearfix"></div>
            </nav>
        </div>

   
</div>

<uc2:Foot ID="Foot1" runat="server" />
</form>
</body>
</html>