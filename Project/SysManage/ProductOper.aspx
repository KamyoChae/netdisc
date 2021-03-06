﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductOper.aspx.cs" Inherits="Project.SysManage.ProductOper" %>
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
    <div class="main_right_content">
        <div class="main_body">
            <form runat="server" class="form-horizontal" id="form1" method="post">
                
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">分类</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="FenLei" runat="server" CssClass="form-control" Width="360">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">资源名称</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="ProductName" runat="server" CssClass="form-control" Width="360" placeholder="请填写" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">文件类型</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="FileType" runat="server" CssClass="form-control" Width="360">
                        <asp:ListItem Value="DOC">DOC</asp:ListItem>
                        <asp:ListItem Value="JPG">JPG</asp:ListItem>
                        <asp:ListItem Value="MP3">MP3</asp:ListItem>
                        <asp:ListItem Value="PDF">PDF</asp:ListItem>
                        <asp:ListItem Value="XLS">XLS</asp:ListItem>
                        <asp:ListItem Value="其它">其它</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">上传文件</label>
                    <div class="col-sm-10">
                        <asp:Literal ID="ltlPath" runat="server"></asp:Literal><br />
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="260px" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">资源文件大小</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="reName" runat="server" CssClass="form-control" Width="360" placeholder="请填写" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label padding_lr_0">内容</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Content" runat="server" TextMode="MultiLine" CssClass="ckeditor" placeholder="请填写" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style=" display:<%=mbGrade == 1?"":"none"%>;">
                    <label class="col-sm-2 control-label padding_lr_0">状态</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="State" runat="server" CssClass="form-control" Width="120px">
                        <asp:ListItem Value="审核中">审核中</asp:ListItem>
                        <asp:ListItem Value="通过">通过</asp:ListItem>
                        <asp:ListItem Value="未通过">未通过</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group" style=" display:<%=mbGrade == 1?"":"none"%>;">
                    <label class="col-sm-2 control-label padding_lr_0">是否推荐</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="IsTJ" runat="server" CssClass="form-control" Width="120px">
                        <asp:ListItem Value="不推荐">不推荐</asp:ListItem>
                        <asp:ListItem Value="推荐">推荐</asp:ListItem>
                        </asp:DropDownList>
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