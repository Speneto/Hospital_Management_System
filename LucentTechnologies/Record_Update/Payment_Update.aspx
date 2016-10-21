<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment_Update.aspx.cs" Inherits="LucentTechnologies.Record_Update.Payment_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h4>Payment Record Management</h4>
        </div>


        <div class="panel panel-default">

            <div class="panel-heading">
                <asp:ValidationSummary runat="server" ValidationGroup="group1" ShowMessageBox="true" HeaderText="Some Fields are Required and Cannot be empty, Please review your entry and try again" ShowValidationErrors="true" CssClass="alert alert-danger" />
            </div>

            <div class="panel-body">
                <div class="well well-lg pre-scrollable">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID">
                        <AlternatingItemTemplate>
                            <tr style="">
                                
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Payer_Fullname") %>' runat="server" ID="Payer_FullnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Amount_Paid") %>' runat="server" ID="Amount_PaidLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Balance") %>' runat="server" ID="BalanceLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Payment_Method") %>' runat="server" ID="Payment_MethodLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Payment_Date") %>' runat="server" ID="Payment_DateLabel" /></td>
                                <td>
                                   
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary btn-sm" />
                                     <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" OnClick="DeleteButton_Click" CssClass="btn btn-danger btn-sm" />
                                </td>


                                                   
              <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                         <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                     <strong> You are about to Delete Patient Payment Details, Once Deleted you cannot undo it.</strong>
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
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel1" /></td>
                                <td>
                                    <asp:Label Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDLabel"  /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" Width="120px" ID="Staff_IDTextBox" CssClass="form-control input-sm" CausesValidation="true" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Staff_IDTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Payer_Fullname") %>' runat="server" ID="Payer_FullnameTextBox" Width="170px" TextMode="SingleLine" CssClass="form-control input-sm" CausesValidation="true" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Payer_FullnameTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    
                                    <asp:TextBox Text='<%# Bind("Amount_Paid") %>' runat="server" ID="Amount_PaidTextBox" Width="120px" TextMode="SingleLine" CssClass="form-control input-sm" CausesValidation="true" />
                                    
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Amount_PaidTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Balance") %>' runat="server" ID="BalanceTextBox" Width="120px" CssClass="form-control input-sm" /></td>
                                <td>
                                    <asp:DropdownList Text='<%# Bind("Payment_Method") %>' runat="server" Width="130px" ID="Payment_MethodTextBox" CssClass="form-control input-sm" >
                                        <asp:ListItem Value="Cash" Text="Cash"   />
                                        <asp:ListItem Value="Cheque" Text="Cheque" />
                                        <asp:ListItem Value="Inter Bank Transfer" />
                                        <asp:ListItem Value="POS" Text="POS" />
                                    </asp:DropdownList>

                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Payment_Date") %>' runat="server" Width="150px" ID="Payment_DateTextBox" CausesValidation="true"  CssClass="form-control" />
                                    <ajaxToolkit:CalendarExtender runat="server" TargetControlID="Payment_DateTextBox" CssClass="btn btn-primary glyphicon-calendar " />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Payment_DateTextBox" ValidationGroup="group1" />
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
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" ID="Staff_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Payer_Fullname") %>' runat="server" ID="Payer_FullnameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Amount_Paid") %>' runat="server" ID="Amount_PaidTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Balance") %>' runat="server" ID="BalanceTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Payment_Method") %>' runat="server" ID="Payment_MethodTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Payment_Date") %>' runat="server" ID="Payment_DateTextBox" /></td>
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
                                    <asp:Label Text='<%# Eval("Payer_Fullname") %>' runat="server" ID="Payer_FullnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Amount_Paid") %>' runat="server" ID="Amount_PaidLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Balance") %>' runat="server" ID="BalanceLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Payment_Method") %>' runat="server" ID="Payment_MethodLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Payment_Date") %>' runat="server" ID="Payment_DateLabel" /></td>

                                 <td>
                                    
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary btn-sm" />
                                     <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm" OnClick="DeleteButton_Click1" />
                                </td>

                                                   
              <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                         <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                     <strong> You are about to Delete Patient Payment Details, Once Deleted you cannot undo it.</strong>
                        <br /><br />
                        <div style="text-align:center;">
                            <asp:Button ID="ButtonOk" runat="server" Text="Delete" CssClass="btn btn-danger" />
                            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                        </div>
                    </asp:Panel>

                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" Width="1550px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                            <tr runat="server" style="">
                                              
                                                <th runat="server"></th>
                                                <th runat="server">PATIENT ID</th>
                                                <th runat="server">STAFF ID</th>
                                                <th runat="server">PAYER FULNNAME</th>
                                                <th runat="server">AMOUNT PAID</th>
                                                <th runat="server">BALANCE</th>
                                                <th runat="server">PAYMENT METHOD</th>
                                                <th runat="server">PAYMENT DATE</th>
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
                                    <asp:Label Text='<%# Eval("Payer_Fullname") %>' runat="server" ID="Payer_FullnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Amount_Paid") %>' runat="server" ID="Amount_PaidLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Balance") %>' runat="server" ID="BalanceLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Payment_Method") %>' runat="server" ID="Payment_MethodLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Payment_Date") %>' runat="server" ID="Payment_DateLabel" /></td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Conn %>' DeleteCommand="DELETE FROM [payment_table] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [payment_table] ([Patient_ID], [Staff_ID], [Payer_Fullname], [Amount_Paid], [Balance], [Payment_Method], [Payment_Date]) VALUES (@Patient_ID, @Staff_ID, @Payer_Fullname, @Amount_Paid, @Balance, @Payment_Method, @Payment_Date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [payment_table]" UpdateCommand="UPDATE [payment_table] SET [Patient_ID] = @Patient_ID, [Staff_ID] = @Staff_ID, [Payer_Fullname] = @Payer_Fullname, [Amount_Paid] = @Amount_Paid, [Balance] = @Balance, [Payment_Method] = @Payment_Method, [Payment_Date] = @Payment_Date WHERE [ID] = @original_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Decimal"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Staff_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Payer_Fullname" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Amount_Paid" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Balance" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Payment_Method" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Payment_Date" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Staff_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Payer_Fullname" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Amount_Paid" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Balance" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Payment_Method" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Payment_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ID" Type="Decimal"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

        </div>

    </div>
</asp:Content>

