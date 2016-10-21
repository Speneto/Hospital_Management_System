<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search_Payment.aspx.cs" Inherits="LucentTechnologies.Search.Search_Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header"><h4>Payment Search Panel</h4>    </div>


        <ul class="nav nav-tabs"> 
         <li ><a href="Search_Patient_Details.aspx">Patient Search</a></li> 
         <li><a href="Search_Diagnosis.aspx">Diagnosis Search</a></li> 
         <li><a href="Search_Lab_Details.aspx">Laboratory Search</a></li> 
         <li><a href="Search_InPatient.aspx">Ward Search</a></li> 
          <li  class="active"><a href="Search_Payment.aspx">Payment Search</a></li>
         
         </ul>
        <br />



         <div class="form-inline">
            <div class="form-group ">
                   <label for="se" class="control-label">Patient ID or Payer Fullname</label>
                   <asp:TextBox runat="server" CssClass=" glyphicon-search form-control" TextMode="Search" ID="Search" placeholder="Patient ID or Payer Fullname" />
                   <asp:Button runat="server" ID="sh" CssClass="btn btn-primary" Text="Search" />

                </div>
            </div>
        <br />



        <div class="panel panel-default">

            <div class="panel-heading"></div>

            <div class="panel-body">

                <div class="well well-lg pre-scrollable">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="paymentsearch" DataKeyNames="ID">
                        <AlternatingItemTemplate>
                            <tr style="">
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
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" Width="1200px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered ">
                                            <tr runat="server" style="">
                                                
                                                <th runat="server">PATIENT ID</th>
                                                <th runat="server">STAFF ID</th>
                                                <th runat="server">PAYER FULLNAME</th>
                                                <th runat="server">AMOUNT PAID</th>
                                                <th runat="server">BALANCE</th>
                                                <th runat="server">METHOD</th>
                                                <th runat="server">DATE</th>
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
                    <asp:SqlDataSource runat="server" ID="paymentsearch" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="Payment_Search" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Search" PropertyName="Text" Name="patient_id" Type="String"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>


            </div>

        </div>


        </div>
</asp:Content>

