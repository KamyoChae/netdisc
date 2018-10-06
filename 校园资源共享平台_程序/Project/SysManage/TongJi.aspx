<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TongJi.aspx.cs" Inherits="Project.SysManage.TongJi" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../style/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../style/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../style/style.css" />
    <script type="text/javascript" src="../script/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../script/bootstrap.min.js"></script>
    <script type="text/javascript" src="../script/system.js"></script>

    <script type="text/javascript" src="../script/co.Core.js"></script>
    <script type="text/javascript" src="../script/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../layer/layer.js"></script>
    <script type="text/javascript" src="../script/date/WdatePicker.js"></script>
    <script src="../script/echarts-all.js"></script>

</head>
<body>
    <div class="main_right_content">
        <div class="main_body">
            <div class="xol-sm-12"><b>排名统计</b>    </div>
            <div class="xol-sm-12" style="height: 300px;" id="chartDiv1">
                <div id="main1" style="height: 260px; border: 1px solid #ccc; padding: 10px;"></div>
                <script type="text/javascript">
                    //柱状图
                    var myChart1 = echarts.init(document.getElementById('main1'));
                    myChart1.setOption({
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data: ['按上传量']
                        },

                        xAxis: [
                            {
                                type: 'category',
                                data: [<%=GetData(1)[0] %>]
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value',
                                splitArea: { show: true }
                            }
                        ],
                        series: [
                            {
                                name: '按上传量',
                                type: 'bar',
                                data: [<%=GetData(1)[1] %>]
                            }
                        ]
                    });
                </script>
                <span class="btn btn-primary" onclick="show1()">详细信息</span>
                <script type="text/javascript">
                    function show1() {
                        if ($('#div1').css('display') == 'none') {
                            $('#chartDiv1').height(450);
                            $('#div1').show();
                        }
                        else {

                            $('#chartDiv1').height(300);
                            $('#div1').hide();
                        }

                    }

                </script>
                <div id="div1" style="display: none;">
                    <asp:Repeater ID="rptList1" runat="server">
                        <ItemTemplate>
                            <div class="col-md-12 padding_top_10" style="padding: 10px 0; border-bottom: #eee solid 1px;">
                                <div class="col-md-6"><a href="#"><%#Eval("UserName")%></a></div>
                                <div class="col-md-6 text-center"><i class="icon-upload-alt"></i>总计上传数 <%#Eval("num")%></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>



            <div class="xol-sm-12" style="height: 300px;" id="chartDiv2">
                <div id="main2" style="height: 260px; border: 1px solid #ccc; padding: 10px;"></div>
                <script type="text/javascript">
                    //柱状图
                    var myChart2 = echarts.init(document.getElementById('main2'));
                    myChart2.setOption({
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data: ['按下载量']
                        },

                        xAxis: [
                            {
                                type: 'category',
                                data: [<%=GetData(2)[0] %>]
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value',
                                splitArea: { show: true }
                            }
                        ],
                        series: [
                            {
                                name: '按下载量',
                                type: 'bar',
                                data: [<%=GetData(2)[1] %>]
                            }
                        ]
                    });
                </script>

                <span class="btn btn-primary" onclick="show2()">详细信息</span>
                <script type="text/javascript">
                    function show2() {
                        if ($('#div2').css('display') == 'none') {
                            $('#chartDiv2').height(750);
                            $('#div2').show();
                        }
                        else {

                            $('#chartDiv2').height(300);
                            $('#div2').hide();
                        }

                    }

                </script>
                <div id="div2" style="display: none;">
                    <asp:Repeater ID="rptList2" runat="server">
                        <ItemTemplate>
                            <div class="col-md-12 padding_top_10" style="padding: 10px 0; border-bottom: #eee solid 1px;">
                                <div class="col-md-6"><a href="#"><%#Eval("ProductName")%></a></div>
                                <div class="col-md-6 text-center"><i class="icon-upload-alt"></i>总计下载量 <%#Eval("num")%></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </div>


            <div class="xol-sm-12" style="height: 300px;" id="chartDiv3">
                <div id="main3" style="height: 260px; border: 1px solid #ccc; padding: 10px;"></div>
                <script type="text/javascript">
                    //柱状图
                    var myChart3 = echarts.init(document.getElementById('main3'));
                    myChart3.setOption({
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data: ['按评论量']
                        },

                        xAxis: [
                            {
                                type: 'category',
                                data: [<%=GetData(3)[0] %>]
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value',
                                splitArea: { show: true }
                            }
                        ],
                        series: [
                            {
                                name: '按评论量',
                                type: 'bar',
                                data: [<%=GetData(3)[1] %>]
                                    }
                                ]
                    });
                </script>
                <span class="btn btn-primary" onclick="show3()">详细信息</span>
                <script type="text/javascript">
                    function show3() {
                        if ($('#div3').css('display') == 'none') {
                            $('#chartDiv3').height(450);
                            $('#div3').show();
                        }
                        else {

                            $('#chartDiv3').height(300);
                            $('#div3').hide();
                        }

                    }

                </script>
                <div id="div3" style="display: none;">
                    <asp:Repeater ID="rptList3" runat="server">
                        <ItemTemplate>
                            <div class="col-md-12 padding_top_10" style="padding: 10px 0; border-bottom: #eee solid 1px;">
                                <div class="col-md-6"><a href="#"><%#Eval("title")%></a></div>
                                <div class="col-md-6 text-center"><i class="icon-upload-alt"></i>总计评论量 <%#Eval("num")%></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>


        </div>
    </div>


</body>
</html>
