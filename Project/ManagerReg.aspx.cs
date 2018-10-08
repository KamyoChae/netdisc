//修改
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Text.RegularExpressions;

namespace Project
{
    public partial class ManagerReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 按钮事件：提交信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            //验证重复
            if (DB.getDataTable("select * from Manager where ManagerName='" + ManagerName.Text.Trim() + "'").Rows.Count > 0)
            {
                ManagerName.Focus();
                JavaScriptHelper.Error(this, "此 帐号 已存在");
                return;
            }

            if (ManagerName.Text.Trim() == "") {
                ManagerName.Focus();
                JavaScriptHelper.Error(this, "账号不能为空！");
                return;
            }

            if (ManagerPwd.Text.Trim() == "" || SuerPwd.Text.Trim() == "")
            {
                ManagerName.Focus();
                JavaScriptHelper.Error(this, "登录密码和确认登录密码不能为空！请填写登录密码和确认登录密码！");
                return;
            }
            else
            {
                string managerPwd = ManagerPwd.Text;
                string suerPwd = SuerPwd.Text;
                if (managerPwd != suerPwd)
                {
                    JavaScriptHelper.Error(this,"登录密码和确认登录密码不一致，请检查！");
                }
                else
                {
                    Regex reg = new Regex("^[a-zA-Z0-9]{6,12}$", RegexOptions.IgnoreCase);
                    var size = suerPwd.ToUpper();


                    if (!reg.IsMatch(size))
                    {
                        Email.Focus();
                        JavaScriptHelper.Error(this, "密码格式不正确！");
                        return;
                    }
                }
            }

            if (Title.Text.Trim() == "")
            {
                ManagerName.Focus();
                JavaScriptHelper.Error(this, "名称不能为空！");
                return;
            }

            if (Email.Text.Trim() == "")
            {
                ManagerName.Focus();
                JavaScriptHelper.Error(this, "邮箱不能为空！");
                return;
            }
            else
            {
                string email = Email.Text;
                Regex reg = new Regex("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$", RegexOptions.IgnoreCase);
                var size = email.ToUpper();


                if (!reg.IsMatch(size))
                {
                    Email.Focus();
                    JavaScriptHelper.Error(this, "请输入正确格式的邮箱！");
                    return;
                }
            }

            string mobile = Tel.Text;
            if (mobile != "")
            {
                Regex reg = new Regex("^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$", RegexOptions.IgnoreCase);
                var size = mobile.ToUpper();

                if (!reg.IsMatch(size))
                {
                    Email.Focus();
                    JavaScriptHelper.Error(this, "请输入正确格式的手机号！");
                    return;
                }
            }

            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into Manager(");
            strSql.Append("Tel,ManagerPwd,ManagerName,Email,Title,RegTime,LoginCount,Grade");
            strSql.Append(") values (");
            strSql.Append("'" + Tel.Text + "','" + ManagerPwd.Text + "','" + ManagerName.Text + "','" + Email.Text + "','" + Title.Text + "',getdate(),0,2");
            strSql.Append(") "); 

            DB.ExecuteSql(strSql.ToString());


            JavaScriptHelper.Success(this, "注册成功，将转向登录页！", "SysManage/Login.aspx?grade=2");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            string strRedirectUrl = "/WebForm1.aspx";
            JavaScriptHelper.Redirect(strRedirectUrl);
        }
    }
}