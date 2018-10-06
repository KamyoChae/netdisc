<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Project.ProductList" %>
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

<div class="ib" >
    <uc3:Left ID="Left1" runat="server" />

    <div class="product" >
        <div class="notice-head green"><i class="icon-home greenColor"></i> 资源列表</div>

        <asp:Repeater ID="rptList" runat="server">
        <ItemTemplate>
        <div class="li-table-td margin-top">
            <a href="ProductShow.aspx?id=<%#Eval("Id") %>">
                <div class="table-name-span ib table-30rem"><%#Eval("ProductName")%></div>
                <div class="table-type-span ib table-12rem secondColor">
                    <%#Eval("FileType")%>
                </div>
                <div class="table-name-bottom ib table-8rem secondColor">
                    <%#Eval("rename")%> <i class="icon-download-alt" style="float:right; font-size:1.5rem;"></i>
                </div>
            </a>
        </div>
        </ItemTemplate>
        </asp:Repeater>
       <asp:Literal ID="ltlNull" runat="server"></asp:Literal>
    </div>

    <!--分页-->
    <div class="page_bg  ">
        
        <ul class="pagination pull-right  ib">

            <%=Project.PagingHelper.getPageStr(CurrentPage, PageCount, "&key=" + key + "&FenLeiId=" + fenleiId)%>
        </ul>
        <div class="pull-right ">共 <%=PageCount%> 页，<%=RecordCount%> 条</div>
        <div class="clearfix"></div>
       
    </div>

</div>

<uc2:Foot ID="Foot1" runat="server" />
</form>
</body>
</html>