<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="LucentTechnologies.Data_Manager.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="page-header">
        <h3>Payment Regitration Form</h3>
    </div>

         <ul class="nav nav-tabs"> 
         <li><a href="Patient_Registration.aspx">Patient Registration</a></li> 
         <li><a href="../Doctors/Diagnosis.aspx">Diagnosis Detail </a></li> 
         <li><a href="../Lab_Technicians/Laboratory.aspx">Laboratory Detail</a></li> 
         <li><a href="Birth.aspx">Birth Registration</a></li>
         <li><a href="Death.aspx">Death Registration</a></li>
         <li class="active"><a href="Payment.aspx">Payment</a></li>
         <li><a href="General_Ward1.aspx">Admissions</a></li>
         <li><a href="../Reports/ReportsPage.aspx">Print</a></li>
         </ul>

        <br />

    <!-- Main Content-->
    <div class="row">
        <div class="col-md-2">

        </div>
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">
               
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
                </div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label for="patient_id" class=" col-sm-3 control-label">Patient ID</label>
                            <div  class="col-sm-6">
                                <asp:TextBox runat="server" ID="patient_id" CausesValidation="true" required="true" CssClass="form-control input-sm" placeholder="Enter Patient ID" />
                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="patient_id" ForeColor="Red" CssClass="form-control input-sm" Display="Dynamic" ErrorMessage="*" />
                            </div>
                        </div>

                        <asp:SqlDataSource runat="server" ID="StaffData" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [Staff_ID] FROM [Staff_View]"></asp:SqlDataSource>
                         <div class="form-group">
                        <label for="staff_id" class="col-sm-3 control-label">Staff ID</label>
                        <div class="col-sm-6">
                            <asp:DropDownList runat="server" ID="staff_id" CssClass="form-control input-sm" DataSourceID="StaffData" DataTextField="Staff_ID" DataValueField="Staff_ID">
                                
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="staff_id" ErrorMessage="*" ForeColor="Red" Display="Dynamic" CssClass="form-control input-sm" />
                        </div>
                    </div>

                        <div class="form-group">
                            <label for="payer_fullname"  class="col-sm-3 control-label">Payer FullName</label>
                            <div class="col-sm-6">
                                <asp:TextBox runat="server"  ID="payer_fullname" CausesValidation="true" required="true" placeholder="Enter Payer FullName" CssClass="form-control input-sm" />
                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="payer_fullname" ForeColor="Red" CssClass="form-control input-sm" Display="Dynamic" ErrorMessage="*" />
                            </div>
                        </div>

                        <div class="form-group">
                        <label for="amount_paid" class="col-sm-3 control-label">Amount Paid</label>
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="amount_paid" CausesValidation="true" CssClass="form-control input-sm" required="true" placeholder="Enter Amount Paid" />
                        </div> 
                        <div class="clo-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="amount_paid" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true" CssClass="form-control input-sm" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="balance" class="col-sm-3 control-label">Balance</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="balance" runat="server" CausesValidation="true" required="true" CssClass="form-control input-sm" placeholder="Balance" />
                        </div>
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="balance" ErrorMessage="*" SetFocusOnError="true" CssClass="form-control input-sm" ForeColor="Red" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="payment_method" class="col-sm-3 control-label">Payment Mathod</label>
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="payment_method" CausesValidation="true" required="true" CssClass="form-control input-sm" placeholder="Enter Payment Method"/>
                        </div> 
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="payment_method" ErrorMessage="*" CssClass="form-control input-sm" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="payment_date" class="col-sm-3 control-label">Payment Date</label>
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="payment_date" placeholder="Enter Discharge Date" TextMode="Date" CssClass="form-control input-sm" />
                            <ajaxToolkit:CalendarExtender runat="server"  Format="dd/MM/yyyy" TargetControlID="payment_date" CssClass="btn btn-primary" Animated="true" />
                        </div>
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="payment_date" ErrorMessage="*" CssClass="form-control input-sm" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" />
                        </div>
                    </div>

                   

                    </div>
                </div>
                <div class="panel-footer">
                    <div class="text-center">
                    <asp:Button  runat="server" ID="save" CssClass="btn btn-default" Width="200" Text="Save" OnClick="save_Click"  />
                    <asp:Button runat="server" ID="cancle" CssClass="btn btn-default" Width="200" Text="Cancle" OnClick="cancle_Click"  />
                </div>

                </div>
            </div>

        </div>
        <div class="col-md-2">

        </div>
    </div>
</asp:Content>

