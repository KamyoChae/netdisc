<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Left.ascx.cs" Inherits="Project.Controls.Left" %>
 
<div class="data-info">

    <div class="nav-tit">公告信息</div>

    <div class="info_box">
        <div class="info_list">
            <asp:Repeater ID="rptListNews" runat="server">
                <ItemTemplate> 
                            <li class='info_item_li'>
                                <a class="info_item" href="/NewsShow.aspx?id=<%#Eval("Id") %>" target="_blank"><%#Eval("Title") %> </a>
                                <span class='info_time'>[<%#Convert.ToDateTime(Eval("AddTime")).ToShortDateString() %>] </span>
                            </li>
                </ItemTemplate>
            </asp:Repeater> 
        </div>
        <a class='info_more' href="../NewsList.aspx?typeid=1" />更多></a> 
    </div> 
</div>

<div class='data-rec'>
 
    <div class="nav-tit">推荐资源</div>

    <div class="recommend_list">
        <asp:Repeater ID="rptListPro" runat="server">
        <ItemTemplate>
            <div class="card"  >
                <a href="ProductShow.aspx?id=<%#Eval("Id") %>">
                    <div class="text-left">
                        <%#Eval("ProductName")%>
                    </div>
                </a>
            </div>
        </ItemTemplate>
        </asp:Repeater> 
    <div >   

</div>