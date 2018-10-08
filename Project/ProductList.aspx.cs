//修改
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected int PageSize = 10;
        protected int PageCount;
        protected int RecordCount;
        protected int CurrentPage;//当前页
        protected string key;
        protected int fenleiId;
        protected string userName;
        protected void Page_Load(object sender, EventArgs e)
        {
            userName = Common.RequestString("UserName");
            key = Common.RequestString("key");
            fenleiId = Common.RequestInt("fenleiId");
            if (!IsPostBack)
            {
                Get_Data();
            }
        }

        private void Get_Data()
        {
            if (userName != "")
            {
                string where = "UserName='" + userName + "'";

                DataTable dt = DB.GetListByPage("Product", "Id", where, "Id", 1, 1, 1, out PageCount, out RecordCount);
                if (dt.Rows.Count > 0)
                {
                    CurrentPage = PagingHelper.getPage(PageCount);//当前页
                    rptList.DataSource = DB.GetListByPage("Product", "*", where, "Id", 1, PageSize, CurrentPage, out PageCount, out RecordCount);
                    rptList.DataBind();
                    ltlNull.Text = "";
                }
                else
                {
                    rptList.DataSource = string.Empty;
                    rptList.DataBind();
                    ltlNull.Text = "暂无数据";
                }

                dt.Dispose();
            }
            else
            {
                string where = "State='通过'";
                if (fenleiId > 0)
                    where += " and FenLeiId=" + fenleiId;

                if (!string.IsNullOrEmpty(key))
                    where += " and (ProductName like '%" + key + "%')";

                DataTable dt = DB.GetListByPage("Product", "Id", where, "Id", 1, 1, 1, out PageCount, out RecordCount);
                if (dt.Rows.Count > 0)
                {
                    CurrentPage = PagingHelper.getPage(PageCount);//当前页
                    rptList.DataSource = DB.GetListByPage("Product", "*", where, "Id", 1, PageSize, CurrentPage, out PageCount, out RecordCount);
                    rptList.DataBind();
                    ltlNull.Text = "";
                }
                else
                {
                    rptList.DataSource = string.Empty;
                    rptList.DataBind();
                    ltlNull.Text = "暂无数据";
                }

                dt.Dispose();
            }
        }

    }
}