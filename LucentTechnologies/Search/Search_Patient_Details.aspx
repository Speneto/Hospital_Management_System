<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search_Patient_Details.aspx.cs" Inherits="LucentTechnologies.Search.Search_Patient_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header"><h4>Patient Details Search</h4></div>

        <ul class="nav nav-tabs"> 
         <li  class="active"><a href="Search_Patient_Details.aspx">Patient Search</a></li> 
         <li><a href="Search_Diagnosis.aspx">Diagnosis Search</a></li> 
         <li><a href="Search_Lab_Details.aspx">Laboratory Search</a></li> 
         <li><a href="Search_InPatient.aspx">Ward Search</a></li> 
          <li ><a href="Search_Payment.aspx">Payment Search</a></li>
         
         </ul>
        <br />


        <div class="form-inline">
            <div class="form-group ">
                   <label for="se" class="control-label">Patient ID or Firstname</label> 
                   <asp:TextBox runat="server" CssClass=" glyphicon-search form-control " TextMode="Search" ID="Search" placeholder="Patient Card Number or Fisrtname" />
                   <asp:Button runat="server" ID="sh" CssClass="btn btn-primary" Text="Search" />

                </div>
            </div>
        <br />


        <div class="panel panel-default">
            <div class="panel-heading"></div>

            <div class="panel-body">
                <div class="well well-lg pre-scrollable">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="patientsearch" DataKeyNames="Patient_ID">
                        <AlternatingItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Firstname") %>' runat="server" ID="FirstnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Surname") %>' runat="server" ID="SurnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Gender") %>' runat="server" ID="GenderLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Age") %>' runat="server" ID="AgeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Marital_Status") %>' runat="server" ID="Marital_StatusLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Date1") %>' runat="server" ID="Date1Label" /></td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                                </td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel1" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Firstname") %>' runat="server" ID="FirstnameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Surname") %>' runat="server" ID="SurnameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Gender") %>' runat="server" ID="GenderTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Age") %>' runat="server" ID="AgeTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Marital_Status") %>' runat="server" ID="Marital_StatusTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Date1") %>' runat="server" ID="Date1TextBox" /></td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="" class="table">
                                <tr >
                                    <td class="alert alert-danger">No data was returned. Please Supply Patient Firstname or Card Number.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Firstname") %>' runat="server" ID="FirstnameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Surname") %>' runat="server" ID="SurnameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Gender") %>' runat="server" ID="GenderTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Age") %>' runat="server" ID="AgeTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Marital_Status") %>' runat="server" ID="Marital_StatusTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Date1") %>' runat="server" ID="Date1TextBox" /></td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Firstname") %>' runat="server" ID="FirstnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Surname") %>' runat="server" ID="SurnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Gender") %>' runat="server" ID="GenderLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Age") %>' runat="server" ID="AgeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Marital_Status") %>' runat="server" ID="Marital_StatusLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Date1") %>' runat="server" ID="Date1Label" /></td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" Width="1000px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                            <tr runat="server" style="">
                                                <th runat="server">PATIENT ID</th>
                                                <th runat="server">FIRSTNAME</th>
                                                <th runat="server">SURNAME</th>
                                                <th runat="server">GENDER</th>
                                                <th runat="server">AGE</th>
                                                <th runat="server">MARITAL STATUS</th>
                                                <th runat="server">DATE</th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Firstname") %>' runat="server" ID="FirstnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Surname") %>' runat="server" ID="SurnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Gender") %>' runat="server" ID="GenderLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Age") %>' runat="server" ID="AgeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Marital_Status") %>' runat="server" ID="Marital_StatusLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Date1") %>' runat="server" ID="Date1Label" /></td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource runat="server" ID="patientsearch" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="Patient_Detail_Search" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Search" PropertyName="Text" Name="Patient_Id"  Type="String"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

