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
    <link rel="stylesheet" type="text/css" href="style/greenStyle.css" />
    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
</head>
<body>
<form id="Form1" runat="server">
<uc1:Head ID="Head1" runat="server" />

<div class="ib" >
    <uc3:Left ID="Left1" runat="server" />

    <div class="product" >
         <div class="template">
        <div class="col-md-12 nav-tit"><i class="icon-home"></i> 最新资源</div>
        <asp:Repeater ID="rptList1" runat="server">
        <ItemTemplate>
        <div class="li-table-td margin-top"  >
            <a href="ProductShow.aspx?id=<%#Eval("Id") %>">
                <div class="table-name-span ib table-24rem"><%#Eval("ProductName")%></div>
                <div class="table-type-span ib table-8rem secondColor font-size-08rem text-center"><%#Eval("AddTime") %></div>
                <div class="table-type-span ib table-12rem secondColor font-size-08rem text-center"><%#Eval("FileType")%></div>
                <div class="table-type-span ib table-8rem secondColor font-size-08rem text-center"><%#Eval("rename")%> <i class="icon-download-alt" style="float:right; font-size:1.5rem;"></i></div>
            </a>
        </div>
        </ItemTemplate>
        </asp:Repeater>
        </div>
         <div class="template">
        <div class="col-md-12 nav-tit" ><i class="icon-home"></i> 热门资源</div>
        <asp:Repeater ID="rptList2" runat="server">
        <ItemTemplate>
        <div class="li-table-td margin-top" >
            <a href="ProductShow.aspx?id=<%#Eval("Id") %>">
                <div class="table-name-span ib table-24rem"><%#Eval("ProductName")%></div>
                <div class="table-type-span ib table-8rem secondColor font-size-08rem text-center"><%#Eval("AddTime") %></div>
                <div class="table-type-span ib table-12rem secondColor font-size-08rem text-center"><%#Eval("FileType")%></div>
                <div class="table-type-span ib table-8rem secondColor font-size-08rem text-center"><i class="icon-download-alt" style="float:right; font-size:1.5rem;"></i> <%#Eval("hits")%> 次</div>
            </a>
        </div>
        </ItemTemplate>
        </asp:Repeater>
        </div>
         <div class="template">
        <div class=" "><i class="icon-home"></i> 用户排行</div>
        <asp:Repeater ID="rptList3" runat="server">
        <ItemTemplate>
        <div class="li-table-td margin-top">
            <div class="table-type-span ib table-24rem secondColor text-center "><a href="ProductList.aspx?UserName=<%#Eval("UserName") %>"><%#Eval("UserName")%></a></div>
            <div class="table-type-span ib table-12rem secondColor font-size-08rem text-center"><i class="icon-upload-alt" style="float:right; font-size:1.5rem;"></i> 总计上传数 <%#Eval("num")%></div>
        </div>
        </ItemTemplate>
        </asp:Repeater>
        </div>
    </div>

</div>

<uc2:Foot ID="Foot1" runat="server" />
</form>
</body>
</html>
