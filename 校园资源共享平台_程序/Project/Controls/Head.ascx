<%@ Control Language="C#" %>
<style type="text/css">
.margin-bottom
{
    margin-bottom:10rem;}
</style>
<%--<script>
    $(function () {
        var longinname = <% HttpContext.Current.Request.Cookies["logininfo"]%>;
    });
</script>--%>

    <div class="index-top-div greenBg">
		<img src="#" alt="logo" class="index-top-img">
		<a href="../Index.aspx"></a> <span class="index-top-text">校园资源共享平台</span></a>
	</div>

    

    <div class="container">
        
        <nav class="index-nav">

        <div class="login-div">
                    <ul class="align-right">
                        <%if (HttpContext.Current.Request.Cookies["logininfo"] == null)
                          { %>
                            <li class="li-inline"><a class="" href="ManagerReg.aspx"><i class="icon-user"></i> 用户注册</a></li>
                            <li class="li-inline"><a class="" href="SysManage/Login.aspx" target="_blank"><i class="icon-user"></i> 登录</a></li>
                        <%}
                          else
                          { %>
                            <li class="li-inline">你好,<%=HttpContext.Current.Request.Cookies["logininfo"].Values["Manager"] %></li>
                            <li class="li-inline"><a class="navbar-brand" href="SysManage/MainFrame.aspx"><i class="icon-user"></i> 个人中心</a></li>
                            <li class="li-inline"><a class="navbar-brand" href="SysManage/Logout.aspx"><font class="red">退出</font></a></li>

                          <%} %>
                      </ul>
          </div>
            <div class="collapse">
                <div class="index-nav-list-button">
                    <a class="button-border-grean" href="./WebForm1.aspx">平台首页</a>
                    <div href="#" class="button-border-grean dropdown-div" >学习资源 
                        <ul class="dropdown-menu ">
                                <%
                                    System.Data.DataTable dt = Project.DB.getDataTable("select * from FenLei");
                                    foreach (System.Data.DataRow dr in dt.Rows)
                                    {
                                     %>
                                <li class="dropdown-menu-li"><a href="/ProductList.aspx?fenleiId=<%=dr[0]%>" class="dropdown-menu-a "><%=dr[1]%></a></li>
                                <%} %>
                         </ul>
                    </div>
                        
                   <a class="button-border-grean" href="./NewsList.aspx?typeid=1">通知公告</a>
                   <a class="button-border-grean" href="./NewsList.aspx?typeid=2">校园资讯</a>
                    <%--<li><a class="navbar-brand" href="/Comment.aspx">在线交流</a></li>--%>
                   <a class="button-border-grean" href="http://www.gxnu.edu.cn/" target="_blank">本校网站</a>
                </div>
                
            </div>
        </nav>





        <div class="">
                
                    <select id="ddlFenLei" name="ddlFenLei" class="">
                    <option value="">--分类--</option>
                    <%
                        var fl = Request.QueryString["fenleiId"];
                    foreach (System.Data.DataRow dr in dt.Rows)
                    {
                    %>
                    <option value="<%=dr[0]%>" <%=dr[0].ToString()==fl?"selected":"" %>><%=dr[1]%></option>
                    <%} %>
                    </select>
                
                <div class="search-div-40rem">
                    <input type="text" id="txtKey" class="search-input button-border-grean hover-clean" placeholder="请输入关键字" value="<%=Request["Key"] %>" >
                    <input type="button" value="搜" class="search-button button-background-grean" onclick="searchInfo()">
                </div>


                <div class="pull-right">
                    
                </div>
                <div class="clearfix"></div>
       
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="margin-bottom"></div>

    <script type="text/javascript">
        function searchInfo() {
            
            var fl = $("#ddlFenLei").val();
            var key = $("#txtKey").val().trim();
//            if (key == "")
//                $("#txtKey").focus();
//            else
                location.href = 'ProductList.aspx?fenleiId=' + fl + '&key=' + decodeURIComponent(key);
        }
    </script>