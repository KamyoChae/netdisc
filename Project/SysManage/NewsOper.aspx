<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsOper.aspx.cs" Inherits="Project.SysManage.NewsOper" %>
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
    <script src="../ckeditor/ckeditor.js" type="text/javascript"></script>
</head>
<body>
    <div class="main_right_content ">
        <div class="main_body personal-form">

            <form runat="server" class="form-horizontal" id="form1" method="post">

                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">标题</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Title" runat="server" CssClass="form-control" Width="360" placeholder="请填写" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">分类</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="NewsType" runat="server" CssClass="form-control" Width="360">
                        <asp:ListItem Value="1">通知公告</asp:ListItem>
                        <asp:ListItem Value="2">校园资讯</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">缩略图</label>
                    <div class="col-sm-10">
                        <asp:Image ID="Image1" runat="server" Width="110px" Height="80px" /><br />
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="260px" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">内容</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Content" runat="server" TextMode="MultiLine" CssClass="ckeditor" placeholder="请填写" required></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-2">
                        <asp:Button ID="btnSave" runat="server" Text="确定保存" class="btn btn-primary" 
                            onclick="btnSave_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="../script/iframe.js"></script>
</body>
</html>