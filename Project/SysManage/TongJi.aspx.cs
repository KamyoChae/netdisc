using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace Project.SysManage
{
    public partial class TongJi : ManagerBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            var sql = @"SELECT UserName,COUNT(0) num
                      FROM Product
                      group by UserName
                      order by num desc";
            rptList1.DataSource = DB.getDataTable(sql);
            rptList1.DataBind();

             sql = @"select top 10 ProductName,Hits as num
from Product
order by num desc";
            rptList2.DataSource = DB.getDataTable(sql);
            rptList2.DataBind();

            sql = @"select InfoName as title,COUNT(0) as num
from PingJia
group by InfoName
order by num desc";
            rptList3.DataSource = DB.getDataTable(sql);
            rptList3.DataBind();
        }

        protected string[] GetData(int act)
        {
            string[] str = { "", "" };
            string sql = "";

            if (act == 1)
            {
                sql = @"select username as title,COUNT(0) as num
from product
group by username
order by num desc";
            }
            else if (act == 2)
            {
                sql = @"select top 10 ProductName as title,Hits as num
from Product
order by num desc";
            }
            else if (act == 3)
            {
                sql = @"select InfoName as title,COUNT(0) as num
from PingJia
group by InfoName
order by num desc";
            }


            DataTable dt = DB.getDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                str[0] += "'" + dr["title"] + "',";
                str[1] += dr["num"] + ",";
            }

            return str;
        }

    }
}