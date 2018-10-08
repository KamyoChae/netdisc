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
    public partial class NewsOper : ManagerBase
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Common.RequestInt("id");
            if (!IsPostBack)
            {
                if (id > 0)
                {
                    Get_Data();
                }
                else
                    Image1.Visible = false;
            }
        }

        void Get_Data()
        {
            DataTable dt = DB.getDataTable("select * from News where Id=" + id);
            if (dt.Rows.Count == 1)
            {
                Title.Text = dt.Rows[0]["Title"].ToString();
                NewsType.SelectedValue = dt.Rows[0]["TypeId"].ToString();
                Content.Text = Common.ConvertStringToHtml(dt.Rows[0]["Content"].ToString());

                if (!string.IsNullOrEmpty(dt.Rows[0]["sImg"].ToString()))
                    Image1.ImageUrl = dt.Rows[0]["sImg"].ToString();
                else
                    Image1.Visible = false;
            }
            
        }

        /// <summary>
        /// 按钮事件：提交信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            //验证重复
            if (id <= 0 && DB.getDataTable("select * from News where Title='" + Title.Text.Trim() + "'").Rows.Count > 0)
            {
                JavaScriptHelper.Error(this, "已存在");
                return;
            }

            StringBuilder strSql = new StringBuilder();
            string simg = string.Empty;

            if (id <= 0)//添加
            {
                if (FileUpload1.HasFile)
                {
                    simg = Common.UploadImg(FileUpload1, this.Page, "false");
                    if (simg == "false")
                        return;
                }

                strSql.Append("insert into News(");
                strSql.Append("Title,TypeId,TypeName,Content,AddTime,Hits,simg");
                strSql.Append(") values (");
                strSql.Append("'" + Title.Text + "','" + NewsType.SelectedValue + "','" + NewsType.SelectedItem.Text + "','" + Common.ConvertHtmlToString(Content.Text) + "',getdate(),123,'" + simg + "'");
                strSql.Append(") ");
            }
            else//修改
            {
                if (FileUpload1.HasFile)
                    simg = Common.UploadImg(FileUpload1, this.Page, "false");
                else
                    simg = Image1.ImageUrl;

                strSql.Append("update News set ");

                strSql.Append(" Title = '" + Title.Text.Trim() + "'");
                strSql.Append(" ,TypeId = '" + NewsType.SelectedValue + "'");
                strSql.Append(" ,TypeName = '" + NewsType.SelectedItem.Text + "'");
                strSql.Append(" ,Content = '" + Common.ConvertHtmlToString(Content.Text) + "'");
                strSql.Append(" ,simg = '" + simg + "'");

                strSql.Append(" where Id= " + id);
            }
            DB.ExecuteSql(strSql.ToString());

            JavaScriptHelper.Success(this, "保存成功", "NewsManage.aspx");
        }
    }
}