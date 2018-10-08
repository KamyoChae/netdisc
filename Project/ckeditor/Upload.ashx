<%@ WebHandler Language="C#" Class="Upload" %>

using System;
using System.Web;

public class Upload : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");

        HttpPostedFile uploads = context.Request.Files["upload"];
        string CKEditorFuncNum = context.Request["CKEditorFuncNum"];
        string file = System.IO.Path.GetFileName(uploads.FileName);
        string fileFix = file.Remove(0, file.LastIndexOf(".")).ToLower();//文件扩展名

        //验证文件格式
        string chkfix = ".jpg,.gif,.png";
        if (chkfix.IndexOf(fileFix) < 0)
        {
            context.Response.Write("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(\"" + CKEditorFuncNum + "\",\"\",\"只能上传图片文件，格式为：jpg/gif/png\");</script>");
            context.Response.End();
        }

        //生成新文件名
        Random ran = new Random();
        string ranNum = ran.Next(100, 999).ToString();
        string t = DateTime.Now.ToString("yyyyMMddHHmmss") + ranNum.ToString() + fileFix;
        string folder = "/upload/";
        string filename = folder + t;

        //验证文件夹是否存在
        folder = context.Server.MapPath(folder);
        if (!System.IO.Directory.Exists(folder))
        {
            System.IO.Directory.CreateDirectory(folder);
        }

        //上传
        uploads.SaveAs(context.Server.MapPath(filename));
        context.Response.Write("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(\"" + CKEditorFuncNum + "\",\"" + filename + "\",\"图片上传成功！\");</script>");
        context.Response.End();
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}