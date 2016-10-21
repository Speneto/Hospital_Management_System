<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VIP_Ward_Update.aspx.cs" Inherits="LucentTechnologies.Record_Update.VIP_Ward_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">

        <div class="page-header">
            <h4>Patients Ward Record Management</h4> 
        </div>
         
     <ul class="nav nav-tabs"> 
         <li ><a href="General_Ward1_Update.aspx">General Ward One</a></li> 
         <li><a href="General_Ward2_Update.aspx">General Ward Two</a></li> 
         <li class="active"><a href="VIP_Ward_Update.aspx">VIP Ward One</a></li> 
         <li><a href="#">VIP Ward Two</a></li> 
          <li ><a href="Patient_Update.aspx">Back to Main &raquo;</a></li>
         
         </ul>
        <br />
        <div class="panel panel-default">
            
            <div class="panel-heading">
                <a class="btn btn-primary  btn-md disabled glyphicon-forward" href="#"  role="button"> VIP Ward One Records </a> 
                <asp:ValidationSummary runat="server" CssClass="alert alert-danger" ValidationGroup="group1" ShowMessageBox="true" ShowValidationErrors="true" HeaderText="Certain Fields are Required, Please Review your entry and try again." />

            </div>
            <div class="panel-body">

                <div class="well well-lg pre-scrollable">

                    <asp:ListView ID="ListView1" runat="server" DataSourceID="vip1" DataKeyNames="ID">
                        <AlternatingItemTemplate>
                            <tr style="">
                                
                                
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
                                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm" OnClick="DeleteButton_Click" />
                                </td>

                  <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                     <strong> You are about to Delete all Records related to this Patient, Once Deleted you cannot undo it.</strong>
                        <br /><br />
                        <div style="text-align:center;">
                            <asp:Button ID="ButtonOk" runat="server" Text="Delete" CssClass="btn btn-danger" />
                            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                        </div>
                    </asp:Panel>


                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                
                                <td>
                                    
                                    <asp:Label Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Admission_Date") %>' runat="server" Width="130px" ID="Admission" CssClass="form-control input-sm" CausesValidation="true" />
                                    <ajaxToolkit:CalendarExtender runat="server" TargetControlID="Admission" CssClass="btn btn-primary" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Admission" ValidationGroup="group1"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Admitted_By") %>' runat="server" ID="Admitted_ByTextBox" CausesValidation="true" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Admitted_ByTextBox" SetFocusOnError="true" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Ward_Name") %>' runat="server" ID="Ward_NameTextBox" Width="100px" CausesValidation="true" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Ward_NameTextBox" ValidationGroup="groip1" SetFocusOnError="true" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Bed_Number") %>' runat="server" Width="100px" ID="Bed_NumberTextBox" CausesValidation="true" CssClass="form-control input-sm" TextMode="Number" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Bed_NumberTextBox" ValidationGroup="group1" SetFocusOnError="true" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Discharge_Date") %>'  Width="120px" runat="server" ID="Discharge_DateTextBox" CssClass="form-control input-sm" />
                                    <ajaxToolkit:CalendarExtender runat="server" TargetControlID="Discharge_DateTextBox"  CssClass="btn btn-primary"/>
                                </td>
                                <td>
                                    <asp:Dropdownlist Text='<%# Bind("Status") %>' runat="server" ID="StatusTextBox" CssClass="form-control input-sm" >
                                        <asp:ListItem Value="Discharged" Text="Discharged" />
                                        <asp:ListItem Value="On Admission" Text="On Admission" />
                                    </asp:Dropdownlist>

                                </td>
                                <td>
                                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton"  CssClass="btn btn-warning btn-sm" CausesValidation="true" ValidationGroup="group1"/>
                                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton"  CssClass="btn btn-primary btn-sm"/>
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td class="alert alert-danger">No data was returned.</td>
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
                                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm" OnClick="DeleteButton_Click1" />
                                </td>


                      <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                     <strong> You are about to Delete all Records related to this Patient, Once Deleted you cannot undo it.</strong>
                        <br /><br />
                        <div style="text-align:center;">
                            <asp:Button ID="ButtonOk" runat="server" Text="Delete" CssClass="btn btn-danger" />
                            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                        </div>
                    </asp:Panel>



                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" Width="1300px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                            <tr runat="server" style="">
                                                
                                                <th runat="server">Patient_ID</th>
                                                <th runat="server">Admission_Date</th>
                                                <th runat="server">Admitted_By</th>
                                                <th runat="server">Ward_Name</th>
                                                <th runat="server">Bed_Number</th>
                                                <th runat="server">Discharge_Date</th>
                                                <th runat="server">Status</th>
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


                    <asp:SqlDataSource runat="server" ID="vip1" ConnectionString='<%$ ConnectionStrings:Conn %>' DeleteCommand="DELETE FROM [ward_table3] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ward_table3] ([Patient_ID], [Admission_Date], [Admitted_By], [Ward_Name], [Bed_Number], [Discharge_Date], [Status]) VALUES (@Patient_ID, @Admission_Date, @Admitted_By, @Ward_Name, @Bed_Number, @Discharge_Date, @Status)" SelectCommand="SELECT * FROM [ward_table3]" UpdateCommand="UPDATE [ward_table3] SET [Patient_ID] = @Patient_ID, [Admission_Date] = @Admission_Date, [Admitted_By] = @Admitted_By, [Ward_Name] = @Ward_Name, [Bed_Number] = @Bed_Number, [Discharge_Date] = @Discharge_Date, [Status] = @Status WHERE [ID] = @ID">
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
                            <asp:Parameter Name="ID" Type="Decimal"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>



            </div>

        </div>

    </div>
</asp:Content>

