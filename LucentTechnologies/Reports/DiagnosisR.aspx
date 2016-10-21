<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiagnosisR.aspx.cs" Inherits="LucentTechnologies.Reports.DiagnosisR" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        
         
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       


         <div class="container">
        
        <div class="page-header"><h4>New Patiednt Printout for Investigation</h4></div>
     <div class="col-sm-1">

     </div>
       <div class="col-lg-11">
     <div class="panel panel-default">
        <div class="">
            <!--Viewer-->
            <div class="panel-body">
                <div class="pre-scrollable" >
               
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server"  ProcessingMode="Remote" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="900px" Height="500px">
                  <ServerReport ReportPath="/WhiteBox_Report/DiagnosisDetails"></ServerReport>
  </rsweb:ReportViewer>
              </div>
            </div>
       </div>

     </div>
    </div>
        <div class="col-sm-1">

        </div>


    </div>

        
    </form>
</body>
</html>
