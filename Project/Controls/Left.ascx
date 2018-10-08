<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Left.ascx.cs" Inherits="Project.Controls.Left" %>
<div class="col-md-3" style="border-right:#ccc solid 1px;">

<div class="col-md-12">
    <div class="col-md-12 nav-tit">公告信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../NewsList.aspx?typeid=1" />更多></a></div>
    <table class="table table-hover col-md-12">
    <tbody>
        <asp:Repeater ID="rptListNews" runat="server">
        <ItemTemplate>
            <tr>
                <td>
                    <a class="blue" href="/NewsShow.aspx?id=<%#Eval("Id") %>" target="_blank"><%#Eval("Title") %></a>
                    [<%#Convert.ToDateTime(Eval("AddTime")).ToShortDateString() %>]
                </td>
            </tr>
        </ItemTemplate>
        </asp:Repeater>
    </tbody>
    </table>
</div>

<div class="col-md-12 padding_top_10">
    <div class="col-md-12 nav-tit">推荐资源</div>
        <asp:Repeater ID="rptListPro" runat="server">
        <ItemTemplate>
            <div class="col-md-12 padding_top_10" style="padding:6px 0;">
            <a href="ProductShow.aspx?id=<%#Eval("Id") %>">
                <div class="col-md-12 text-left">
                    <%#Eval("ProductName")%>
                </div>
            </a>
            </div>
        </ItemTemplate>
        </asp:Repeater>
</div>

</div>