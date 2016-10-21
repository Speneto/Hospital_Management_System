<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="General_Ward1_Update.aspx.cs" Inherits="LucentTechnologies.Record_Update.General_Ward1_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">

        <div class="page-header">
            <h4>Patients Ward Record Management</h4> 
        </div>
         
     <ul class="nav nav-tabs"> 
         <li class="active"><a href="General_Ward1_Update.aspx">General Ward One</a></li> 
         <li><a href="General_Ward2_Update.aspx">General Ward Two</a></li> 
         <li><a href="VIP_Ward_Update.aspx">VIP Ward One</a></li> 
         <li><a href="#">VIP Ward Two</a></li> 
         <li ><a href="Patient_Update.aspx">Back to Main &raquo;</a></li>
         
         </ul>
        <br />
        <div class="panel panel-default">
            
            <div class="panel-heading">
                <a class="btn btn-primary  btn-md disabled glyphicon-forward" href="#"  role="button"> General Ward 1 Records </a> 
                <asp:ValidationSummary runat="server" CssClass="alert alert-danger" ValidationGroup="group1" ShowMessageBox="true" ShowValidationErrors="true" HeaderText="Certain Fields are Required, Please Review your entry and try again." />
            </div>
            <div class="panel-body">

                <div class="well well-lg pre-scrollable">

                    <asp:ListView ID="ListView1" runat="server" DataSourceID="ward1" DataKeyNames="ID">
                        <AlternatingItemTemplate>
                            <tr style="" class="success">
                               
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Admission_Date") %>' runat="server" ID="Admission_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Admitted_By") %>' runat="server" ID="Admitted_ByLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Ward_Name") %>' runat="server" ID="Ward_NameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Bed_Number") %>' runat="server" ID="Bed_NumberLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Discharge_Date") %>' runat="server" ID="Discharge_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Status") %>' runat="server" ID="StatusLabel" /></td>

                                 <td>
                                   
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary btn-sm" />
                                      <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm"  OnClick="DeleteButton_Click"/>

                                     
                     <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                   <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                        <strong> You are about to Delete this Patient Ward Record, Once Deleted u cannot undo it. </strong>
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
                                    <asp:Label Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Admission_Date") %>' runat="server" ID="Admission_DateTextBox" required="true" CausesValidation="true" CssClass="form-control input-sm" />
                                    <ajaxToolkit:CalendarExtender runat="server" CssClass="btn btn-primary" TargetControlID="Admission_DateTextBox" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Admission_DateTextBox" SetFocusOnError="true" ValidationGroup="group1" />

                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Admitted_By") %>' runat="server" ID="Admitted_ByTextBox" required="true" CssClass="form-control input-sm" CausesValidation="true" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Admitted_ByTextBox" ValidationGroup="group1" SetFocusOnError="true" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Ward_Name") %>' runat="server" ID="Ward_NameTextBox" Width="140px" CssClass="form-control input-sm"  required="true" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Ward_NameTextBox" ValidationGroup="group1" SetFocusOnError="true" />

                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Bed_Number") %>' runat="server" ID="Bed_NumberTextBox" Width="120px" CssClass="form-control input-sm" required="true" TextMode="Number" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Bed_NumberTextBox" ValidationGroup="group1" SetFocusOnError="true" CssClass="has-warning" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Discharge_Date") %>' runat="server" ID="Discharge_DateTextBox" CssClass="form-control input-sm"  />
                                    <ajaxToolkit:CalendarExtender runat="server" CssClass="btn btn-primary" TargetControlID="Discharge_DateTextBox" />
                                   
                                </td>
                                <td>
                                    <asp:DropdownList Text='<%# Bind("Status") %>' runat="server" ID="StatusTextBox"  CssClass="form-control input-sm">
                                        <asp:ListItem Value="On Admission" Text="On Admission" />
                                        <asp:ListItem Value="Discharged" Text="Discharged" />
                                    </asp:DropdownList>
                                    
                                </td>

                                <td>
                                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" CssClass="btn btn-warning btn-sm" CausesValidation="true" ValidationGroup="group1" />
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
                                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("ID") %>' runat="server" ID="IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Admission_Date") %>' runat="server" ID="Admission_DateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Admitted_By") %>' runat="server" ID="Admitted_ByTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Ward_Name") %>' runat="server" ID="Ward_NameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Bed_Number") %>' runat="server" ID="Bed_NumberTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Discharge_Date") %>' runat="server" ID="Discharge_DateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Status") %>' runat="server" ID="StatusTextBox" /></td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="">
                               
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Admission_Date") %>' runat="server" ID="Admission_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Admitted_By") %>' runat="server" ID="Admitted_ByLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Ward_Name") %>' runat="server" ID="Ward_NameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Bed_Number") %>' runat="server" ID="Bed_NumberLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Discharge_Date") %>' runat="server" ID="Discharge_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Status") %>' runat="server" ID="StatusLabel" /></td>
                                 <td>
                                    
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton"  CssClass="btn btn-primary btn-sm" />
                                     <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm"  OnClick="DeleteButton_Click2"/>

                                     
                     <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                         <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                        <strong> You are about to Delete this Patient Birth Record, Once Deleted it cannot undo it. </strong>
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
                        <LayoutTemplate>
                            <table runat="server" Width="1400px" >
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                            <tr runat="server" style="">
                                                
                                                <th runat="server"></th>
                                                <th runat="server">PATIENT ID</th>
                                                <th runat="server">ADMISSION DATE</th>
                                                <th runat="server">ADMITTED BY</th>
                                                <th runat="server">WARD NAME</th>
                                                <th runat="server">BED NUMBER</th>
                                                <th runat="server">DISCHARGE DATE</th>
                                                <th runat="server">STATUS</th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                        <asp:DataPager runat="server" ID="DataPager1" >
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
                                    <asp:Label Text='<%# Eval("Admission_Date") %>' runat="server" ID="Admission_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Admitted_By") %>' runat="server" ID="Admitted_ByLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Ward_Name") %>' runat="server" ID="Ward_NameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Bed_Number") %>' runat="server" ID="Bed_NumberLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Discharge_Date") %>' runat="server" ID="Discharge_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Status") %>' runat="server" ID="StatusLabel" /></td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>


                    <asp:SqlDataSource runat="server" ID="ward1" ConnectionString='<%$ ConnectionStrings:Conn %>' DeleteCommand="DELETE FROM [ward_table] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [ward_table] ([Patient_ID], [Admission_Date], [Admitted_By], [Ward_Name], [Bed_Number], [Discharge_Date], [Status]) VALUES (@Patient_ID, @Admission_Date, @Admitted_By, @Ward_Name, @Bed_Number, @Discharge_Date, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ward_table]" UpdateCommand="UPDATE [ward_table] SET [Patient_ID] = @Patient_ID, [Admission_Date] = @Admission_Date, [Admitted_By] = @Admitted_By, [Ward_Name] = @Ward_Name, [Bed_Number] = @Bed_Number, [Discharge_Date] = @Discharge_Date, [Status] = @Status WHERE [ID] = @original_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Decimal"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Admission_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Admitted_By" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Ward_Name" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Bed_Number" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Discharge_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Status" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Admission_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Admitted_By" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Ward_Name" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Bed_Number" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Discharge_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Status" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ID" Type="Decimal"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>



            </div>

        </div>

    </div>
</asp:Content>

