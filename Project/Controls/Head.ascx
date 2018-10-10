<%@ Control Language="C#" %> 

    <div class=" "  >
        
        <div class="headnav"  >
            <li class='indexlogo'><a class="" href="WebForm1.aspx"> <img src="./images/logo1.png" alt=""/><span>速校资源共享平台</span> </a></li>
            <ul class="nav head_navbar-nav ">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle navbar-brand" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">资源 <span class="caret"></span></a>
                    <ul class="dropdown-menu"> 
                        <%
                            System.Data.DataTable dt = Project.DB.getDataTable("select * from FenLei");
                            foreach (System.Data.DataRow dr in dt.Rows)
                            {
                                %>
                        <li><a href="ProductList.aspx?fenleiId=<%=dr[0]%>"><%=dr[1]%></a></li>
                        <%} %>
                    </ul>
                </li>

                <li><a class="navbar-brand" href="./NewsList.aspx?typeid=1">公告</a></li>
                <li><a class="navbar-brand" href="./NewsList.aspx?typeid=2">资讯</a></li>
            </ul>
            <ul class="nav head_navbar-nav">
                <%if (HttpContext.Current.Request.Cookies["logininfo"] == null)
                    { %>
                    <li><a class="navbar-brand" href="./ManagerReg.aspx">注册</a></li>
                    <li><a class="navbar-brand" href="./SysManage/Login.aspx?grade=2" target="_blank">登录</a></li>
                    <li><a class="navbar-brand" href="./SysManage/Login.aspx?grade=1" target="_blank">后台</a></li>
                <%}
                    else
                    { %>
                    <li class="navbar-brand">你好,<%=HttpContext.Current.Request.Cookies["logininfo"].Values["Manager"] %></li>
                    <li><a class="navbar-brand" href="./SysManage/MainFrame.aspx">个人中心</a></li>
                    <li><a class="navbar-brand" href="./SysManage/Logout.aspx"><font class="red">退出</font></a></li>



                    <%} %>
            </ul>
        </div> 

        <div class="banner">
            <div class="headsearch">
                
                <div class="pull-left">
                  
                    <input type="text" id="txtKey" class="input_text  required" placeholder="请输入" value="<%=Request["Key"] %>">
                    <div class='setSearch rotate'> 
                        <input type="button" value="" class="search required " onclick="searchInfo()">
                    </div>
                </div>
                    
            </div>
            <div class="introduce">
                <div class="logoimg"> 
                    <img src="./images/logo2.png" alt=""/>
                </div>
            </div>
        </div>

        
    </div> 

    <script type="text/javascript">
        function searchInfo() {
            var fl = $("#ddlFenLei").val();
            var key = $("#txtKey").val().trim(); 
                location.href = '/ProductList.aspx?fenleiId=' + fl + '&key=' + decodeURIComponent(key);
        }
    </script>