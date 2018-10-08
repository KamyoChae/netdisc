using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project
{
    public partial class NewsShow : System.Web.UI.Page
    {
        int id;
        protected string simg="";
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
            var dr = DB.getDataReader("select * from News where Id=" + id);
            if (dr.Read())
            {
                Title.Text = dr["Title"].ToString();
                AddTime.Text = Convert.ToDateTime(dr["AddTime"]).ToShortDateString();
                Content.Text = Common.ConvertStringToHtml(dr["Content"].ToString());
                Hits.Text = dr["Hits"].ToString();
                simg = dr["simg"].ToString();

                //更新浏览量
                DB.ExecuteSql("update News set Hits=Hits+1 where Id=" + id);


            }
        }

    }
}