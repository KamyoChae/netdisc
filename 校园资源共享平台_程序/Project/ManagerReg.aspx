<!--修改-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerReg.aspx.cs" Inherits="Project.ManagerReg" %>

<%@ Register Src="~/Controls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/Foot.ascx" TagName="Foot" TagPrefix="uc2" %>
<%@ Register Src="~/Controls/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/greenStyle.css" />
    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
    <!--
    <link rel="stylesheet" type="text/css" href="/style/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/style/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/style/style.css" />
    <script type="text/javascript" src="/script/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/script/bootstrap.min.js"></script>
    <script type="text/javascript" src="/script/co.Core.js"></script>
    <script type="text/javascript" src="/script/system.js"></script>
    <script type="text/javascript" src="/layer/layer.js"></script>
    -->
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="container bgwrite">
        <div class="text-center user-div">
            <div class="notice-head notice-head-long">
                <span class="left-icon bgwrite"></span>
                <span class="font-2rem">用户注册 User registration</span>
            </div>
            <div class="input-group">
                <div class="input-div ">
                    <span>*</span>
                    <asp:TextBox ID="ManagerName" runat="server" CssClass="form-control" placeholder="帐号"></asp:TextBox>
                </div>
                <div class="input-div">
                    <span>*</span>
                    <asp:TextBox ID="ManagerPwd" runat="server" TextMode="Password" CssClass="form-control"
                        placeholder="密码"></asp:TextBox>
                </div>
                <div class="input-div">
                    <span>*</span>
                    <asp:TextBox ID="SuerPwd" runat="server" TextMode="Password" CssClass="form-control"
                        placeholder="确认密码"></asp:TextBox>
                </div>

                <!--
                <div class="input-div">
                    <span>*</span>
                    <asp:TextBox ID="Title" runat="server" CssClass="form-control" placeholder="名称"></asp:TextBox>
                </div>

                -->
                <div class="input-div">
                    <span>*</span>
                    <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="邮箱"></asp:TextBox>
                </div>
                <div class="input-div">
                    <span></span>
                    <asp:TextBox ID="Tel" runat="server" CssClass="form-control" placeholder="联系电话"></asp:TextBox>
                </div>
                <div class="input-div-button input-div">
                    <span></span>
                <asp:Button ID="btnSave" runat="server" Text="我要注册" class="praimery submit" OnClick="btnSave_Click" />
                <asp:Button ID="btnBack" runat="server" Text="我后悔了" class="praimery result" OnClick="btnBack_Click" />
                </div>
            </div>
        </div>
    </div>
    <uc2:Foot ID="Foot1" runat="server" />
    </form>
</body>
</html>
