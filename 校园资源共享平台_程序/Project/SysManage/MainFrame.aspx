<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainFrame.aspx.cs" Inherits="Project.SysManage.MainFrame" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../style/greenStyle.css" />
    <link rel="stylesheet" type="text/css" href="../style/font-awesome.min.css" />

</head>
<body>
    <!--头部-->
    <div class="index-top-div greenBg">
        <img src="#" alt="logo" class="index-top-img">
        <a href="../Index.aspx"></a><span class="index-top-text">校园资源共享平台</span></a>
    </div>

    <div class="container">
    <div class="login-div">
        <ul class="align-right">
            <li class="li-inline">
                <%
                    if (mbGrade == 1)
                        Response.Write("管理员");
                    else if (mbGrade == 2)
                        Response.Write("用户");
                %>
                ：<asp:Literal ID="ltlLoginName" runat="server"></asp:Literal>
            </li>
            <li class="quit li-inline"><a href="Logout.aspx">注销</a> </li>
        </ul>
    </div>
    
    </div>
<div class="outer verTop">
    <!--左侧-->
    <div class="main_left">
        <div class="main_left_overflow">
            <div class="main_nav">
                <i class="icon-home"></i><span class=""><a href="/WebForm1.aspx">返回主页</a></span>
            </div>
            <%if (mbGrade == 1)
              { %>
            <div class="main_nav">
                <i class="icon-user"></i><span class="nav-title">用户管理</span>
            </div>
            <div class="child_nav">
                <ul>
                    <li><a href="ManagerManage.aspx" target="myiframe">用户管理</a></li>
                </ul>
            </div>
            <div class="main_nav">
                <i class="icon-list-ul"></i><span class="">资源分类管理</span>
            </div>
            <div class="child_nav">
                <ul>
                    <li><a href="FenLeiOper.aspx" target="myiframe">新增分类</a></li>
                    <li><a href="FenLeiManage.aspx" target="myiframe">分类管理</a></li>
                </ul>
            </div>
            <%} %>
            <div class="main_nav">
                <i class="icon-th-list"></i><span class="">资源管理</span>
            </div>
            <div class="child_nav">
                <ul>
                    <%if (mbGrade == 2)
                      { %>
                    <li><a href="ProductOper.aspx" target="myiframe">上传文件</a></li>
                    <%} %>
                    <li><a href="ProductManage.aspx" target="myiframe">
                        <%=mbGrade == 1 ? "资源审核管理" : "我的共享"%></a></li>
                    <%if (mbGrade == 1)
                      { %>
                    <li><a href="TongJi.aspx" target="myiframe">排名统计管理</a></li>
                    <%} %>
                    <%if (mbGrade == 2)
                      { %>
                    <li><a href="GuanZhuList.aspx" target="myiframe">我的下载</a></li>
                    <li><a href="../ProductList.aspx" target="_top">下载文件</a></li>
                    <%} %>
                    <!-- <li><a href="TongJi.aspx" target="myiframe">排名统计管理</a></li> -->
                </ul>
            </div>
            <%if (mbGrade == 1)
              { %>
            <div class="main_nav">
                <i class="icon-th-list"></i><span class="">公告、资讯</span>
            </div>
            <div class="child_nav">
                <ul>
                    <li><a href="NewsOper.aspx" target="myiframe">发布信息</a></li>
                    <li><a href="NewsManage.aspx" target="myiframe">信息查询</a></li>
                </ul>
            </div>
            <div class="main_nav">
                <i class="icon-th-list"></i><span class="">资源评论</span>
            </div>
            <div class="child_nav">
                <ul>
                    <li><a href="PingJiaManage.aspx" target="myiframe">资源评论管理</a></li>
                </ul>
            </div>
            <%} %>
            <div class="main_nav">
                <i class="icon-gear"></i><span class="">系统管理</span>
            </div>
            <div class="child_nav">
                <ul>
                    <!--
                    <%if (mbGrade == 1)
                    { %>
                    <li><a href="BakDB.aspx" target="myiframe">备份数据库</a></li>
                    <%} %>
                    -->
                    <%if (mbGrade == 2)
                      { %>
                    <li><a href="EditInfo.aspx" target="myiframe">个人信息</a></li>
                    <%} %>
                    <li><a href="EditPwd.aspx" target="myiframe">修改密码</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!--右侧-->
    <div class="main_right">
        <iframe class="main_right_frame" id="myiframe" name="myiframe"  src="right.html" scrolling="auto" onload="changeFrameHeight()" frameborder="0" seamless></iframe>
         
    </div>

</div>

    <script type="text/javascript">
        function changeFrameHeight() {
            var ifm = document.getElementById("myiframe");
            ifm.height = document.documentElement.clientHeight - 120;
        }
        window.onresize = function () {
            changeFrameHeight();
        }
    </script>
</body>
</html>
