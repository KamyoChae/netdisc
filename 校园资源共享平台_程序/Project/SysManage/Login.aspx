<!--修改-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.SysManage.Login" %>

<!DOCTYPE html>
<html class="login_html">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../style/greenStyle.css" />
    <link rel="stylesheet" type="text/css" href="../style/font-awesome.min.css" />
    <style type="text/css">
        body
        {
            background: rgb(50,182,122);
        }
        i
        {
            color: #fff;
        }
        .login_title
        {
            width:25rem;
            margin-bottom:2rem;
            text-align:center;
            font-size:1.5rem;
            }
    </style>
    <script type="text/javascript">
        function f_refreshtype() {
            var Image1 = document.getElementById("img_code");
            if (Image1 != null) {
                Image1.src = Image1.src + "?";
            }
        }  
    </script>
</head>
<body class="login_body">
    <div id="login_body">
        <div class="login_content">
            <div class="login_title write ">
                账号密码登录</div>
            <form runat="server" class="login_form" id="form1">
            <!--用户名-->
            <div class="login_input">
                <div class="login_right">
                    <input type="text" runat="server" id="username" name="username" class="form-control "
                        placeholder="请输入用户名" required />
                </div>
                <div class="clearfix">
                </div>
            </div>
            <!--密码-->
            <div class="login_input">
                <div class="login_right">
                    <input type="password" runat="server" id="userpwd" name="userpwd" class="form-control "
                        placeholder="请输入密码" required />
                </div>
                <div class="clearfix">
                </div>
            </div>
            <!--验证码-->
            <div class="login_input">
                <div class="login_right">
                    <input type="text" runat="server" id="Code" name="code" class="form-contro2 "  placeholder="请输入验证码"
                        required />
                    <img id="img_code" src="Vcode.aspx" onclick="f_refreshtype()" class="checkImg " />
                </div>
            </div>
            <!--角色-->
            <div class="login_input">
                <div class="login_right">
                    <asp:DropDownList ID="grade" runat="server" CssClass="form-control " Enabled="true">
                        <asp:ListItem Value="1">管理员</asp:ListItem>
                        <asp:ListItem Value="2">用户</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="clearfix">
                </div>
            </div>
            <!--登录-->
            <div class="login_right">
                <asp:Button ID="btnLogin" runat="server" Text="我要登录" class="greenBg form-control  error bold" OnClick="btnLogin_Click" />
            </div>
            <div class="center red" id="msg" class="write">
                <asp:Literal ID="ltlMess" runat="server" ></asp:Literal>
            </div>
            </form>
        </div>
    </div>
</body>
</html>
