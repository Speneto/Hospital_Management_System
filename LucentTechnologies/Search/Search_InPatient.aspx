<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search_InPatient.aspx.cs" Inherits="LucentTechnologies.Search.Search_InPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header">Ward Status Search Panel</div>


        
        <ul class="nav nav-tabs"> 
         <li ><a href="Search_Patient_Details.aspx">Patient Search</a></li> 
         <li><a href="Search_Diagnosis.aspx">Diagnosis Search</a></li> 
         <li><a href="Search_Lab_Details.aspx">Laboratory Search</a></li> 
         <li class="active"><a href="Search_InPatient.aspx">Ward Search</a></li> 
          <li><a href="Search_Payment.aspx">Payment Search</a></li>
         
         </ul>
        <br />



         <div class="form-inline">
            <div class="form-group ">
                   <label for="se" class="control-label">Admission Status</label>
                   <asp:DropdownList runat="server" CssClass=" glyphicon-search form-control " TextMode="Search" ID="Search"  >
                       <asp:ListItem Text="Admission Status" />
                       <asp:ListItem Value="Discharged" Text="Discharged" />
                       <asp:ListItem Value="On Admission" Text="On Admission" />
                   </asp:DropdownList>
                   <asp:Button runat="server" ID="sh" CssClass="btn btn-primary" Text="Search" />

                </div>
            </div>
        <br />



        <div class="panel panel-default">
            <div class="panel-heading"></div>
            <div class="panel-body">
            <!--VIP Ward1-->
             <h6>VIP WARD ONE, This Ward contain a total of 3 beds</h6>
            <div class="well well-lg  pre-scrollable">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="vip1search" DataKeyNames="ID">
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
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                            </td>
                            <td>
                                <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel1" /></td>
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
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server" Width="1200px">
                            <tr runat="server">
                                <td runat="server">
                                    <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                        <tr runat="server" style="">
                                            
                                            <th runat="server">Patient ID</th>
                                            <th runat="server">Admission Date</th>
                                            <th runat="server">Admitted By</th>
                                            <th runat="server">Ward Name</th>
                                            <th runat="server">Bed Number</th>
                                            <th runat="server">Discharge Date</th>
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
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ButtonCssClass="btn btn-primary btn-sm" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
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
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource runat="server" ID="vip1search" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="ward_search3" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Search" PropertyName="SelectedValue" Name="patient_status" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

            <!--VIP Ward2-->
                <h6>VIP WARD TWO</h6>
            <div class="well well-lg  pre-scrollable">

            </div>
            
            <!--General Ward1-->
                <h6>GENERAL WARD ONE, This Ward contain a total of 14 beds</h6>
            <div class="well well-lg  pre-scrollable">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="generalward" DataKeyNames="ID">
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
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                            </td>
                            <td>
                                <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel1" /></td>
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
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server" Width="1200px">
                            <tr runat="server">
                                <td runat="server">
                                    <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                        <tr runat="server" style="">
                                          
                                            <th runat="server">Patient ID</th>
                                            <th runat="server">Admission Date</th>
                                            <th runat="server">Admitted By</th>
                                            <th runat="server">Ward Name</th>
                                            <th runat="server">Bed Number</th>
                                            <th runat="server">Discharge Date</th>
                                            <th runat="server">Status</th>
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
                <asp:SqlDataSource runat="server" ID="generalward" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="Ward_status_Search" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Search" PropertyName="SelectedValue" Name="patient_status" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

            <!--General Ward2-->
               <h6>GENERAL WARD TWO, This Ward have a total of 10 bed</h6>
            <div class="well well-lg  pre-scrollable">

                <asp:ListView ID="ListView3" runat="server" DataSourceID="generalward2" DataKeyNames="ID">
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
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                            </td>
                            <td>
                                <asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel1" /></td>
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
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server" Width="1200px">
                            <tr runat="server">
                                <td runat="server">
                                    <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                        <tr runat="server" style="">
                                            
                                            <th runat="server">Patient ID</th>
                                            <th runat="server">Admission Date</th>
                                            <th runat="server">Admitted By</th>
                                            <th runat="server">Ward Name</th>
                                            <th runat="server">Bed Number</th>
                                            <th runat="server">Discharge Date</th>
                                            <th runat="server">Status</th>
                                        </tr>
                                        <tr runat="server" id="itemPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager runat="server" ID="DataPager3">
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
                <asp:SqlDataSource runat="server" ID="generalward2" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="ward_search2" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Search" PropertyName="SelectedValue" Name="Patient_Status" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>

      </div>












    </div>
</asp:Content>

