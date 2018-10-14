<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PingJiaManage.aspx.cs" Inherits="Project.SysManage.PingJiaManage" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../style/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../style/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../style/style.css" />
    <link rel="stylesheet" href="../style/app.css">

    <script type="text/javascript" src="../script/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../script/bootstrap.min.js"></script>
    <script type="text/javascript" src="../script/system.js"></script>

    <script type="text/javascript" src="../script/co.Core.js"></script>
    <script type="text/javascript" src="../script/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../layer/layer.js"></script>

</head>
<body>
<form runat="server" id="form1">
        <div class="main_body padding_lr_0">
            <div class="col-md-12 role_content_right">
                <div class="main_head"> 
                    <div class="pull-left  ">
                         
                        <asp:TextBox ID="txtKey" runat="server" CssClass="input_text required shadow" placeholder="查找评论人"></asp:TextBox>
                        <div class="setSearch rotate"> 
                                <asp:Button ID="btnSearch" runat="server" CssClass="search required shadow" OnClick="btnSearch_Click" Text="" />
                        </div>
                    </div>
                    <div class="pull-right">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <table class="table table_span table-hover table-bordered">
                    <thead>
                        <tr>
                            <%--<th class="text-center" width="60">序号</th>--%>
                            <th>评论人</th>
                            <th style="width:60%;">评论内容</th>
                            <th>评论时间</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptList" runat="server" onitemcommand="rptList_ItemCommand">
                        <ItemTemplate>
                        <tr>
                            <%--<td class="text-center">1 </td>--%>
                            <td><%#Eval("PingJiaUser")%></td>
                            <td>
                                <div class="col-sm-12">
                                    资源：<a href="../ProductShow.aspx?id=<%#Eval("InfoId") %>" target="_blank"><%#Eval("InfoName") %></a>
                                    &nbsp;&nbsp;/&nbsp;<span class="orange"><%#Eval("Xing") %></span>
                                </div>
                                <div class="report_conotent">

                                        <%#Eval("PingJiaContent")%>
                                </div>
                            </td>
                            <td><%#Eval("PingJiaTime")%></td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="del"
                                     class="btn btn-primary" OnClientClick="JavaScript:return confirm('确定要删除吗？')">删除</asp:LinkButton>
                            </td>
                        </tr>
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:Literal ID="ltlNull" runat="server"></asp:Literal>
                    </tbody>
                </table>
                

                <!--分页-->
                <div class="page_bg">
                    <nav>
                        <ul class="pagination pull-right">
                            <%=Project.PagingHelper.getPageStr(CurrentPage, PageCount, "")%>
                        </ul>
                        <div class="pull-right line_34 padding_left_15">共 <%=PageCount%> 页，<%=RecordCount%> 条</div>
                        <div class="clearfix"></div>
                    </nav>
                </div>

            </div>
        </div>
</form>
<script src="../script/iframe.js"></script>
</body>
</html>