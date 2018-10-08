using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        /// <summary>
        /// 获取数据
        /// </summary>
        private void BindData()
        {
            rptList1.DataSource = DB.getDataTable("select top 5 * from Product where State='通过' order by newid()");
            rptList1.DataBind();

            rptList2.DataSource = DB.getDataTable("select top 5 * from Product where State='通过' order by hits desc");
            rptList2.DataBind();

            var sql = @"SELECT UserName,COUNT(0) num
                      FROM Product
                      group by UserName
                      order by num desc";
            rptList3.DataSource = DB.getDataTable(sql);
            rptList3.DataBind();

           


        }
    }
}