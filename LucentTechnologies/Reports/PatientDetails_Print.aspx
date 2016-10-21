<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientDetails_Print.aspx.cs" Inherits="LucentTechnologies.Reports.PatientDetails_Print" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   

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
                  <ServerReport ReportPath="/WhiteBox_Report/PatientPrintout"></ServerReport>
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

