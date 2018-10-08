<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BakDB.aspx.cs" Inherits="Project.SysManage.BakDB" %>
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
                        <div class="title_box"><b>备份数据库</b></div>
                    </div>
                    <div class="pull-left padding_left_15 ">
                        <asp:Button ID="btnSave" runat="server" Text="点击备份" class="btn btn-primary" 
                            onclick="btnSave_Click" />
                    </div>
                    <div class="pull-right">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <table class="table table_span table-hover">
                    <thead>
                        <tr>
                            <th>备份文件名</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="ltllist" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
               

            </div>
        </div>
</form>
</body>
</html>