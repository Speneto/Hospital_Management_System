<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Update.aspx.cs" Inherits="LucentTechnologies.Record_Update.Patient_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class=" container-fluid">
        <div class="page-header">
            <h4>Patient Biodata Record Management</h4>
        </div>
        
          <ul class="nav nav-tabs"> 
         <li class="active"><a href="Patient_Update.aspx">Patient Biodata</a></li> 
         <li><a href="Next_of_Kin.aspx">Next of Kin Biodata</a></li> 
         <li><a href="Diagnosis_Update.aspx">Patient Diagnosis Details</a></li> 
         <li><a href="Laboratory_Update.aspx">Patient Laboratory Details</a></li> 
         <li><a href="Birth_Update.aspx">Birth Record</a></li>
         <li><a href="Death_Update.aspx">Death Record</a></li>
         <li><a href="General_Ward1_Update.aspx">Addmissions</a></li>
         
         </ul>
        <br />
        <!--Begins patient biodata panel-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:ValidationSummary runat="server" ValidateRequestMode="Enabled" ValidationGroup="group1" ShowValidationErrors="true" ShowMessageBox="true" CssClass="alert alert-danger" HeaderText="All Fields  are Required, Please review your entry and try again." />
            </div>
            <div class="panel-body">
                <div class=" well well-lg pre-scrollable ">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="patientbiodata" DataKeyNames="Patient_ID"  >
                        <AlternatingItemTemplate>
                            <tr style="" class=" success">
                               
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Firstname") %>' runat="server" ID="FirstnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Surname") %>' runat="server" ID="SurnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Lastname") %>' runat="server" ID="LastnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Gender") %>' runat="server" ID="GenderLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Date1") %>' runat="server" ID="Date1Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Age") %>' runat="server" ID="AgeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Marital_Status") %>' runat="server" ID="Marital_StatusLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Religion") %>' runat="server" ID="ReligionLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("State") %>' runat="server" ID="StateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("LGA") %>' runat="server" ID="LGALabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Nationality") %>' runat="server" ID="NationalityLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Phone_Number") %>' runat="server" ID="Phone_NumberLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Home_Address") %>' runat="server" ID="Home_AddressLabel" /></td>

                                 <td>
                                    
                                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary btn-sm" />
                                     <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" CssClass="btn btn-danger btn-sm" OnClick="DeleteButton_Click" />





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






                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel1"  Width="120px" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Firstname") %>' runat="server" ID="FirstnameTextBox" Width="120px"  CausesValidation="true" TextMode="SingleLine" CssClass="form-control input-sm"/>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstnameTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Surname") %>' runat="server" ID="SurnameTextBox" Width="120px" CausesValidation="true" TextMode="SingleLine" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="SurnameTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Lastname") %>' runat="server" ID="LastnameTextBox" Width="120px" TextMode="SingleLine" CssClass="form-control input-sm" /></td>
                                <td>
                                    <asp:DropdownList Text='<%# Bind("Gender") %>' runat="server" ID="GenderTextBox"  CausesValidation="true" CssClass="form-control input-sm" Width="120px" >
                                        <asp:ListItem Text="Select Gender"></asp:ListItem>
                                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                                    </asp:DropdownList>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="GenderTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Date1") %>' runat="server" ID="Date1TextBox" Width="150px"   CausesValidation="true" CssClass="form-control input-sm"/>
                                    <ajaxToolkit:CalendarExtender runat="server" TargetControlID="Date1TextBox" CssClass="btn btn-primary glyphicon-calendar" />
                                    <asp:RequiredFieldValidator runat="server" ValidationGroup="group1" ControlToValidate="Date1TextBox" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Age") %>' runat="server" ID="AgeTextBox" Width="120px" CssClass="form-control input-sm" CausesValidation="true" TextMode="SingleLine" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="AgeTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:DropdownList Text='<%# Bind("Marital_Status") %>' runat="server" CausesValidation="true" ID="Marital_StatusTextBox" CssClass="form-control dropdown input-sm" >
                                        <asp:ListItem Text=""></asp:ListItem>
                                        <asp:ListItem Value="Single" Text="Single" />
                                        <asp:ListItem Value="Married" Text="Married" />
                                        <asp:ListItem Value="Divorce" Text="Divorce" />
                                    </asp:DropdownList>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Marital_StatusTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:DropdownList Text='<%# Bind("Religion") %>' runat="server" ID="ReligionTextBox" Width="140px" CausesValidation="true" CssClass="form-control dropdown input-sm" >
                                        <asp:ListItem Text="Select Religion" />
                                        <asp:ListItem Value="Christianity" Text="Christianity" />
                                        <asp:ListItem Value="Islam" Text="Islam" />
                                        <asp:ListItem Value="Traditional" Text="Traditional" />
                                        <asp:ListItem Value="Others"  Text="Others" />
                                    </asp:DropdownList>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ReligionTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:DropdownList Text='<%# Bind("State") %>' runat="server" ID="StateTextBox" CausesValidation="true" CssClass="form-control dropdown input-sm" >
                                        <asp:ListItem Text="Select State"/>
                                        <asp:ListItem Value="Abia" Text="Abia" />
                                        <asp:ListItem Value="Adamawa" Text="Adamawa" />
                                        <asp:ListItem Value="Anambra" Text="Anambra" />
                                    </asp:DropdownList>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="StateTextBox"  ValidationGroup="group1"/>

                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("LGA") %>' runat="server" ID="LGATextBox" CausesValidation="true" Width="150px" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="LGATextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:DropdownList Text='<%# Bind("Nationality") %>' runat="server" ID="NationalityTextBox" Width="150px" CausesValidation="true" CssClass="form-control dropdown input-sm" >
                                        <asp:ListItem Text="Select Nationality" />
                                        <asp:ListItem Value="Nigerian" Text="Nigerian" />
                                        <asp:ListItem Value="Non Nigerian" Text="Non Nigerian" />
                                    </asp:DropdownList>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="NationalityTextBox" ValidationGroup="group1" />

                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Phone_Number") %>' runat="server" ID="Phone_NumberTextBox" TextMode="Phone" CausesValidation="true" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone_NumberTextBox" ValidationGroup="group1" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Home_Address") %>' runat="server" ID="Home_AddressTextBox" TextMode="MultiLine" CausesValidation="true" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Home_AddressTextBox" ValidationGroup="group1"/>
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
                                    <td><h3>No data was returned.</h3></td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="" class=" success">
                               
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Firstname") %>' runat="server" ID="FirstnameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Surname") %>' runat="server" ID="SurnameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Lastname") %>' runat="server" ID="LastnameTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Gender") %>' runat="server" ID="GenderTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Date1") %>' runat="server" ID="Date1TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Age") %>' runat="server" ID="AgeTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Marital_Status") %>' runat="server" ID="Marital_StatusTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Religion") %>' runat="server" ID="ReligionTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("State") %>' runat="server" ID="StateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("LGA") %>' runat="server" ID="LGATextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Nationality") %>' runat="server" ID="NationalityTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Phone_Number") %>' runat="server" ID="Phone_NumberTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Home_Address") %>' runat="server" ID="Home_AddressTextBox" /></td>
                                 <td>
                                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                                </td>
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
                                    <asp:Label Text='<%# Eval("Lastname") %>' runat="server" ID="LastnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Gender") %>' runat="server" ID="GenderLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Date1") %>' runat="server" ID="Date1Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Age") %>' runat="server" ID="AgeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Marital_Status") %>' runat="server" ID="Marital_StatusLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Religion") %>' runat="server" ID="ReligionLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("State") %>' runat="server" ID="StateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("LGA") %>' runat="server" ID="LGALabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Nationality") %>' runat="server" ID="NationalityLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Phone_Number") %>' runat="server" ID="Phone_NumberLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Home_Address") %>' runat="server" ID="Home_AddressLabel" /></td>

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
                            <table runat="server" Width="2800px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table  table-bordered">
                                            <tr runat="server" style="">
                                               
                                                <th runat="server" >PATIENT ID</th>
                                                <th runat="server" >FIRSTNAME</th>
                                                <th runat="server" >SURNAME</th>
                                                <th runat="server" >LASTNAME</th>
                                                <th runat="server" >GENDER</th>
                                                <th runat="server" >DATE</th>
                                                <th runat="server" >AGE</th>
                                                <th runat="server" >STATUS</th>
                                                <th runat="server" >RELIGION</th>
                                                <th runat="server" >STATE</th>
                                                <th runat="server" >LGA</th>
                                                <th runat="server" >NATIONALITY</th>
                                                <th runat="server" >TELEPHONE</th>
                                                <th runat="server" >HOME ADDRESS</th>
                                               

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
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Firstname") %>' runat="server" ID="FirstnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Surname") %>' runat="server" ID="SurnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Lastname") %>' runat="server" ID="LastnameLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Gender") %>' runat="server" ID="GenderLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Date1") %>' runat="server" ID="Date1Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Age") %>' runat="server" ID="AgeLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Marital_Status") %>' runat="server" ID="Marital_StatusLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Religion") %>' runat="server" ID="ReligionLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("State") %>' runat="server" ID="StateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("LGA") %>' runat="server" ID="LGALabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Nationality") %>' runat="server" ID="NationalityLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Phone_Number") %>' runat="server" ID="Phone_NumberLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Home_Address") %>' runat="server" ID="Home_AddressLabel" /></td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource runat="server" ID="patientbiodata" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT [Patient_ID], [Firstname], [Surname], [Lastname], [Gender], [Date1], [Age], [Marital_Status], [Religion], [State], [LGA], [Nationality], [Phone_Number], [Home_Address] FROM [patient_table]" UpdateCommand="UPDATE [patient_table] SET [Firstname] = @Firstname, [Surname] = @Surname, [Lastname] = @Lastname, [Gender] = @Gender, [Date1] = @Date1, [Age] = @Age, [Marital_Status] = @Marital_Status, [Religion] = @Religion, [State] = @State, [LGA] = @LGA, [Nationality] = @Nationality, [Phone_Number] = @Phone_Number, [Home_Address] = @Home_Address WHERE [Patient_ID] = @original_Patient_ID" DeleteCommand="DELETE FROM [patient_table] WHERE [Patient_ID] = @original_Patient_ID" InsertCommand="INSERT INTO [patient_table] ([Firstname], [Surname], [Lastname], [Gender], [Date1], [Age], [Marital_Status], [Religion], [State], [LGA], [Nationality], [Phone_Number], [Home_Address]) VALUES (@Firstname, @Surname, @Lastname, @Gender, @Date1, @Age, @Marital_Status, @Religion, @State, @LGA, @Nationality, @Phone_Number, @Home_Address)" OldValuesParameterFormatString="original_{0}">
                        <DeleteParameters>
                            <asp:Parameter Name="Patient_ID" Type="Decimal"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Firstname" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Surname" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Lastname" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Date1" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Age" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Marital_Status" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Religion" Type="String"></asp:Parameter>
                            <asp:Parameter Name="State" Type="String"></asp:Parameter>
                            <asp:Parameter Name="LGA" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Nationality" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Phone_Number" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Home_Address" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Firstname" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Surname" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Lastname" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Date1" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Age" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Marital_Status" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Religion" Type="String"></asp:Parameter>
                            <asp:Parameter Name="State" Type="String"></asp:Parameter>
                            <asp:Parameter Name="LGA" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Nationality" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Phone_Number" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Home_Address" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_Patient_ID" Type="Decimal"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
                </div>
       </div>
        <br />
         <!-- End Patient Biodata Panel-->
       
       
      
    </div>
</asp:Content>

