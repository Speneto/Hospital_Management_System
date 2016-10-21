<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="DiagnosisPrint.aspx.cs" Inherits="LucentTechnologies.Reports.DiagnosisPrint" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        
        <div class="page-header"><h4>Patient Diagnosis and Prescription Details</h4></div>
     <div class="col-sm-1">

     </div>
       <div class="col-lg-11">
     <div class="panel panel-default">
        
        <div class="">
            <!--Viewer-->
            <div class="panel-body">
                <div class="pre-scrollable" >
               
                    <rsweb:ReportViewer runat="server" ProcessingMode="Remote" Font-Names="Verdana" Font-Size="8pt" ID="ctl00" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="900px" Height="500px" ShowPrintButton="true" >
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
    

</asp:Content>

