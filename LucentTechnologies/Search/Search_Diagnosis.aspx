<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search_Diagnosis.aspx.cs" Inherits="LucentTechnologies.Search.Search_Diagnosis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header"><h4>Patient Diagnosis Search</h4></div>


        <ul class="nav nav-tabs"> 
         <li ><a href="Search_Patient_Details.aspx">Patient Search</a></li> 
         <li class="active"><a href="Search_Diagnosis.aspx">Diagnosis Search</a></li> 
         <li><a href="Search_Lab_Details.aspx">Laboratory Search</a></li> 
         <li><a href="Search_InPatient.aspx">Ward Search</a></li> 
          <li><a href="Search_Payment.aspx">Payment Search</a></li>
         
         </ul>
        <br />


         <div class="form-inline">
            <div class="form-group ">
                   <label for="se" class="control-label">Patient Card Number </label>
                   <asp:TextBox runat="server" CssClass=" glyphicon-search form-control" TextMode="Search" ID="Search" placeholder="Patient Card Number " />
                   <asp:Button runat="server" ID="sh" CssClass="btn btn-primary" Text="Search" />

                </div>
            </div>
        <br />
        <div class="panel panel-default">
            <div class="panel-heading"></div>
            <div class="panel-body">
                <div class="well well-lg pre-scrollable">

                    <asp:ListView ID="ListView1" runat="server" DataSourceID="diagnosissearch">
                        <AlternatingItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis_Date") %>' runat="server" ID="Diagnosis_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis") %>' runat="server" ID="DiagnosisLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Prescription") %>' runat="server" ID="PrescriptionLabel" /></td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" ID="Staff_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Diagnosis_Date") %>' runat="server" ID="Diagnosis_DateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Diagnosis") %>' runat="server" ID="DiagnosisTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Prescription") %>' runat="server" ID="PrescriptionTextBox" /></td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="" class="table">
                                <tr >
                                    <td class="alert alert-danger">No data was returned. Please supply Patient Card Number to Search</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" ID="Staff_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Diagnosis_Date") %>' runat="server" ID="Diagnosis_DateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Diagnosis") %>' runat="server" ID="DiagnosisTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Prescription") %>' runat="server" ID="PrescriptionTextBox" /></td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis_Date") %>' runat="server" ID="Diagnosis_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis") %>' runat="server" ID="DiagnosisLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Prescription") %>' runat="server" ID="PrescriptionLabel" /></td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" Width="1100px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                            <tr runat="server" style="">
                                                <th runat="server">PATIENT ID</th>
                                                <th runat="server">STAFF ID</th>
                                                <th runat="server">DIAGNOSIS DATE</th>
                                                <th runat="server">DIAGNOSIS</th>
                                                <th runat="server">PRESCRIPTION</th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                        <asp:DataPager runat="server" ID="DataPager1">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-primary btn-sm" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis_Date") %>' runat="server" ID="Diagnosis_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis") %>' runat="server" ID="DiagnosisLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Prescription") %>' runat="server" ID="PrescriptionLabel" /></td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>

                    <asp:SqlDataSource runat="server" ID="diagnosissearch" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="Patient_Diagnosis_search" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Search" PropertyName="Text" Name="patient_id" Type="String"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

