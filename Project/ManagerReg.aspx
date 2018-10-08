<!--修改-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerReg.aspx.cs" Inherits="Project.ManagerReg" %>
<%@ Register src="~/Controls/Head.ascx" tagname="Head" tagprefix="uc1" %>
<%@ Register src="~/Controls/Foot.ascx" tagname="Foot" tagprefix="uc2" %>
<%@ Register src="~/Controls/Left.ascx" tagname="Left" tagprefix="uc3" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/style/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/style/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/style/style.css" />
    <script type="text/javascript" src="/script/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/script/bootstrap.min.js"></script>
    <script type="text/javascript" src="/script/co.Core.js"></script>
    <script type="text/javascript" src="/script/system.js"></script>
    <script type="text/javascript" src="/layer/layer.js"></script>
</head>
<body>
<form id="form1" runat="server">
<uc1:Head ID="Head1" runat="server" />

<div class="main_body padding_lr_0" style="width:1150px;">
    <div class="col-md-12 nav-tit red"><i class="icon-picture"></i> 用户注册  （*必填）</div>

<div class="col-md-12">
<div class="main_body" style="width:600px;min-height:300px;">
    <div style="text-align:center; font-size:large">
        &nbsp;</div>
        <div class="form-group col-md-12">
            <label class="col-sm-3 control-label padding_lr_0 text-right">帐号&nbsp;<span style="font-size:large">*</span></label>
            <div class="col-sm-9">
                <asp:TextBox ID="ManagerName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group col-md-12">
            <label class="col-sm-3 control-label padding_lr_0 text-right">密码&nbsp;<span style="font-size:large">*</span></label>
            <div class="col-sm-9">
                <asp:TextBox ID="ManagerPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group col-md-12">
            <label class="col-sm-3 control-label padding_lr_0 text-right">确认密码&nbsp;<span style="font-size:large">*</span></label>
            <div class="col-sm-9">
                <asp:TextBox ID="SuerPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group col-md-12">
            <label class="col-sm-3 control-label padding_lr_0 text-right">名称&nbsp;<span style="font-size:large">*</span></label>
            <div class="col-sm-9">
                <asp:TextBox ID="Title" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group col-md-12">
            <label class="col-sm-3 control-label padding_lr_0 text-right">邮箱&nbsp;<span style="font-size:large">*</span></label>
            <div class="col-sm-9">
                <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group col-md-12">
            <label class="col-sm-3 control-label padding_lr_0 text-right">联系电话</label>
            <div class="col-sm-9">
                <asp:TextBox ID="Tel" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group col-md-12">
            <label class="col-sm-3 control-label"></label>
            <div class="col-sm-9">
                <asp:Button ID="btnSave" runat="server" Text="确定注册" CssClass="btn btn-primary" Width="120px" OnClick="btnSave_Click" />
                <asp:Button ID="btnBack" runat="server" Text="返回" CssClass="btn btn-primary" Width="120px" OnClick="btnBack_Click" />
            </div>
        </div>

</div>
</div>

<uc2:Foot ID="Foot1" runat="server" />
</div>
</form>
</body>
</html>