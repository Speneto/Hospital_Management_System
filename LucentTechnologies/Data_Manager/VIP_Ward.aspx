<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VIP_Ward.aspx.cs" Inherits="LucentTechnologies.Data_Manager.VIP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div class="page-header">
        <h3>VIP Ward Registration Form</h3>
    </div>

    <ul class="nav nav-tabs"> 
         <li ><a href="General_Ward1.aspx">General Ward One</a></li>
         <li><a href="General_Ward2.aspx">General Ward Two</a></li>
         <li class="active"><a href="VIP_Ward.aspx">VIP Ward</a></li>
         <li><a href="../Reports/ReportsPage.aspx">Print</a></li>
         <li ><a href="Patient_Registration.aspx">Back to Main &raquo;</a></li>
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
                    <label for="patient_id" class="col-sm-3 control-label">Patient ID</label>
                    <div class="col-sm-6">
                        <asp:TextBox runat="server" ID="patient_id" CausesValidation="true" required="true" placeholder="Enter Patient ID" CssClass="form-control input-sm" />
                    </div>
                    <div class="col-sm-2">
                        <asp:RequiredFieldValidator ControlToValidate="patient_id" runat="server" ErrorMessage="*" SetFocusOnError="true"  ForeColor="Red" CssClass="form-control input-sm" Display="Dynamic"/>
                    </div>
                    </div>

                    <div class="form-group">
                        <label for="admission_date" class="col-sm-3 control-label">Admission Date</label>
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="admission_date" CausesValidation="true" required="true" TextMode="Date" CssClass="form-control input-sm" />
                            <ajaxToolkit:CalendarExtender runat="server" TargetControlID="admission_date" CssClass="btn btn-primary" />
                        </div>
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="admission_date" ErrorMessage="*" SetFocusOnError="true" ForeColor="Red" CssClass="form-control input-sm" Display="Dynamic" />
                        </div>
                    </div>
                    
                    <asp:SqlDataSource ID="StaffData" runat="server" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT [Staff_ID] FROM [Staff_View]"></asp:SqlDataSource>
                    <div class="form-group">
                        <label for="admitted_by" class="col-sm-3 control-label">Admitted By</label>
                        <div class="col-sm-6">
                            <asp:DropDownList runat="server" ID="admitted_by"  CausesValidation="True" CssClass="form-control input-sm" DataSourceID="StaffData" DataTextField="Staff_ID" DataValueField="Staff_ID" >
                                <asp:ListItem Text=""></asp:ListItem>

                            </asp:DropDownList>
                            
                        </div> 
                        <div class="clo-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="admitted_by" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true" CssClass="form-control input-sm" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="ward_name" class="col-sm-3 control-label">Ward Name</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="ward_name" runat="server" CausesValidation="true" required="true" CssClass="form-control input-sm" placeholder="Enter Ward Name" />
                        </div>
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ward_name" ErrorMessage="*" SetFocusOnError="true" CssClass="form-control input-sm" ForeColor="Red" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="bed_number" class="col-sm-3 control-label">Bed Number</label>
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="bed_number" CausesValidation="true" required="true" CssClass="form-control input-sm" placeholder="Enter Bed Number"/>
                        </div> 
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="bed_number" ErrorMessage="*" CssClass="form-control input-sm" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="discharge_date" class="col-sm-3 control-label">Discharge Date</label>
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="discharge_date" placeholder="Enter Discharge Date" TextMode="Date" CssClass="form-control input-sm" />
                            <ajaxToolkit:CalendarExtender runat="server" TargetControlID="discharge_date" CssClass="btn btn-primary" />
                        </div>
                        <div class="col-sm-2">

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-3 control-label">Patient Status</label>
                        <div class="col-sm-6">
                            <asp:DropDownList runat="server" ID="status" CssClass="form-control input-sm ">
                                <asp:ListItem Text="Select Status"></asp:ListItem>
                                <asp:ListItem Text="On Admission" Value="On Admission"></asp:ListItem>
                                <asp:ListItem Text="Discharged" Value="Discharged"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-2">

                        </div>
                    </div>




                </div>

            </div>

            <div class="panel-footer">
                <div class="text-center">
                    <asp:Button  runat="server" ID="save" CssClass="btn btn-default" Width="200" Text="Save" OnClick="save_Click"  />
                    <asp:Button runat="server" ID="cancle" CssClass="btn btn-default" Width="200" Text="Cancle" OnClick="cancle_Click1" />
                </div>

            </div>

        </div>
        </div>
        <div class="col-md-2">

        </div>
    </div>
</asp:Content>

