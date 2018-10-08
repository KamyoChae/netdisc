using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project.SysManage
{
    public partial class GuanZhuList : ManagerBase
    {
        protected int PageSize = 12;
        protected int PageCount;
        protected int RecordCount;
        protected int CurrentPage;//当前页
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get_Data();
            }
        }

        private void Get_Data()
        {
            string where = "1=1";
            if (mbGrade == 2)
                where += " and MemberId=" + mbId;


            DataTable dt = DB.GetListByPage("GuanZhu", "Id", where, "Id", 1, 1, 1, out PageCount, out RecordCount);
            if (dt.Rows.Count > 0)
            {
                CurrentPage = PagingHelper.getPage(PageCount);//当前页
                rptList.DataSource = DB.GetListByPage("GuanZhu", "*", where, "Id", 1, PageSize, CurrentPage, out PageCount, out RecordCount);
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