using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Project.SysManage
{
    public partial class BakDB : ManagerBase
    {
        string dbname = "sj_webdata_db"; //数据库名
        string folder = "../dbbak/"; //备份路径
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get_Data();
            }
        }

        private void Get_Data()
        {
            string sdel = Request.QueryString["del"];
            if (!string.IsNullOrEmpty(sdel))
                File.Delete(Server.MapPath(folder + sdel));


            string pFilePath = Server.MapPath(folder);
            foreach (string file in Directory.GetFiles(pFilePath))
            {
                ltllist.Text += "" + Path.GetFileName(file) + "&nbsp;&nbsp;&nbsp;&nbsp;";
                ltllist.Text += "<a href='BakDB.aspx?del=" + Path.GetFileName(file) + "'><font color='red'>删除备份文件</font></a><br/>";
            }
        }

        /// <summary>
        /// 按钮事件：提交信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Directory.Exists(Server.MapPath(folder)))
                Directory.CreateDirectory(Server.MapPath(folder));

            string bakpath = folder + "db_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ".bak";
            DB.ExecuteSql("backup database " + dbname + " to disk='" + Server.MapPath(bakpath) + "'");


            JavaScriptHelper.Success(this, "备份成功", Request.Url.AbsoluteUri);
        }

    }
}