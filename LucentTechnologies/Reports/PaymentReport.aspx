<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentReport.aspx.cs" Inherits="LucentTechnologies.Reports.PaymentReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header"><h4>Payment Receipt Printing</h4></div>

        <div class=" col-md-1">

        </div>
        <div class="col-lg-11">
            

           
            <div class="panel panel-default">
                

                <div class="panel-body" >
                    <div class="pre-scrollable">
                        <rsweb:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote"  Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" Height="600px" Width="900px" WaitMessageFont-Size="14pt">
                            <ServerReport ReportPath="/WhiteBox_Report/Payment_Receipt"></ServerReport>
                        </rsweb:ReportViewer>
                </div>
               </div>


            </div>

        </div> 

        <div class="col-md-1">

        </div>


    </div>
</asp:Content>

