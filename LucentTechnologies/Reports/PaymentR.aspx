<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentR.aspx.cs" Inherits="LucentTechnologies.Reports.PaymentR" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
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
    </div>
    </form>
</body>
</html>
