<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.SysManage.Login" %>
    <!DOCTYPE html>
    <html class="login_html">

    <head>
        <meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximun-scale=1.0,user-scalable=0">
        <title></title>
        <link rel="stylesheet" type="text/css" href="../style/bootstrap.css" /> 
        <link rel="stylesheet" href="../style/kamstyle.css">
        <script type="text/javascript" src="../script/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="../script/bootstrap.min.js"></script>
        <script src="../script/less.js"></script>


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

            <div class="logo">
                <img src="../images/logo.png" /> 速校资源共享平台
            </div>

            <div class="animate">
                <div class="textbox">

                    <span >正</span>
                    <span >在登录<i>.</i><i>.</i><i>.</i></span>


                </div>

                <div class="eyebox">
                    <div class="eyes eyet"> 
                        <div class="ebox red">
                            <div class="ewhite">
                                <div class="eblack">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="eyes eyet"> 
                            <div class="ebox blue">
                                <div class="ewhite">
                                    <div class="eblack">
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
            <div class="cover">
            </div>
            <div class="login_content">

                <form runat="server" class="login_form" id="form1">
                    <!--用户名-->
                    <div class="login_input">
                        <div class="login_left"><i class="icon-user"></i></div>
                        <div class="login_rs">
                            <div class="login_right">
                                <input type="text" runat="server" id="username" name="username" class="login_name_input required" placeholder="用户名" required
                                />
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <!--密码-->
                    <div class="login_input">
                        <div class="login_left"><i class="icon-key"></i></div>
                        <div class="login_rs">
                            <div class="login_right">
                                <input type="password" runat="server" id="userpwd" name="userpwd" class="login_name_input required" placeholder="密码" required
                                />
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <!--验证码-->
                    <div class="login_input">
                        <div class="login_left"><i class="icon-user"></i></div>
                        <div class="login_rs">
                            <div class="login_right">
                                <table>
                                    <tr>
                                        <td>
                                            <input type="text" runat="server" id="Code" name="code" class="login_name_input required checkcode" placeholder="验证码" required
                                            />
                                        </td>
                                        <td>
                                            <img id="img_code" src="Vcode.aspx" onclick="f_refreshtype()" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--角色-->
                    <div class="login_input">

                        <div class="login_rs" style="display:none">
                            <div class="login_right">
                                <asp:DropDownList ID="grade" runat="server" CssClass="form-control" Enabled="false">
                                    <asp:ListItem Value="1">管理员</asp:ListItem>
                                    <asp:ListItem Value="2">用户</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <!--登录-->
                    <div class="login_input1">
                        <asp:Button ID="btnLogin" runat="server" Text="登录" onclick="btnLogin_Click" />
                    </div>
                    <div class="center red" id="msg">
                        <asp:Literal ID="ltlMess" runat="server"></asp:Literal>
                    </div>
                </form>
            </div>
        </div>
    </body>

    </html>