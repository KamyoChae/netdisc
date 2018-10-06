<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BakDB.aspx.cs" Inherits="Project.SysManage.BakDB" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../style/greenStyle.css" />
    <link rel="stylesheet" type="text/css" href="../style/font-awesome.min.css" />
</head>
<body>
    <form runat="server" id="form1">
    <div class="index-top-div greenBg">
        <img src="#" alt="logo" class="index-top-img" />
        <a href="../Index.aspx"></a><span class="index-top-text">校园资源共享平台</span></a>
    </div>
    <div class="container getBakDb-a text-center">
        <div class="margin-top-5rem ">
            <div class="margin-1rem ">
                <b class="font-2rem1 ">备份数据库</b>
                </div>
            <asp:Button ID="btnSave" runat="server" Text="点击备份" class="submit praimery   margin-bottom"
                OnClick="btnSave_Click" />
            <div class="pull-right">
            </div>
            <div class="clearfix">
            </div>
        </div>
        <div>
           <span class="green table-name-span ib table-12rem text-center ">备份文件名</span> 
           <span class="green table-name-span ib table-12rem text-center  ">操作</span> 
       </div>

       
        <asp:Literal ID="ltllist" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
