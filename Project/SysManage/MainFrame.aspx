<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainFrame.aspx.cs" Inherits="Project.SysManage.MainFrame" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximun-scale=1.0,user-scalable=0">
        <title></title>
        <link rel="stylesheet" type="text/css" href="../style/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="../style/font-awesome.min.css" />
        <link rel="stylesheet" href="../style/kamstyle.css">
        <link rel="stylesheet" type="text/css" href="../style/app.css" />
        <script type="text/javascript" src="../script/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="../script/bootstrap.min.js"></script>
        <script type="text/javascript" src="../script/system.js"></script>
        <script type="text/javascript" src="../layer/layer.js"></script>

    </head>

    <body>
        <div class="mainframe">
            
            <!--头部-->
            <div class="header_bar">
                <div class="header_bar_right">
                    <div class="logo logo_main"><img src="../images/logo2.png" /> 速校资源共享平台</div>
                </div>
                <div class="header_bar_right">
                     
                    <ul class="header_bar_right_ul">
                        <li class="member">
                            <a >
                            <%
                        if (mbGrade == 1)
                            Response.Write("管理员");
                        else if (mbGrade == 2)
                            Response.Write("用户");
                            %>
                                ：
                                <asp:Literal ID="ltlLoginName" runat="server"></asp:Literal>
                            </a>
                        </li>
                        <li class="quitout">
                            <a href="Logout.aspx">注销</a> 
                        </li>
                    </ul>
                    
                </div>
            </div>


            <div class="body_container">
                <!--左侧-->
                <div class="main_left  ">
                        <div class="main_left_overflow">
                            <div class="showleft "><i class="myicon icon-chevron-right"></i></div>
                            <div class="main_nav">
                                <span class=""><a class="back_home" href="../WebForm1.aspx">返回主页</a></span>
                            </div>
        
                            <%if (mbGrade == 1)
                                { %>
                                <div class="main_nav">
                                    <span class="">用户管理</span><i class="icon-angle-right icon_right"></i>
                                </div>
                                <div class="child_nav">
                                    <ul>
                                        <li><a href="ManagerManage.aspx" target="myiframe">用户管理</a></li>
                                    </ul>
                                </div>
                                <div class="main_nav">
                                    <span class="">资源分类管理</span><i class="icon-angle-right icon_right"></i>
                                </div>
                                <div class="child_nav">
                                    <ul>
                                        <li><a href="FenLeiOper.aspx" target="myiframe">新增分类</a></li>
                                        <li><a href="FenLeiManage.aspx" target="myiframe">分类管理</a></li>
                                    </ul>
                                </div>
                                <%} %>
        
                                    <div class="main_nav">
                                        <span class="">资源管理</span><i class="icon-angle-right icon_right"></i>
        
                                    </div>
                                    <div class="child_nav">
                                        <ul>
                                            <%if (mbGrade == 2)
                                { %>
                                                <li><a href="ProductOper.aspx" target="myiframe">上传文件</a></li>
                                                <%} %>
                                                    <li><a href="ProductManage.aspx" target="myiframe"><%=mbGrade == 1 ? "资源审核管理" : "我的共享"%></a></li>
         
        
                                                            <%if (mbGrade == 2)
                                { %>
                                                                <li><a href="GuanZhuList.aspx" target="myiframe">我的下载</a></li>
                                                                <li><a href="../ProductList.aspx" target="_top">下载文件</a></li>
                                                                <%} %>
                                                              
                                        </ul>
                                    </div>
        
                                    <%if (mbGrade == 1)
                        { %>
        
                                        <div class="main_nav">
                                            <span class="">公告、资讯</span><i class="icon-angle-right icon_right"></i>
                                        </div>
                                        <div class="child_nav">
                                            <ul>
                                                <li><a href="NewsOper.aspx" target="myiframe">发布信息</a></li>
                                                <li><a href="NewsManage.aspx" target="myiframe">信息查询</a></li>
                                            </ul>
                                        </div>
        
                                        <div class="main_nav">
                                            <span class="">资源评论</span><i class="icon-angle-right icon_right"></i>
                                        </div>
                                        <div class="child_nav">
                                            <ul>
                                                <li><a href="PingJiaManage.aspx" target="myiframe">资源评论管理</a></li>
                                            </ul>
                                        </div>
                                        <%} %>
        
                                            <div class="main_nav">
                                                <span class="">系统管理</span><i class="icon-angle-right icon_right"></i>
                                            </div>
                                            <div class="child_nav">
                                                <ul>
                                               
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
                    <iframe class="myiframe" id="myiframe" name="myiframe" width="100%" height="100%" src="right.html" scrolling="auto"  frameborder="0" seamless></iframe>
                </div>

            </div>
            

        </div> 
        <script src="../script/kamJs.js"></script>
        <script src="../script/app.js"></script>
    </body>

    </html>