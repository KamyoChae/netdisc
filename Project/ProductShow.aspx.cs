using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Project
{
    public partial class ProductShow : System.Web.UI.Page
    {
        protected int id;
        protected string simg, state;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Common.RequestInt("id");
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
            var dr = DB.getDataReader("select * from Product where Id=" + id);
            if (dr.Read())
            {
                productname.Text = dr["ProductName"].ToString();
                reName.Text = dr["reName"].ToString();
                FileType.Text = dr["FileType"].ToString();
                content.Text = Common.ConvertStringToHtml(dr["Content"].ToString());
                hits.Text = dr["Hits"].ToString();
                simg = dr["simg"].ToString();
                zanNum.Text = dr["zanNum"].ToString();
                FenLeiName.Text = dr["FenLeiName"].ToString();

                //更新浏览量
                //DB.ExecuteSql("update Product set Hits=Hits+1 where Id=" + id);

                if (Request.Cookies["logininfo"] == null)
                {
                    btnSave.Enabled = false;
                    btnSave.Text = "请先登录才能评论！！";
                }
                else
                    PingJiaUser.Text = new ManagerBase().mbUserName;

                rptList.DataSource = DB.getDataTable("select * from PingJia where IsAudit=1 and InfoId=" + id + " order by Id desc");
                rptList.DataBind();
            }
        }

        /// <summary>
        /// 按钮事件：下载信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnGuanZhu_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["logininfo"] != null)
            {
                int memberid = new ManagerBase().mbId;
                string content = "";
                var dt = DB.getDataTable("select * from GuanZhu where memberid=" + memberid + " and InfoId=" + id);
                if (dt.Rows.Count == 0)
                {
                    content = "<a href=\"/ProductShow.aspx?id=" + id + "\" target=\"_blank\">" + productname.Text + "</a>";
                    DB.ExecuteSql("insert into GuanZhu values('" + memberid + "','" + content + "','" + id + "',getdate())");
                }

                var dr = DB.getDataReader("select * from Product where Id=" + id);
                if (dr.Read())
                {
                    DB.ExecuteSql("update Product set Hits=Hits+1 where Id=" + id);
                    Response.Redirect(dr["simg"].ToString());
                }
            }
            else
            {
                JavaScriptHelper.Alert("请先登录。");
                return;
            }
        }


        /// <summary>
        /// 按钮事件：提交信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["logininfo"] == null)
            {
                return;
            }
            //int userid = new MemberBase().mbId;
            //string username = new MemberBase().mbUserName;

            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into PingJia(");
            strSql.Append("PingJiaUser,PingJiaContent,PingJiaTime,IsAudit,InfoId,InfoName,Xing");
            strSql.Append(") values (");
            strSql.Append("'" + PingJiaUser.Text + "','" + PingJiaContent.Text + "',getdate(),1,'" + id + "','" + productname.Text.Trim() + "','" + Xing.Text.Trim() + "'");
            strSql.Append(") ");

            DB.ExecuteSql(strSql.ToString());


            JavaScriptHelper.Success(this, "评论成功", Request.Url.AbsoluteUri);

        }

    }
}