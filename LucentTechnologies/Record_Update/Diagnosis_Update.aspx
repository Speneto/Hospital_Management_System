<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Diagnosis_Update.aspx.cs" Inherits="LucentTechnologies.Record_Update.Diagnosis_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header"><h4>Patient Diagnosis Data Management</h4></div>

         <ul class="nav nav-tabs"> 
         <li><a href="Patient_Update.aspx">Patient Biodata</a></li> 
         <li><a href="Next_of_Kin.aspx">Next of Kin Biodata</a></li> 
         <li class="active"><a href="Diagnosis_Update.aspx">Patient Diagnosis Details</a></li> 
         <li><a href="Laboratory_Update.aspx">Patient Laboratory Details</a></li> 
         <li><a href="Birth_Update.aspx">Birth Record </a></li>
        <li><a href="Death_Update.aspx">Death Record</a></li>
             <li><a href="General_Ward1_Update.aspx">Addmissions</a></li>
         </ul>
        <br />


        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:ValidationSummary ID="update" runat="server" ValidationGroup="groupone" CssClass="alert alert-danger" ShowValidationErrors="true" HeaderText="All Fields are required, Please review your entry" ShowMessageBox="true" />
  
            </div>


            <div class="panel-body">
                
                <div class="well well-lg pre-scrollable prettyprint">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="diagnosisupdate" DataKeyNames="ID" EnableTheming="true">
                        <AlternatingItemTemplate>
                            <tr style="" class="success">
                     
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" Width="120px" ID="Patient_IDLabel" />
                                    
                                </td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" Width="120px" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis_Date") %>' runat="server" Width="120px" ID="Diagnosis_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis") %>' runat="server" ID="DiagnosisLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Prescription") %>' runat="server" ID="PrescriptionLabel" /></td>

                                <td>
                                     
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary btn-sm" />
                                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm" OnClick="DeleteButton_Click1" />





               <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                         <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                        <strong> You are about to Delete this Patient Diagnosis Record, Once Deleted it cannot undo it. </strong>
                        <br />
                        <br />
                        <div style="text-align:center;">
                            <asp:Button ID="ButtonOk" runat="server" Text="Delete" CssClass="btn btn-danger" />
                            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                        </div>
                    </asp:Panel>











                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                     
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel1" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Patient_ID") %>' runat="server" Width="120px" ID="Patient_ID" CssClass="form-control has-warning input-sm" CausesValidation="true"   />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Patient_ID" ValidationGroup="groupone" EnableViewState="true"  ></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" Width="120px" ID="Staff_ID" CssClass="form-control input-sm" CausesValidation="true"  />
                                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Staff_ID" ValidationGroup="groupone" ></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Diagnosis_Date") %>' runat="server" Width="150px"  ID="Diagnosis_DateTextBox" CssClass="form-control input-sm" CausesValidation="true" />
                                     <ajaxToolkit:CalendarExtender CssClass="btn btn-primary glyphicon-calendar"   runat="server" TargetControlID="Diagnosis_DateTextBox"   />
                                      <asp:RequiredFieldValidator runat="server" ControlToValidate="Diagnosis_DateTextBox" ValidationGroup="groupone"  ></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Diagnosis") %>' runat="server" ID="DiagnosisTextBox" CssClass="form-control input-sm" CausesValidation="true" TextMode="MultiLine"  />
                                     <asp:RequiredFieldValidator runat="server" ControlToValidate="DiagnosisTextBox" ValidationGroup="groupone"  ></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Prescription") %>' runat="server" ID="PrescriptionTextBox" CssClass="form-control input-sm" CausesValidation="true" TextMode="MultiLine"  />
                                     <asp:RequiredFieldValidator runat="server" ControlToValidate="PrescriptionTextBox" ValidationGroup="groupone"  ></asp:RequiredFieldValidator>
                                </td>

                                <td>
                                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" CssClass="btn btn-warning btn-sm" CausesValidation="true" ValidationGroup="groupone" />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" CssClass="btn btn-primary btn-sm" />
                                </td>
                               
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                
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

                                <td>
                                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton"  />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="">
                     
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" Width="120px" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" Width="120px" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis_Date") %>' runat="server" ID="Diagnosis_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Diagnosis") %>' runat="server" ID="DiagnosisLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Prescription") %>' runat="server" ID="PrescriptionLabel" /></td>

                                <td >
                                    
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary icon-bar btn-sm" />
                                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm" OnClick="DeleteButton_Click" />


                     <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                         <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                          <strong> You are about to Delete this Patient Diagnosis Record, Once Deleted it cannot undo it. </strong>
                        <br />
                        <br />
                        <div style="text-align:center;">
                            <asp:Button ID="ButtonOk" runat="server" Text="Delete" CssClass="btn btn-danger" />
                            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                        </div>
                    </asp:Panel>
                        















                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate >
                            <table runat="server" Width="1400px"  >
                                <tr runat="server" >
                                    <td runat="server" >
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0"  Class="table table-bordered" >
                                            <tr runat="server" style=""  >
                                              
                                                <th runat="server" ></th>
                                                <th runat="server" >PATIENT ID</th>
                                                <th runat="server" >STAFF ID</th>
                                                <th runat="server" >DIAGNOSIS DATE</th>
                                                <th runat="server" >DIAGNOSIS</th>
                                                <th runat="server" >PRESCRICPTION</th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                        <asp:DataPager runat="server" ID="DataPager1" class="pager">
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
                                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                                </td>
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
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


                    <asp:SqlDataSource runat="server" ID="diagnosisupdate" ConnectionString='<%$ ConnectionStrings:Conn %>' DeleteCommand="DELETE FROM [patient_diagnosis] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [patient_diagnosis] ([Patient_ID], [Staff_ID], [Diagnosis_Date], [Diagnosis], [Prescription]) VALUES (@Patient_ID, @Staff_ID, @Diagnosis_Date, @Diagnosis, @Prescription)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [patient_diagnosis]" UpdateCommand="UPDATE [patient_diagnosis] SET [Patient_ID] = @Patient_ID, [Staff_ID] = @Staff_ID, [Diagnosis_Date] = @Diagnosis_Date, [Diagnosis] = @Diagnosis, [Prescription] = @Prescription WHERE [ID] = @original_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Decimal"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Staff_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Diagnosis_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Diagnosis" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Prescription" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Staff_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Diagnosis_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Diagnosis" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Prescription" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ID" Type="Decimal"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>












        </div>
    </div>
</asp:Content>

