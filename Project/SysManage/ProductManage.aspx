<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductManage.aspx.cs" Inherits="Project.SysManage.ProductManage" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../style/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../style/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../style/style.css" />
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
                     
                    <div class="pull-left padding_left_15 ">
                            <asp:TextBox ID="txtKey" runat="server" CssClass="input_text required shadow" placeholder="查找名称/分类"></asp:TextBox>
                            <div class="setSearch rotate"> 
                                    <asp:Button ID="btnSearch" runat="server" CssClass="search required shadow" OnClick="btnSearch_Click" Text="" />
                            </div>
                    </div>
                    <div class="pull-right">
                        <span class="btn btn-primary" onclick="location = 'ProductOper.aspx';">新增资源</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>资源名称</th>
                            <th>分类</th>
                            <th>类型</th>
                            <th>大小</th>
                            <th>上传人</th>
                            <th>上传时间</th>
                            <th>下载量</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptList" runat="server" onitemcommand="rptList_ItemCommand">
                        <ItemTemplate>
                        <tr>
                            <td><a href="/ProductShow.aspx?Id=<%#Eval("Id")%>" target="_blank"><%#Eval("ProductName")%></a></td>
                            <td><%#Eval("FenLeiName")%></td>
                            <td><%#Eval("FileType")%></td>
                            <td><%#Eval("reName")%></td>
                            <td><%#Eval("UserName")%></td>
                            <td><%#Eval("AddTime")%></td>
                            <td><%#Eval("Hits")%></td>
                            <td><%#Eval("State")%></td>
                            <td>
                                <a href="ProductOper.aspx?id=<%#Eval("Id") %>"><span class="btn btn-primary"><%#mbGrade == 1 ? "审核" : "编辑"%></span></a>&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="del"
                                     class="btn btn-default" OnClientClick="JavaScript:return confirm('确定要删除吗？')">删除</asp:LinkButton>
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
</body>
</html>