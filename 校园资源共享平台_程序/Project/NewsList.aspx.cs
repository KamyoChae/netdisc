using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project
{
    public partial class NewsList : System.Web.UI.Page
    {
        protected int PageSize = 10;
        protected int PageCount;
        protected int RecordCount;
        protected int CurrentPage;//当前页
        protected string key;
        protected int typeid;
        protected void Page_Load(object sender, EventArgs e)
        {
            key = Common.RequestString("key");
            typeid = Common.RequestInt("typeid");
            if (!IsPostBack)
            {
                Get_Data();
            }
        }

        private void Get_Data()
        {
            string where = "typeid=" + typeid;
            if (!string.IsNullOrEmpty(key))
                where += " and (Title like '%" + key + "%')";

            DataTable dt = DB.GetListByPage("News", "Id", where, "Id", 1, 1, 1, out PageCount, out RecordCount);
            if (dt.Rows.Count > 0)
            {
                CurrentPage = PagingHelper.getPage(PageCount);//当前页
                rptList.DataSource = DB.GetListByPage("News", "*", where, "Id", 1, PageSize, CurrentPage, out PageCount, out RecordCount);
                rptList.DataBind();
                ltlNull.Text = "";
            }
            else
            {
                rptList.DataSource = string.Empty;
                rptList.DataBind();
                ltlNull.Text = "<tr><td>暂无数据</td></tr>";
            }

            dt.Dispose();
        }
    }
}