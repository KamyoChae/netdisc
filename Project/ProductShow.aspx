<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductShow.aspx.cs" Inherits="Project.ProductShow" %>
<%@ Register src="Controls/Head.ascx" tagname="Head" tagprefix="uc1" %>
<%@ Register src="Controls/Foot.ascx" tagname="Foot" tagprefix="uc2" %>
<%@ Register src="Controls/Left.ascx" tagname="Left" tagprefix="uc3" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="style/style.css" />
    <script type="text/javascript" src="script/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="script/bootstrap.min.js"></script>
    <script type="text/javascript" src="script/co.Core.js"></script>
    <script type="text/javascript" src="script/system.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript">
        $(function () {
            //点赞 按钮
            $(".zan").on("click", function (e) {
                var _id = $(this).attr("id");
                var _likenum = parseInt($(this).find("span").text());
                var n = 1; /*Math.round(Math.random() * 10)*/
                var $i = $("<b>").text("+" + n);
                var x = e.pageX, y = e.pageY;

                $i.css({ top: y - 20, left: x, position: "absolute", color: "#E94F06" });
                $("body").append($i);
                $i.animate({ top: y - 60, opacity: 0, "font-size": "1.4em" }, 1000, function () {
                    $i.remove();
                });
                e.stopPropagation();
                $(this).find("span").text(_likenum + n);
                zan_update(_id);
            });
        });

        //点赞时更新表字段
        function zan_update(_id) {
            //更新数据库
            $.ajax({
                timeout: 20000, //超时时间
                type: "POST",
                dataType: "json",
                url: "ajax/UpdateZan.ashx",
                data: { id: _id, flag: Math.random() },
                async: true, //false为同步，true为异步
                success: function (result) {
                    //alert(result);
                    //if (result.error) { alert(result.text); }
                }
            });
        }
</script>
</head>
<body>
<form id="Form1" runat="server">
<uc1:Head ID="Head1" runat="server" />

<div class="main_body padding_lr_0" style="width:1150px;">
    <uc3:Left ID="Left1" runat="server" />

    <div class="col-md-9" style="border-left:#ccc solid 1px;">
    <div class="col-md-12 nav-tit"><i class="icon-home"></i> 资源详情</div>
    <div class="col-md-12">
        
        <div class="col-md-12">
            <div class="col-md-12 text-center">
                <b><asp:Literal ID="productname" runat="server"></asp:Literal></b>
            </div>
            <div class="col-md-12 text-center" style="padding:20px 0;">
                <asp:Literal ID="FenLeiName" runat="server"></asp:Literal>&nbsp;/&nbsp;
                类型：<asp:Literal ID="FileType" runat="server"></asp:Literal>&nbsp;/&nbsp;
                大小：<asp:Literal ID="reName" runat="server"></asp:Literal>&nbsp;/&nbsp;
                下载量：<asp:Literal ID="hits" runat="server"></asp:Literal> &nbsp;&nbsp;
                <span class="zan" id="<%=id %>" style="font-size:20px;color:Red; cursor:pointer;">
                    <i class="icon-thumbs-up-alt"></i>(<span><asp:Literal ID="zanNum" runat="server"></asp:Literal></span>)
                </span>
            </div>
        </div>

        <div class="main_body col-md-12" style="font-size:14px;line-height:30px;">
            <div class="col-md-12 padding_lr_0">
                <p align="center">
                    <asp:LinkButton ID="btnGuanZhu" runat="server" CssClass="btn btn-default" OnClick="btnGuanZhu_Click">
                        <img src="images/down.jpg" style="height:45px;" />
                    </asp:LinkButton>
                    点击下载(迅雷/电驴)，(如不能成功下载，请按右键>“目标另存为”)
                </p>

                <p style="padding:5px 20px; text-align:left; background:#f3f3f3;color:#4a96d2;"><b>资源介绍</b></p>
                <div>
                    <asp:Literal ID="content" runat="server"></asp:Literal>
                </div>
            </div>
        </div>


        <div class="main_body col-md-12">
            <table class="table table_span table-hover">
            <tbody>
            <asp:Repeater ID="rptList" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <div class="col-sm-12">
                            <div class="col-sm-6"><%#Eval("PingJiaUser") %> / <span class="orange"><%#Eval("Xing") %></span></div>
                            <div class="col-sm-6 text-right"><%#Eval("PingJiaTime")%></div>
                        </div>
                        <div class="col-sm-12">
                            <%#Eval("PingJiaContent")%>
                        </div>
                    </td>
                </tr>
            </ItemTemplate>
            </asp:Repeater>
            </tbody>
            </table>
            
            <div class="form-horizontal col-md-12">
            <div class="form-group" style="border-bottom:#ccc solid 1px;">
                <label class="col-sm-1 control-label padding_lr_0">我要评论</label>
                <div class="col-sm-10"></div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label padding_lr_0">评论人</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="PingJiaUser" runat="server" CssClass="form-control" Width="460" placeholder = "请填写姓名" required></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label padding_lr_0">评论内容</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="PingJiaContent" runat="server" CssClass="form-control" Width="460" TextMode="MultiLine" Rows="4" placeholder = "请填写内容" required></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label padding_lr_0">评论星级</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="Xing" runat="server" CssClass="form-control orange" Width="260">
                        <asp:ListItem>★★★★★</asp:ListItem>
                        <asp:ListItem>★★★★</asp:ListItem>
                        <asp:ListItem>★★★</asp:ListItem>
                        <asp:ListItem>★★</asp:ListItem>
                        <asp:ListItem>★</asp:ListItem>
                        </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"></label>
                <div class="col-sm-10">
                    <asp:Button ID="btnSave" runat="server" Text="提交信息" CssClass="btn btn-primary" 
                        Width="161px" OnClick="btnSave_Click" />
                </div>
            </div>
            </div>
        </div>


    </div>
    </div>

<uc2:Foot ID="Foot1" runat="server" />
</div>
</form>
</body>
</html>