<%@ WebHandler Language="C#" Class="UpdateZan" %>

using System;
using System.Web;

public class UpdateZan : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string id = context.Request["id"];

        Project.DB.ExecuteSql("update Product set zanNum=zanNum+1 where Id=" + id);

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}
