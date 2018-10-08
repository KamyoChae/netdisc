//修改
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Text.RegularExpressions;

namespace Project.SysManage
{
    public partial class ProductOper : ManagerBase
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Common.RequestInt("id");
            if (!IsPostBack)
            {
                DB.Bind_Dropdownlist("select * from FenLei", FenLei, "Id", "FenLeiName");
                if (id > 0)
                {
                    Get_Data();
                }
            }
        }

        void Get_Data()
        {
            DataTable dt = DB.getDataTable("select * from Product where Id=" + id);
            if (dt.Rows.Count == 1)
            {
                ProductName.Text = dt.Rows[0]["ProductName"].ToString();
                FenLei.SelectedValue = dt.Rows[0]["FenLeiId"].ToString();
                Content.Text = Common.ConvertStringToHtml(dt.Rows[0]["Content"].ToString());
                reName.Text = dt.Rows[0]["reName"].ToString();
                FileType.SelectedValue = dt.Rows[0]["FileType"].ToString();
                ltlPath.Text = dt.Rows[0]["sImg"].ToString();
                State.SelectedValue = dt.Rows[0]["State"].ToString();
                IsTJ.SelectedValue = dt.Rows[0]["IsTJ"].ToString();
            }
            
        }

        /// <summary>
        /// 按钮事件：提交信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string fileSize = reName.Text;
            
            Regex reg = new Regex("^(-?[0-9]+)(.[0-9]{1,10})?$", RegexOptions.IgnoreCase);
            var size = fileSize.ToUpper().Remove(fileSize.Length - 2);
           

            if (!(fileSize.ToUpper().EndsWith("KB")||
                fileSize.ToUpper().EndsWith("MB") ||
                fileSize.ToUpper().EndsWith("GB")) || 
                !reg.IsMatch(size))
            {

                reName.Focus();
                JavaScriptHelper.Error(this, "文件大小的格式应为：KB/MB/GB");
                return;
            }

            //验证重复
            if (id <= 0 && DB.getDataTable("select * from Product where ProductName='" + ProductName.Text.Trim() + "'").Rows.Count > 0)
            {
                ProductName.Focus();
                JavaScriptHelper.Error(this, "已存在");
                return;
            }

            StringBuilder strSql = new StringBuilder();
            string simg = string.Empty;

            if (id <= 0)//添加
            {
                simg = Common.UploadFile(FileUpload1, this.Page, "false");
                    if (simg == "false")
                        return;

                strSql.Append("insert into Product(");
                strSql.Append("ProductName,FenLeiId,FenLeiName,Content,AddTime,Hits,reName,FileType,sImg,State,UserId,UserName,zanNum,IsTJ");
                strSql.Append(") values (");
                strSql.Append("'" + ProductName.Text + "','" + FenLei.SelectedValue + "','" + FenLei.SelectedItem.Text + "','" + Common.ConvertHtmlToString(Content.Text) + "',getdate(),0");
                strSql.Append(",'" + reName.Text + "','" + FileType.SelectedValue + "','" + simg + "','" + State.SelectedValue + "','" + mbId + "','" + mbTrueName + "',0,'" + IsTJ.SelectedValue + "') ");
            }
            else//修改
            {
                if (FileUpload1.HasFile)
                    simg = Common.UploadFile(FileUpload1, this.Page, "false");
                else
                    simg = ltlPath.Text;

                strSql.Append("update Product set ");

                strSql.Append(" ProductName = '" + ProductName.Text.Trim() + "'");
                strSql.Append(" ,FenLeiId = '" + FenLei.SelectedValue + "'");
                strSql.Append(" ,FenLeiName = '" + FenLei.SelectedItem.Text + "'");
                strSql.Append(" ,Content = '" + Common.ConvertHtmlToString(Content.Text) + "'");
                strSql.Append(" ,reName = '" + reName.Text + "'");
                strSql.Append(" ,FileType = '" + FileType.SelectedValue + "'");
                strSql.Append(" ,simg = '" + simg + "'");
                strSql.Append(" ,State = '" + State.SelectedValue + "'");
                strSql.Append(" ,IsTJ = '" + IsTJ.SelectedValue + "'");

                strSql.Append(" where Id= " + id);
            }
            DB.ExecuteSql(strSql.ToString());

            JavaScriptHelper.Success(this, "保存成功", "ProductManage.aspx");
        }
    }
}