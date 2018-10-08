using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project
{
    /// <summary>
    /// 登录用户基类
    /// </summary>
    public class MemberBase : System.Web.UI.Page
    {
        public int mbId;
        public string mbUserName;

        public MemberBase()
        {
            if (HttpContext.Current.Request.Cookies["member"] != null)
            {
                mbId = Convert.ToInt32(HttpContext.Current.Request.Cookies["member"]["Id"]);
                mbUserName = HttpContext.Current.Server.UrlDecode(HttpContext.Current.Request.Cookies["member"]["UserName"]);
            }
            else
            {
                HttpContext.Current.Response.Write("<script type='text/javascript'>alert('请先登录。');this.top.location.href= '/Member/Login.aspx';</script>");
                HttpContext.Current.Response.End();
            }
        }

    }
}