<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Death_Update.aspx.cs" Inherits="LucentTechnologies.Record_Update.Death_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header"><h4>Patient Death Record Management</h4></div>

         <ul class="nav nav-tabs"> 
         <li><a href="Patient_Update.aspx">Patient Biodata</a></li> 
         <li><a href="Next_of_Kin.aspx">Next of Kin Biodata</a></li> 
         <li><a href="Diagnosis_Update.aspx">Patient Diagnosis Details</a></li> 
         <li><a href="Laboratory_Update.aspx">Patient Laboratory Details</a></li> 
          <li><a href="Birth_Update.aspx">Birth Record</a></li>
          <li class="active"><a href="Death_Update.aspx">Death Record</a></li>
          <li><a href="General_Ward1_Update.aspx">Addmissions</a></li>
         </ul>
        <br />

        <div class="panel panel-default">

            <div class="panel-heading">
                <asp:ValidationSummary runat="server" ValidationGroup="true" ShowValidationErrors="true" ShowMessageBox="true" HeaderText="All Fields are Required Please review your entry and Try again" />
            </div>

            <div class="panel-body">
                <div class="well well-lg pre-scrollable">

                    <asp:ListView runat="server" ID="deathlist" DataSourceID="death" DataKeyNames="ID">
                        <AlternatingItemTemplate>
                            <tr style="" class="success">
                               
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Staff_ID") %>' runat="server" ID="Staff_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Death_Date") %>' runat="server" ID="Death_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Time") %>' runat="server" ID="TimeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Death_Cause") %>' runat="server" ID="Death_CauseLabel" /></td>

                                 <td>
                                    
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton"  CssClass="btn btn-primary btn-sm"/>
                                     <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm" OnClick="DeleteButton_Click" />

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
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                
                                <td>
                                    <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel1" /></td>
                                <td>
                                    <asp:Label Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" ID="Staff_IDTextBox" CausesValidation="true" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Staff_IDTextBox" ValidationGroup="group1" SetFocusOnError="true" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Death_Date") %>' runat="server" ID="Death_DateTextBox" CssClass="form-control input-sm" />
                                    <ajaxToolkit:CalendarExtender runat="server" TargetControlID="Death_DateTextBox" CssClass="btn btn-primary glyphicon-calendar" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Death_DateTextBox" ValidationGroup="group1"  SetFocusOnError="true"/>
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Time") %>' runat="server" ID="TimeTextBox" TextMode="Time" CausesValidation="true" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TimeTextBox" ValidationGroup="group1" SetFocusOnError="true" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Death_Cause") %>' runat="server" ID="Death_CauseTextBox"  CssClass="form-control input-sm" TextMode="MultiLine" CausesValidation="true"/>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Death_CauseTextBox" ValidationGroup="group1" SetFocusOnError="true" />
                                </td>
                                <td>
                                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" CssClass="btn btn-warning btn-sm" CausesValidation="true" ValidationGroup="group1" />
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
                                <td>
                                    <asp:TextBox Text='<%# Bind("ID") %>' runat="server" ID="IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Staff_ID") %>' runat="server" ID="Staff_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Death_Date") %>' runat="server" ID="Death_DateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Time") %>' runat="server" ID="TimeTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Death_Cause") %>' runat="server" ID="Death_CauseTextBox" /></td>
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
                                    <asp:Label Text='<%# Eval("Death_Date") %>' runat="server" ID="Death_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Time") %>' runat="server" ID="TimeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Death_Cause") %>' runat="server" ID="Death_CauseLabel" /></td>

                                 <td>
                                    
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary" />
                                     <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton"  CssClass="btn btn-danger" OnClick="DeleteButton_Click1"/>

                                         <ajaxToolkit:ConfirmButtonExtender runat="server" ID="con1" TargetControlID="DeleteButton" OnClientCancel="cancelClick" DisplayModalPopupID="ModalPopupExtender1" />

                         <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="DeleteButton" PopupControlID="PNL" OkControlID="ButtonOk" CancelControlID="ButtonCancel" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PNL" runat="server"   Width="400px" CssClass="alert alert-danger">
                        <strong> You are about to Delete this Patient Birth Record, Once Deleted it cannot undo it. </strong>
                        <br />
                        <br />
                        <div style="text-align:center;">
                            <asp:Button ID="ButtonOk" runat="server" Text="Delete" CssClass="btn btn-danger btn-sm" />
                            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="btn btn-primary btn-sm" />
                        </div>
                    </asp:Panel>

                                </td>

                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" Width="1050px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                            <tr runat="server" style="">
                                                
                                                <th runat="server"></th>
                                                <th runat="server">PATIENT ID</th>
                                                <th runat="server">STAFF ID</th>
                                                <th runat="server">DEATH DATE</th>
                                                <th runat="server">TIME</th>
                                                <th runat="server">DEATH CAUSE</th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                        <asp:DataPager runat="server" ID="DataPager1">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary btn-sm" ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
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
                                    <asp:Label Text='<%# Eval("Death_Date") %>' runat="server" ID="Death_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Time") %>' runat="server" ID="TimeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Death_Cause") %>' runat="server" ID="Death_CauseLabel" /></td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>

                    <asp:SqlDataSource runat="server" ID="death" ConnectionString='<%$ ConnectionStrings:Conn %>' DeleteCommand="DELETE FROM [death_table] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [death_table] ([Patient_ID], [Staff_ID], [Death_Date], [Time], [Death_Cause]) VALUES (@Patient_ID, @Staff_ID, @Death_Date, @Time, @Death_Cause)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [death_table]" UpdateCommand="UPDATE [death_table] SET [Patient_ID] = @Patient_ID, [Staff_ID] = @Staff_ID, [Death_Date] = @Death_Date, [Time] = @Time, [Death_Cause] = @Death_Cause WHERE [ID] = @original_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Decimal"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Staff_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Death_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Time" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Death_Cause" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Staff_ID" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Death_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Time" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Death_Cause" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ID" Type="Decimal"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>


            </div>







        </div>
    </div>
</asp:Content>

