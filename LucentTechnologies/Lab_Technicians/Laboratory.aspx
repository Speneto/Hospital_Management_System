<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Laboratory.aspx.cs" Inherits="LucentTechnologies.Lab_Technicians.Laboratory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h3>Patient Laboratory Registration Form</h3>
        </div>

         <ul class="nav nav-tabs"> 
         <li><a  href="../Data_Manager/Patient_Registration.aspx">Patient Registration</a></li> 
         <li><a href="../Doctors/Diagnosis.aspx">Diagnosis Detail </a></li> 
         <li class="active"><a href="../Lab_Technicians/Laboratory.aspx">Laboratory Detail</a></li> 
         <li><a href="../Data_Manager/Birth.aspx">Birth Registration</a></li>
         <li><a href="../Data_Manager/Death.aspx">Death Registration</a></li>
         <li><a href="../Data_Manager/Payment.aspx">Payment Registration</a></li>
         <li><a  href="../Data_Manager/General_Ward1.aspx">Admissions</a></li>
         </ul>

        <br />
        <!--Panel -->
        <div class="panel panel-default">
            <div class="panel-heading">
                
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
               
            </div>
            <div class="panel-body">
                <table  class="table table-responsive" >
                    
                    <tr>
                        <td>
                            <asp:TextBox ID="patient_id" runat="server" CausesValidation="true" required="true" placeholder="Enter Patient Id" CssClass="form-control input-sm" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="patient_id" Display="Dynamic"  ErrorMessage="*" ForeColor="Red" SetFocusOnError="true" CssClass="form-control input-sm" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="test_date" CausesValidation="true" required="true" placeholder="Enter test date" CssClass="form-control input-sm" TextMode="Date" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="test_date" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true" CssClass="form-control input-sm"/>
                            <ajaxToolkit:CalendarExtender runat="server" TargetControlID="test_date" CssClass="btn btn-primary" />
                        </td>
                        <td>
                            <asp:SqlDataSource ID="staff_data" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [Staff_ID] FROM [Staff_View]"></asp:SqlDataSource>
                            <asp:DropDownList runat="server" ID="staff_id" CausesValidation="true" CssClass="form-control input-sm" DataSourceID="staff_data" DataTextField="Staff_ID" DataValueField="Staff_ID">
                                <asp:ListItem Text="" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr><td><b>Test Conducted</b></td></tr>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="test_1" CausesValidation="true" TextMode="MultiLine" required="true" placeholder="Enter Test One" CssClass="form-control input-sm" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="test_1" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" CssClass="form-control input-sm" />
                         </td>
                        <td>
                            <asp:TextBox runat="server" ID="test_2"  placeholder="Enter Test Two" TextMode="MultiLine"  CssClass="form-control input-sm" />
                        </td>
                       <td>
                            <asp:TextBox runat="server" ID="test_3"  placeholder="Enter Test Three" TextMode="MultiLine"  CssClass="form-control input-sm" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="test_4"  placeholder="Enter Test Four" TextMode="MultiLine"  CssClass="form-control input-sm" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="test_5"  placeholder="Enter Test Five" TextMode="MultiLine"  CssClass="form-control input-sm" />
                        </td>
                       
                    </tr>
                    <tr><td><b>Results Obtained</b></td></tr>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="result_1" CausesValidation="true" TextMode="MultiLine"  placeholder="Enter Result One" CssClass="form-control input-sm" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="result_2"  placeholder="Enter Result Two" TextMode="MultiLine"  CssClass="form-control input-sm" />
                        </td>
                       <td>
                            <asp:TextBox runat="server" ID="result_3"  placeholder="Enter Result Three" TextMode="MultiLine"  CssClass="form-control input-sm" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="result_4"  placeholder="Enter Result Four" TextMode="MultiLine"  CssClass="form-control input-sm" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="result_5"  placeholder="Enter Result Five" TextMode="MultiLine"  CssClass="form-control input-sm" />
                        </td>
                       
                    </tr>
                </table> 
            </div>
            <div class="panel-footer">
                <div class="text-center">
                    <asp:Button runat="server" ID="save" Text="Save Test" CssClass="btn btn-default" OnClick="save_Click" Width="200px" />
                    <asp:Button runat="server" ID="cancle" Text="Cancel" CssClass="btn btn-default"  Width="200px"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

