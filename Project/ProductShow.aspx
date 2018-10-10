<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductShow.aspx.cs" Inherits="Project.ProductShow" %>
    <%@ Register src="Controls/Head.ascx" tagname="Head" tagprefix="uc1" %>
        <%@ Register src="Controls/Foot.ascx" tagname="Foot" tagprefix="uc2" %>
            <%@ Register src="Controls/Left.ascx" tagname="Left" tagprefix="uc3" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">
                    <title></title>
                    <link rel="stylesheet" type="text/css" href="style/bootstrap1.css" /> 
                    <link rel="stylesheet" type="text/css" href="style/font-awesome.min.css" />
                    <link rel="stylesheet" type="text/css" href="style/style1.css" />
                    <link rel="stylesheet" href="./style/kamstyle.css">
                    <script type="text/javascript" src="script/jquery-1.10.2.min.js"></script>
                   
                    <script type="text/javascript" src="script/bootstrap.min.js"></script>
                    <script type="text/javascript" src="script/co.Core.js"></script>
                    <script type="text/javascript" src="script/system.js"></script>
                    <script type="text/javascript" src="layer/layer.js"></script>
                    <script src="./script/initJs.js"></script>
           
                </head>

                <body>
                    <form id="Form1" runat="server">
                        <uc1:Head ID="Head1" runat="server" />

                        <div class="pshow_box"  >
                             
                            <div class=" ">
                                <div class="nav-tit" id="tit">资源详情</a> </div>
                                <div class="pshow_container">

                                    <div class="titlebox">
                                        <div class="pshow_title">
                                             <asp:Literal ID="productname" runat="server"></asp:Literal> 
                                        </div>
                                    

                                        <div class="typebox">

                                            <div class=" pshow_type"  >

                                                <span class="type_items">归类：<asp:Literal ID="FenLeiName" runat="server"></asp:Literal></span>
                                                <span class="type_items">类型：<asp:Literal ID="FileType" runat="server"></asp:Literal></span>
                                                <span class="type_items">大小：<asp:Literal ID="reName" runat="server"></asp:Literal></span>
                                                <span class="type_items">下载量：<asp:Literal ID="hits" runat="server"></asp:Literal></span> 
                                                
                                                <span class="zan" id="<%=id %>"  >
                                                    <i class="icon-thumbs-up-alt"></i>(<span><asp:Literal ID="zanNum" runat="server"></asp:Literal></span>)
                                                </span> 
                                            </div>
                                            <div class="btn_download">
                                                
                                                <asp:LinkButton ID="btnGuanZhu" runat="server" CssClass="btn btn-default" OnClick="btnGuanZhu_Click"> 
                                                    <div class="down">
                                                            <span class="eysleft"></span><span class="eysright"></span>
                                                            <div class="dow">
                                                                    download
                                                            </div>
                                                        </div>
                                                </asp:LinkButton>

                                            </div>
                                        </div>
                                    </div>
                                         
                                    <div class="aboutbox">
                                        <div class="pshow_about">  
                                                <h1>  资源介绍 </h1>
                                                <div>
                                                    <asp:Literal ID="content" runat="server"></asp:Literal>
                                                </div> 
                                            </div>
                                    </div>
                                    


                                    <div class=" "> 

                                        <div class="pshow_list">
                                            <asp:Repeater ID="rptList" runat="server">
                                                <ItemTemplate> 
                                                    <div class="pshow_useritem">

                                                        <div class="pshow_user">
                                                            <span class="pshow_name">
                                                                <%#Eval("PingJiaUser") %>  
                                                            </span> 
                                                            <span class="pshow_star">
                                                                <%#Eval("Xing") %>
                                                            </span>
                                                           
                                                        </div>
                                                        
                                                    </div>
                                                    <div class="pshow_contentbox">
                                                        <div class="pshow_content"> 
                                                            <%#Eval("PingJiaContent")%>
                                                        </div>

                                                        <span class="pshow_time">
                                                            <%#Eval("PingJiaTime")%>
                                                        </span>
                                                    </div> 
                                                </ItemTemplate>
                                            </asp:Repeater> 
                                        </div>
                                            
                                        <div class="form-horizontal ">
                                            <div class="form-group">
                                                <h2>憋不住了！我要评论</h2> 
                                            </div>

                                            <div class="form-group">
                                                <p>给自己起个名字</p>
                                                <div class="write_namebox ">
                                                    <asp:TextBox ID="PingJiaUser" runat="server" CssClass="write_name required" placeholder="请填写姓名" required></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group"> 
                                                <div class="write_textbox">
                                                    <asp:TextBox ID="PingJiaContent" runat="server" CssClass="write_text required" TextMode="MultiLine" Rows="4" Maxlength="500" placeholder="我想说些什么"
                                                        required></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group"> 
                                                <p class="pay_about">给资源打分：</p>
                                                <div class="sub_box"> 
                                                    <asp:DropDownList ID="Xing" runat="server" CssClass="pay_star pshow_star required" >
                                                        <asp:ListItem class="pay_star">★★★★★</asp:ListItem>
                                                        <asp:ListItem class="pay_star">★★★★</asp:ListItem>
                                                        <asp:ListItem class="pay_star">★★★</asp:ListItem>
                                                        <asp:ListItem class="pay_star">★★</asp:ListItem>
                                                        <asp:ListItem class="pay_star">★</asp:ListItem>
                                                    </asp:DropDownList>

                                                    <asp:Button ID="btnSave" runat="server" Text="我写好了" CssClass="required forsubmit"  OnClick="btnSave_Click" />
                                           
                                                </div>
                                                
                                            </div>
 
                                        </div>
                                    </div>


                                </div>
                            </div>

                            <uc2:Foot ID="Foot1" runat="server" />
                        </div>
                    </form>

                    <script src="./script/kamJs.js"></script>
                </body>

                </html>