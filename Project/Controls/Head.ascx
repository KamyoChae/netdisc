<%@ Control Language="C#" %>
<style type="text/css">
    /*.header_bar{ background:#ff6a00;}*/
    .header_bar { height: 120px;}
    .header_bar_left .logo a{color:#00a0e9;}
    .navbar { background:#f3f3f3;border-bottom:#f3f3f3 solid 2px;}/*绿色：3ebb2b*/
    .navbar .collapse .nav li a{ color:#111; font-size:15px;}
    .navbar .collapse .nav .dropdown .dropdown-menu li a{color:#111;}
    
    .nav-tit{border-bottom:#ccc dashed 1px;color:#4a96d2;}
</style>
<%--<script>
    $(function () {
        var longinname = <% HttpContext.Current.Request.Cookies["logininfo"]%>;
    });
</script>--%>

    <div class="header_bar">
        <div class="main_body padding_lr_0" style="width:1100px;">
            <div class="header_bar_left">
                <div class="logo"> <a href="/Index.aspx" style="color:#fff; font-weight:bold;"><img src="/images/logo.png" /> 校园资源共享平台</a></div>
            </div>
            <div class="header_bar_right">
                
            </div>
        </div>
    </div>

    <div class="main_body padding_lr_0" style="width:1150px;">
        
        <nav class="navbar navbar-default">
            <div class="collapse navbar-collapse" style="padding-left:0;">
                <ul class="nav navbar-nav padding_lr_0">
                    <li ><a class="navbar-brand" href="../WebForm1.aspx"><font >平台首页</font></a></li>
                    
                    
                    
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle navbar-brand" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学习资源 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <%
                                System.Data.DataTable dt = Project.DB.getDataTable("select * from FenLei");
                                foreach (System.Data.DataRow dr in dt.Rows)
                                {
                                 %>
                            <li><a href="/ProductList.aspx?fenleiId=<%=dr[0]%>"><%=dr[1]%></a></li>
                            <%} %>
                        </ul>
                    </li>



                    <li><a class="navbar-brand" href="./NewsList.aspx?typeid=1">通知公告</a></li>
                    <li><a class="navbar-brand" href="./NewsList.aspx?typeid=2">校园资讯</a></li>
                    <%--<li><a class="navbar-brand" href="/Comment.aspx">在线交流</a></li>--%>
                    <li><a class="navbar-brand" href="http://www.gxnu.edu.cn/" target="_blank">本校网站</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right padding_lr_0">
                    <%if (HttpContext.Current.Request.Cookies["logininfo"] == null)
                      { %>
                        <li><a class="navbar-brand" href="./ManagerReg.aspx"><i class="icon-user"></i> 用户注册</a></li>
                        <li><a class="navbar-brand" href="./SysManage/Login.aspx?grade=2" target="_blank"><i class="icon-user"></i> 用户登录</a></li>
                        <li><a class="navbar-brand" href="./SysManage/Login.aspx?grade=1" target="_blank"><i class="icon-user"></i> 管理员登录</a></li>
                    <%}
                      else
                      { %>
                        <li class="navbar-brand">你好,<%=HttpContext.Current.Request.Cookies["logininfo"].Values["Manager"] %></li>
                        <li><a class="navbar-brand" href="./SysManage/MainFrame.aspx"><i class="icon-user"></i> 个人中心</a></li>
                        <li><a class="navbar-brand" href="./SysManage/Logout.aspx"><font class="red">退出</font></a></li>



                      <%} %>
                </ul>
            </div>
        </nav>

        <div class="col-md-12 padding_lr_0">
            <div class="main_head">
                <div class="pull-left">
                    <div class="title_box">搜索资源</div>
                </div>
                <div class="pull-left padding_left_15">
                    <select id="ddlFenLei" name="ddlFenLei" class="input_text">
                    <option value="">--分类--</option>
                    <%
                        var fl = Request.QueryString["fenleiId"];
                    foreach (System.Data.DataRow dr in dt.Rows)
                    {
                    %>
                    <option value="<%=dr[0]%>" <%=dr[0].ToString()==fl?"selected":"" %>><%=dr[1]%></option>
                    <%} %>
                    </select>
                    <input type="text" id="txtKey" class="input_text" placeholder="请输入关键字" value="<%=Request["Key"] %>" style="width:500px;"><input type="button" value="" class="search" onclick="searchInfo()">
                </div>
                <div class="pull-right">
                    
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>

    <script type="text/javascript">
        function searchInfo() {
            var fl = $("#ddlFenLei").val();
            var key = $("#txtKey").val().trim();
//            if (key == "")
//                $("#txtKey").focus();
//            else
                location.href = '/ProductList.aspx?fenleiId=' + fl + '&key=' + decodeURIComponent(key);
        }
    </script>