<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Diagnosis.aspx.cs" Inherits="LucentTechnologies.Doctors.Doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   
    <div class="page-header">
        <h3>Patient Diagnosis Registration Form</h3>
    </div>

         <ul class="nav nav-tabs"> 
         <li><a href="../Data_Manager/Patient_Registration.aspx">Patient Registration</a></li> 
         <li class="active"><a href="../Doctors/Diagnosis.aspx">Diagnosis Detail </a></li> 
         <li><a href="../Lab_Technicians/Laboratory.aspx">Laboratory Detail</a></li> 
         <li><a href="../Data_Manager/Birth.aspx">Birth Registration</a></li>
         <li><a href="../Data_Manager/Death.aspx">Death Registration</a></li>
         <li><a href="../Data_Manager/Payment.aspx">Payment Registration</a></li>
         <li><a href="../Data_Manager/General_Ward1.aspx">Admissions</a></li>
         </ul>

        <br />

    <div class="row">
        <div class="col-md-2">

        </div>
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
               
                </div>

                <div class="panel-body">
                    <div class="form-horizontal">

                        <div class="form-group">
                            <label for="patient_id"  class="col-sm-3 control-label">Patient ID</label>
                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="patient_id" CausesValidation="true" required="true" placeholder="Enter Patient ID" CssClass="form-control input-sm" />
                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator ControlToValidate="patient_id" runat="server" ForeColor="Red" CssClass="form-control input-sm" Display="Dynamic" ErrorMessage="*" ></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <asp:SqlDataSource runat="server" ID="StaffData" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="staff" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <div class="form-group">
                            <label for="staff_id" class="col-sm-3 control-label">Staff ID</label>
                            <div class="col-sm-6">
                                <asp:DropDownList runat="server" ID="staff_id" CausesValidation="true" CssClass="form-control input-sm" DataSourceID="StaffData" DataTextField="Staff" DataValueField="Staff">
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="staff_id" ForeColor="Red" CssClass="form-control input-sm" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="diagnosis_date" class="col-sm-3 control-label">Date of Diagnosis</label>
                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="diagnosis_date" required="true" CausesValidation="true" placeholder="Enter Patient Diagnosis Here" CssClass="form-control input-sm"  TextMode="Date" />
                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="diagnosis_date" ForeColor="Red" ErrorMessage="*" CssClass="form-control input-sm" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="diagnosis" class="col-sm-3 control-label">Diagnosis</label>
                            <div class="col-sm-9">
                                <asp:TextBox runat="server" ID="diagnosis" required="true" CausesValidation="true" placeholder="Enter Patient Diagnosis Here" CssClass="form-control input-sm" TextMode="MultiLine" />
                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="diagnosis" ForeColor="Red" ErrorMessage="*" CssClass="form-control input-sm" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="prescription" class="col-sm-3 control-label">Prescription</label>
                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="prescription" required="true" CausesValidation="true" placeholder="Enter Patient Prescription Here" CssClass="form-control input-sm" TextMode="MultiLine"  />
                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="prescription" ForeColor="Red" ErrorMessage="*" CssClass="form-control input-sm" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="panel-footer">
                    <div class="text-center">
                        <asp:Button runat="server" ID="save" Text="Save" Width="200" CssClass="btn btn-default" OnClick="save_Click" />
                        <asp:Button runat="server" ID="cancle" Text="Cancel" Width="200" CssClass="btn btn-default" OnClick="cancle_Click" />
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-1">

        </div>
    </div>
</asp:Content>

