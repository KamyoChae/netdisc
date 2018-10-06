<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Left.ascx.cs" Inherits="Project.Controls.Left" %>

<div class="container ib verTop clean-Container-R ">
    <div class="panel-18rem border-right-opacity">

        <div class="panel-notice">
				<div class="notice-head">
					<span class="left-icon greenBg"></span>
					<span>公告通知</span>
					<span class="float-right">更多>></span>
				</div>

            <table class="panel-ul">
            <tbody>
                <asp:Repeater ID="rptListNews" runat="server">
                <ItemTemplate>
                    <tr>
                        <td class="margin-bottom-05rem">
                            <a  href="/NewsShow.aspx?id=<%#Eval("Id") %>" target="_blank"><%#Eval("Title") %></a>
                            [<%#Convert.ToDateTime(Eval("AddTime")).ToShortDateString() %>]
                        </td>
                    </tr>
                </ItemTemplate>
                </asp:Repeater>
            </tbody>
            </table>

        </div>

        <div class="panel-notice panel-recommend">
				<div class="notice-head">
					<span class="left-icon greenBg"></span>
					<span>推荐资源</span>
				</div>

                <div  class="panel-ul">
                    <asp:Repeater ID="rptListPro" runat="server">
                    <ItemTemplate>
                        <div class="margin-bottom-05rem ">
                        <a href="ProductShow.aspx?id=<%#Eval("Id") %>">
                            <div class="greenColor">
                                <%#Eval("ProductName")%>
                            </div>
                        </a>
                        </div>
                    </ItemTemplate>
                    </asp:Repeater>
                </div>
        </div>

    </div>
</div>
