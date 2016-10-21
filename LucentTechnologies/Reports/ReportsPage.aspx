<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportsPage.aspx.cs" Inherits="LucentTechnologies.Reports.ReportsPage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="page-header">
            <h4>Report Printing Panel</h4>
        </div>

        <!--
         <ul class="nav nav-tabs"> 
         <li><a href="../Data_Manager/Patient_Registration.aspx">Patient Registration</a></li> 
         <li><a href="../Doctors/Diagnosis.aspx">Diagnosis Detail </a></li> 
         <li><a href="../Lab_Technicians/Laboratory.aspx">Laboratory Detail</a></li> 
         <li><a href="../Data_Manager/Birth.aspx">Birth Registration</a></li>
         <li><a href="../DataManager/Death.aspx">Death Registration</a></li>
         <li><a href="../Data_Manager/Payment.aspx">Payment </a></li>
         <li><a href="../Data_Manager/General_Ward1.aspx">Admissions</a></li>
         <li class="active"><a href="ReportsPage.aspx">Print</a></li>
         </ul>-->

        <br />


        <div class="row">
            <div class="col-sm-4">

            </div>
            <div class="col-sm-6">
                <div class=" btn-group-lg ">
                    <p><asp:Button runat="server" ID="new_patient" CssClass="btn btn-lg btn-primary btn-block" Text="Print New Patient Investigation Form" /></p>
                   
                     <p><asp:Button runat="server" ID="existing_patient" CssClass="btn btn-lg btn-primary btn-block" Text="Print Existing Patient Investigation Form" /></p>
                   <p> <asp:Button runat="server" ID="DgReport" CssClass="btn btn-lg btn-primary btn-block" Text="Print Patient Diagnosis Report" /></p>
                    <p><asp:Button runat="server" ID="payment" CssClass="btn btn-lg btn-primary btn-block" Text="Print Patient Payment Report" /></p>
                     <p><asp:Button runat="server" ID="new_receipt" CssClass="btn btn-lg btn-primary btn-block" Text="Print Patient Payment Receipt" /></p>

                </div>
   <!--New Patient Report-->
     <asp:Panel runat="server" ID="panel1"  style="display:none; " CssClass="" Width="950px"  >
            <iframe class=" modal-content" style="  width:950px; height:500px" id="ifm1"  src="../Reports/PatientR.aspx" runat="server" ></iframe>
            <br />
            <asp:Button runat="server" ID="bt2"  Text="Close" CssClass="btn btn-sm btn-danger"/>
        </asp:Panel>
        <ajaxToolkit:ModalPopupExtender runat="server" ID="pop"  DropShadow="true"  TargetControlID="new_patient" CancelControlID="bt2" PopupControlID="panel1" ></ajaxToolkit:ModalPopupExtender>
      
       <!--Patient Diagnosis Report-->         
       <asp:Panel runat="server" ID="panel2"  style="display:none; " CssClass="" Width="950px"  >
            <iframe class=" modal-content" style="  width:950px; height:500px" id="Iframe1"  src="../Reports/DiagnosisR.aspx" runat="server" ></iframe>
            <br />
            <asp:Button runat="server" ID="bt3"  Text="Close" CssClass="btn btn-sm btn-danger"/>
        </asp:Panel>
        <ajaxToolkit:ModalPopupExtender runat="server" ID="Modal1"  DropShadow="true"  TargetControlID="DgReport" CancelControlID="bt3" PopupControlID="panel2" ></ajaxToolkit:ModalPopupExtender>
              
        
         <!--Patient Diagnosis Report-->         
       <asp:Panel runat="server" ID="panel3"  style="display:none; " CssClass="" Width="950px"  >
            <iframe class=" modal-content" style="  width:950px; height:500px" id="Iframe2"  src="../Reports/PaymentR.aspx" runat="server" ></iframe>
            <br />
            <asp:Button runat="server" ID="Btn4"  Text="Close" CssClass="btn btn-sm btn-danger"/>
        </asp:Panel>
        <ajaxToolkit:ModalPopupExtender runat="server" ID="Modal5"  DropShadow="true"  TargetControlID="payment" CancelControlID="bt3" PopupControlID="panel3" ></ajaxToolkit:ModalPopupExtender>
              



  <!--Old Patient Investigation Report-->         
       <asp:Panel runat="server" ID="panel4"  style="display:none; " CssClass="" Width="950px"  >
            <iframe class=" modal-content" style="  width:950px; height:500px" id="Iframe3"  src="../Reports/InvestigationForm.aspx" runat="server" ></iframe>
            <br />
            <asp:Button runat="server" ID="Butt1"  Text="Close" CssClass="btn btn-sm btn-danger"/>
        </asp:Panel>
        <ajaxToolkit:ModalPopupExtender runat="server" ID="Modal6"  DropShadow="true"  TargetControlID="existing_patient" CancelControlID="Butt1" PopupControlID="panel4" ></ajaxToolkit:ModalPopupExtender>
              
      <!-- Print Patient receipt -->
           <asp:Panel runat="server" ID="panel5" Style="display:none;" Width="950px">
               <iframe runat="server" class="modal-content" style="width:950px; height:500px" id="Iframe4"  src="~/Reports/PaymentReceipt.aspx" ></iframe>
               <br />
               <asp:Button runat="server" ID="Butt5" Text="Close" CssClass="btn btn-sm btn-danger" />
           </asp:Panel>
           <ajaxToolkit:ModalPopupExtender runat="server" ID="Modal7" DropShadow="true" TargetControlID="new_receipt" CancelControlID="Butt5" PopupControlID="panel5"></ajaxToolkit:ModalPopupExtender>

            </div>
            <div class="col-sm-3">

            </div>
        </div>



    </div>
</asp:Content>
