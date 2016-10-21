<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Birth_Update.aspx.cs" Inherits="LucentTechnologies.Record_Update.Birth_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h4>Patient Birth Details Management</h4>
        </div>
        
         <ul class="nav nav-tabs"> 
         <li><a href="Patient_Update.aspx">Patient Biodata</a></li> 
         <li><a href="Next_of_Kin.aspx">Next of Kin Biodata</a></li> 
         <li><a href="Diagnosis_Update.aspx">Patient Diagnosis Details</a></li> 
         <li><a href="Laboratory_Update.aspx">Patient Laboratory Details</a></li> 
              <li class="active"><a href="Birth_Update.aspx">Birth Record</a></li>
              <li><a href="Death_Update.aspx">Death Record</a></li>
             <li><a href="General_Ward1_Update.aspx">Addmissions</a></li>
         
         </ul>
        <br />

        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:ValidationSummary ID="update" runat="server" ValidationGroup="group11" CssClass="alert alert-danger" ShowValidationErrors="true" HeaderText="All Fields are required, Please review your entry" ShowMessageBox="true" />
            </div>

            <div class="panel-body">
                <div class="well well-lg pre-scrollable">



                    <asp:ListView ID="ListView1" runat="server" DataSourceID="birth" DataKeyNames="ID">
                        <AlternatingItemTemplate>
                            <tr style="" class="success">
                                
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Birth_Date") %>' runat="server" ID="Birth_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Time") %>' runat="server" ID="TimeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Infant_Gender") %>' runat="server" ID="Infant_GenderLabel" /></td>
                                <td>
                                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" OnClick="DeleteButton_Click1" />
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                                </td>
                                
                                
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



                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel1" /></td>
                                <td>
                                    <asp:Label Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" ID="Staff_IDTextBox" TextMode="SingleLine" CssClass="form-control input-sm" required="true" CausesValidation="true" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Staff_IDTextBox" ValidationGroup="group11" />

                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Birth_Date") %>' runat="server" ID="Birth_DateTextBox" class="form-control input-sm" CausesValidation="true" />
                                    <ajaxToolkit:CalendarExtender runat="server" ID="dt" CssClass="btn btn-primary glyphicon-calendar" TargetControlID="Birth_DateTextBox" Animated="true" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Birth_DateTextBox" ValidationGroup="group11" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Time") %>' runat="server" ID="TimeTextBox" TextMode="Time" required="true" CausesValidation="true" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TimeTextBox" ValidationGroup="group11" SetFocusOnError="true" />
                                </td>
                                <td>
                                    <asp:DropdownList Text='<%# Bind("Infant_Gender") %>' runat="server" ID="Infant_GenderTextBox" CausesValidation="true" CssClass="form-control input-sm" >
                                        <asp:ListItem Value="Male" Text="Male" />
                                        <asp:ListItem Value="Female" Text="Female" />
                                    </asp:DropdownList>
                                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Infant_GenderTextBox" ValidationGroup="group11" />
                                </td>

                                <td>
                                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton"  CssClass="btn btn-warning btn-sm" CausesValidation="true" ValidationGroup="group11"/>
                                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" CssClass="btn btn-primary btn-sm" />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="" class="table">
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
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" ID="Staff_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Birth_Date") %>' runat="server" ID="Birth_DateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Time") %>' runat="server" ID="TimeTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Infant_Gender") %>' runat="server" ID="Infant_GenderTextBox" /></td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="">
                                
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Birth_Date") %>' runat="server" ID="Birth_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Time") %>' runat="server" ID="TimeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Infant_Gender") %>' runat="server" ID="Infant_GenderLabel" /></td>

                                <td>
                                    
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary btn-sm" />
                                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm" OnClick="DeleteButton_Click" />
                                </td>

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


                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" Width="1000px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                            <tr runat="server" style="">
                                                
                                                <th runat="server"></th>
                                                <th runat="server">PATIENT ID</th>
                                                <th runat="server">STAFF ID</th>
                                                <th runat="server">BIRTH DATE</th>
                                                <th runat="server">TIME</th>
                                                <th runat="server">INFANT GENDER</th>
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
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Birth_Date") %>' runat="server" ID="Birth_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Time") %>' runat="server" ID="TimeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Infant_Gender") %>' runat="server" ID="Infant_GenderLabel" /></td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>













                    <asp:SqlDataSource runat="server" ID="birth" ConnectionString='<%$ ConnectionStrings:Conn %>' DeleteCommand="DELETE FROM [birth_table] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [birth_table] ([Patient_ID], [Staff_ID], [Birth_Date], [Time], [Infant_Gender]) VALUES (@Patient_ID, @Staff_ID, @Birth_Date, @Time, @Infant_Gender)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [birth_table]" UpdateCommand="UPDATE [birth_table] SET [Patient_ID] = @Patient_ID, [Staff_ID] = @Staff_ID, [Birth_Date] = @Birth_Date, [Time] = @Time, [Infant_Gender] = @Infant_Gender WHERE [ID] = @original_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ID" Type="Decimal"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Staff_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Birth_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Time" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Infant_Gender" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Staff_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Birth_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Time" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Infant_Gender" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ID" Type="Decimal"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>





    </div>
</asp:Content>

