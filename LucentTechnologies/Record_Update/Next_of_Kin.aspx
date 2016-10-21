<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Next_of_Kin.aspx.cs" Inherits="LucentTechnologies.Record_Update.Next_of_Kin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h4> Patient Next of Kin Record Management</h4>

        </div>
         <ul class="nav nav-tabs"> 
         <li><a href="Patient_Update.aspx">Patient Biodata</a></li> 
         <li class="active"><a href="Next_of_Kin.aspx">Next of Kin Biodata</a></li> 
         <li><a href="Diagnosis_Update.aspx">Patient Diagnosis Details</a></li> 
         <li><a href="Laboratory_Update.aspx">Patient Laboratory Details</a></li> 
         <li><a href="Birth_Update.aspx">Birth Record</a></li>
             <li><a href="Death_Update.aspx">Death Record</a></li>
             <li><a href="General_Ward1_Update.aspx">Addmissions</a></li>
         </ul>
        <br />


          <div class="panel panel-default">
            <div class="panel-heading">
              <asp:ValidationSummary runat="server" ValidateRequestMode="Enabled" ValidationGroup="group2" ShowValidationErrors="true" ShowMessageBox="true" CssClass="alert alert-danger" HeaderText="Some Fields are Required and cannot be empty, Please review your entry and try again." />   
            </div>
            <div class="panel-body">

           <div class=" well well-lg pre-scrollable">
               <asp:ListView ID="ListView2" runat="server" DataSourceID="nextofkin" DataKeyNames="Patient_ID">
                   <AlternatingItemTemplate>
                       <tr style="" class="success">
                           
                           <td>
                               <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Next_of_Kin_Fullname") %>' runat="server" ID="Next_of_Kin_FullnameLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Next_of_Kin_Phone") %>' runat="server" ID="Next_of_Kin_PhoneLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Relationship") %>' runat="server" ID="RelationshipLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Email_Address") %>' runat="server" ID="Email_AddressLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Next_of_Kin_Address") %>' runat="server" ID="Next_of_Kin_AddressLabel" /></td>

                           <td>
                              
                               <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary btn-sm" />
                                
                           </td>
                       </tr>
                   </AlternatingItemTemplate>
                   <EditItemTemplate>
                       <tr style="">
                           
                           <td>
                               <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel1" /></td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Next_of_Kin_Fullname") %>' runat="server" ID="Next_of_Kin_FullnameTextBox" TextMode="SingleLine" CausesValidation="true" CssClass="form-control" />
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="Next_of_Kin_FullnameTextBox" ValidationGroup="group2"/>
                           </td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Next_of_Kin_Phone") %>' runat="server" ID="Next_of_Kin_PhoneTextBox" CssClass="form-control" CausesValidation="true" TextMode="Phone" />
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="Next_of_Kin_PhoneTextBox" ValidationGroup="group2" />
                           </td>
                           <td>
                               <asp:DropdownList Text='<%# Bind("Relationship") %>' runat="server" ID="RelationshipTextBox"  CssClass="form-control">
                                   <asp:ListItem Value="Brother" Text="Brother" />
                                   <asp:ListItem Value="Sister" Text="Sister" />
                                   <asp:ListItem Value="Son" Text="Son" />
                                   <asp:ListItem Value="Daugther" Text="Daughter" />
                                   <asp:ListItem Value="Friend" Text="Friend" />
                                   <asp:ListItem Value="Mother" Text="Mother" />
                                   <asp:ListItem Value="Father" Text="Father" />
                                   <asp:ListItem Value="Niece" Text="Niece" />
                                   <asp:ListItem Value="Cousin" Text="Cousin" />
                                   <asp:ListItem Value="Others" Text="Others" />
                               </asp:DropdownList>

                           </td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Email_Address") %>' runat="server" ID="Email_AddressTextBox" TextMode="Email"  CssClass="form-control"/></td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Next_of_Kin_Address") %>' runat="server" ID="Next_of_Kin_AddressTextBox"  TextMode="MultiLine" CssClass="form-control" CausesValidation="true"/>
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="Next_of_Kin_AddressTextBox" ValidationGroup="group2" />
                           </td>
                           <td>
                               <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" CssClass="btn btn-warning btn-sm" CausesValidation="true" ValidationGroup="group2" />
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
                          
                           <td>&nbsp;</td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Next_of_Kin_Fullname") %>' runat="server" ID="Next_of_Kin_FullnameTextBox" /></td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Next_of_Kin_Phone") %>' runat="server" ID="Next_of_Kin_PhoneTextBox" /></td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Relationship") %>' runat="server" ID="RelationshipTextBox" /></td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Email_Address") %>' runat="server" ID="Email_AddressTextBox" /></td>
                           <td>
                               <asp:TextBox Text='<%# Bind("Next_of_Kin_Address") %>' runat="server" ID="Next_of_Kin_AddressTextBox" /></td>
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
                               <asp:Label Text='<%# Eval("Next_of_Kin_Fullname") %>' runat="server" ID="Next_of_Kin_FullnameLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Next_of_Kin_Phone") %>' runat="server" ID="Next_of_Kin_PhoneLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Relationship") %>' runat="server" ID="RelationshipLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Email_Address") %>' runat="server" ID="Email_AddressLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Next_of_Kin_Address") %>' runat="server" ID="Next_of_Kin_AddressLabel" /></td>
                           <td>
                               
                               <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" CssClass="btn btn-primary btn-sm" />
                               
                           </td>
                       </tr>
                   </ItemTemplate>
                   <LayoutTemplate>
                       <table runat="server" Width="1500px">
                           <tr runat="server">
                               <td runat="server">
                                   <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                       <tr runat="server" style="">
                                           
                                           <th runat="server" >PATIENT ID</th>
                                           <th runat="server" >NOK FULNAME</th>
                                           <th runat="server" >NOK PHONE</th>
                                           <th runat="server" >RELATIONSHIP</th>
                                           <th runat="server" >EMAIL</th>
                                           <th runat="server" >NOK HOME ADDRESS</th>
                                       </tr>
                                       <tr runat="server" id="itemPlaceholder"></tr>
                                   </table>
                               </td>
                           </tr>
                           <tr runat="server">
                               <td runat="server" style="">
                                   <asp:DataPager runat="server" ID="DataPager2">
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
                               <asp:Label Text='<%# Eval("Next_of_Kin_Fullname") %>' runat="server" ID="Next_of_Kin_FullnameLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Next_of_Kin_Phone") %>' runat="server" ID="Next_of_Kin_PhoneLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Relationship") %>' runat="server" ID="RelationshipLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Email_Address") %>' runat="server" ID="Email_AddressLabel" /></td>
                           <td>
                               <asp:Label Text='<%# Eval("Next_of_Kin_Address") %>' runat="server" ID="Next_of_Kin_AddressLabel" /></td>
                       </tr>
                   </SelectedItemTemplate>
               </asp:ListView>
               <asp:SqlDataSource runat="server" ID="nextofkin" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:Conn %>' DeleteCommand="DELETE FROM [patient_table] WHERE [Patient_ID] = @original_Patient_ID AND [Next_of_Kin_Fullname] = @original_Next_of_Kin_Fullname AND [Next_of_Kin_Phone] = @original_Next_of_Kin_Phone AND [Relationship] = @original_Relationship AND (([Email_Address] = @original_Email_Address) OR ([Email_Address] IS NULL AND @original_Email_Address IS NULL)) AND [Next_of_Kin_Address] = @original_Next_of_Kin_Address" InsertCommand="INSERT INTO [patient_table] ([Next_of_Kin_Fullname], [Next_of_Kin_Phone], [Relationship], [Email_Address], [Next_of_Kin_Address]) VALUES (@Next_of_Kin_Fullname, @Next_of_Kin_Phone, @Relationship, @Email_Address, @Next_of_Kin_Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Patient_ID], [Next_of_Kin_Fullname], [Next_of_Kin_Phone], [Relationship], [Email_Address], [Next_of_Kin_Address] FROM [patient_table]" UpdateCommand="UPDATE [patient_table] SET [Next_of_Kin_Fullname] = @Next_of_Kin_Fullname, [Next_of_Kin_Phone] = @Next_of_Kin_Phone, [Relationship] = @Relationship, [Email_Address] = @Email_Address, [Next_of_Kin_Address] = @Next_of_Kin_Address WHERE [Patient_ID] = @original_Patient_ID AND [Next_of_Kin_Fullname] = @original_Next_of_Kin_Fullname AND [Next_of_Kin_Phone] = @original_Next_of_Kin_Phone AND [Relationship] = @original_Relationship AND (([Email_Address] = @original_Email_Address) OR ([Email_Address] IS NULL AND @original_Email_Address IS NULL)) AND [Next_of_Kin_Address] = @original_Next_of_Kin_Address">
                   <DeleteParameters>
                       <asp:Parameter Name="original_Patient_ID" Type="Decimal"></asp:Parameter>
                       <asp:Parameter Name="original_Next_of_Kin_Fullname" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Next_of_Kin_Phone" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Relationship" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Email_Address" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Next_of_Kin_Address" Type="String"></asp:Parameter>
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="Next_of_Kin_Fullname" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Next_of_Kin_Phone" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Relationship" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Email_Address" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Next_of_Kin_Address" Type="String"></asp:Parameter>
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="Next_of_Kin_Fullname" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Next_of_Kin_Phone" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Relationship" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Email_Address" Type="String"></asp:Parameter>
                       <asp:Parameter Name="Next_of_Kin_Address" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Patient_ID" Type="Decimal"></asp:Parameter>
                       <asp:Parameter Name="original_Next_of_Kin_Fullname" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Next_of_Kin_Phone" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Relationship" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Email_Address" Type="String"></asp:Parameter>
                       <asp:Parameter Name="original_Next_of_Kin_Address" Type="String"></asp:Parameter>
                   </UpdateParameters>
               </asp:SqlDataSource>
           </div>

        </div>
            
            </div>



    </div>
</asp:Content>

