<!--修改-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerReg.aspx.cs" Inherits="Project.ManagerReg" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" type="text/css" href="./style/bootstrap1.css" />
        <link rel="stylesheet" type="text/css" href="./style/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="./style/kamstyle.css" />
        <script type="text/javascript" src="./script/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="./script/bootstrap.min.js"></script>
        <script type="text/javascript" src="./script/co.Core.js"></script>
        <script type="text/javascript" src="./script/system.js"></script>
        <script type="text/javascript" src="./layer/layer.js"></script>
    </head>

    <body class="regbody">
        
        <form id="form1" runat="server">

            <div class="regmain">

                <div class="form-group ">
                    <label>帐号<span>*</span></label>
                    <div class="inputslide">
                        <asp:TextBox ID="ManagerName" runat="server" CssClass="form-control required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group ">
                    <label>密码<span>*</span></label>
                    <div class="inputslide">
                        <asp:TextBox ID="ManagerPwd" runat="server" TextMode="Password" CssClass="form-control required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group ">
                    <label>确认密码<span>*</span></label>
                    <div class="inputslide">
                        <asp:TextBox ID="SuerPwd" runat="server" TextMode="Password" CssClass="form-control required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group ">
                    <label>名称<span>*</span></label>
                    <div class="inputslide">
                        <asp:TextBox ID="Title" runat="server" CssClass="form-control required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group ">
                    <label>邮箱<span>*</span></label>
                    <div class="inputslide">
                        <asp:TextBox ID="Email" runat="server" CssClass="form-control required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group " style="display:none">
                    <label>联系电话</label>
                    <div class="inputslide">
                        <asp:TextBox ID="Tel" runat="server" CssClass="form-control required"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group ">
                    <div class="inputslide btnbox">
                        <asp:Button ID="btnSave" class="btn"  runat="server" Text="注册" CssClass="btn"  OnClick="btnSave_Click" />
                        <asp:Button ID="btnBack" runat="server" Text="取消" CssClass="btn"  OnClick="btnBack_Click" />
                    </div>
                </div>

                <div class="lit">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

            </div>

        </form>
        <div class="reglogo">
            <div class="reglogobox">
                    <img src="./images/logo1.png" alt="" />
                    <h1>速校资源共享平台</h1>
            </div>
        </div>
        
        <script src="./script/kamJs.js"></script>
    </body>

    </html>