<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuanZhuList.aspx.cs" Inherits="Project.SysManage.GuanZhuList" %>
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
                    <div class="pull-left padding_right_15">
                        <div class="title_box"><b>我的下载</b></div>
                    </div>
                    <div class="pull-left padding_left_15 ">
                        
                    </div>
                    <div class="pull-right">
                        
                    </div>
                    <div class="clearfix"></div>
                </div>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>我下载的资源</th>
                            <th>下载时间</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptList" runat="server">
                        <ItemTemplate>
                        <tr>
                            <td><%#Eval("content")%></td>
                            <td><%#Eval("addtime")%></td>
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