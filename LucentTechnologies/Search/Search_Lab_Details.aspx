<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search_Lab_Details.aspx.cs" Inherits="LucentTechnologies.Search.Search_Lab_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="page-header"><h4>Laboratory Search Panel</h4></div>
        <ul class="nav nav-tabs"> 
         <li ><a href="Search_Patient_Details.aspx">Patient Search</a></li> 
         <li><a href="Search_Diagnosis.aspx">Diagnosis Search</a></li> 
         <li class="active"><a href="Search_Lab_Details.aspx">Laboratory Search</a></li> 
         <li><a href="Search_InPatient.aspx">Ward Search</a></li> 
          <li><a href="Search_Payment.aspx">Payment Search</a></li>
         
         </ul>
        <br />


        <div class="form-inline">
            <div class="form-group ">
                   <label for="se" class="control-label">Patient Card Number</label>
                   <asp:TextBox runat="server" CssClass=" glyphicon-search form-control " TextMode="Search" ID="Search"  placeholder="Patient Card Number" />
                   <asp:Button runat="server" ID="sh" CssClass="btn btn-primary" Text="Search" />

                </div>
            </div>
        <br />

        <div class="panel panel-default">
            <div class="panel-heading">  </div>

            <div class="panel-body">
                <div class="well well-lg pre-scrollable">

                    <asp:ListView ID="ListView1" runat="server" DataSourceID="labtest">
                        <AlternatingItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_Date") %>' runat="server" ID="Test_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_1") %>' runat="server" ID="Test_1Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_2") %>' runat="server" ID="Test_2Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_3") %>' runat="server" ID="Test_3Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_4") %>' runat="server" ID="Test_4Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_5") %>' runat="server" ID="Test_5Label" /></td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                                </td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_Date") %>' runat="server" ID="Test_DateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_1") %>' runat="server" ID="Test_1TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_2") %>' runat="server" ID="Test_2TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_3") %>' runat="server" ID="Test_3TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_4") %>' runat="server" ID="Test_4TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_5") %>' runat="server" ID="Test_5TextBox" /></td>
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
                                    <asp:TextBox Text='<%# Bind("Patient_ID") %>' runat="server" ID="Patient_IDTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_Date") %>' runat="server" ID="Test_DateTextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_1") %>' runat="server" ID="Test_1TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_2") %>' runat="server" ID="Test_2TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_3") %>' runat="server" ID="Test_3TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_4") %>' runat="server" ID="Test_4TextBox" /></td>
                                <td>
                                    <asp:TextBox Text='<%# Bind("Test_5") %>' runat="server" ID="Test_5TextBox" /></td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_Date") %>' runat="server" ID="Test_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_1") %>' runat="server" ID="Test_1Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_2") %>' runat="server" ID="Test_2Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_3") %>' runat="server" ID="Test_3Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_4") %>' runat="server" ID="Test_4Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_5") %>' runat="server" ID="Test_5Label" /></td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" Width="1200px">
                                <tr runat="server">
                                    <td runat="server">
                                        <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                            <tr runat="server" style="">
                                                <th runat="server">PATIENT ID</th>
                                                <th runat="server">TEST DATE</th>
                                                <th runat="server">TEST 1</th>
                                                <th runat="server">TEST 2</th>
                                                <th runat="server">TEST 3</th>
                                                <th runat="server">TEST 4</th>
                                                <th runat="server">TEST 5</th>
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
                                    <asp:Label Text='<%# Eval("Patient_ID") %>' runat="server" ID="Patient_IDLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_Date") %>' runat="server" ID="Test_DateLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_1") %>' runat="server" ID="Test_1Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_2") %>' runat="server" ID="Test_2Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_3") %>' runat="server" ID="Test_3Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_4") %>' runat="server" ID="Test_4Label" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Test_5") %>' runat="server" ID="Test_5Label" /></td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>

                    <asp:SqlDataSource runat="server" ID="labtest" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="Laboratory_Search1" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Search" PropertyName="Text" Name="Patient_Id"  Type="String"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

                <br />

                <!--Laboratory Result List view-->
                <h5>Patient Test Result</h5>
                <div class="well well-lg pre-scrollable">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="labresult">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label Text='<%# Eval("Test_Date") %>' runat="server" ID="Test_DateLabel" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_1") %>' runat="server" ID="Result_1Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_2") %>' runat="server" ID="Result_2Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_3") %>' runat="server" ID="Result_3Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_4") %>' runat="server" ID="Result_4Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_5") %>' runat="server" ID="Result_5Label" /></td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                            </td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Test_Date") %>' runat="server" ID="Test_DateTextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_1") %>' runat="server" ID="Result_1TextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_2") %>' runat="server" ID="Result_2TextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_3") %>' runat="server" ID="Result_3TextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_4") %>' runat="server" ID="Result_4TextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_5") %>' runat="server" ID="Result_5TextBox" /></td>
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
                                <asp:TextBox Text='<%# Bind("Test_Date") %>' runat="server" ID="Test_DateTextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_1") %>' runat="server" ID="Result_1TextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_2") %>' runat="server" ID="Result_2TextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_3") %>' runat="server" ID="Result_3TextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_4") %>' runat="server" ID="Result_4TextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("Result_5") %>' runat="server" ID="Result_5TextBox" /></td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label Text='<%# Eval("Test_Date") %>' runat="server" ID="Test_DateLabel" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_1") %>' runat="server" ID="Result_1Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_2") %>' runat="server" ID="Result_2Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_3") %>' runat="server" ID="Result_3Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_4") %>' runat="server" ID="Result_4Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_5") %>' runat="server" ID="Result_5Label" /></td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server" Width="1200px">
                            <tr runat="server">
                                <td runat="server">
                                    <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-bordered">
                                        <tr runat="server" style="">
                                            <th runat="server">TEST DATE</th>
                                            <th runat="server">RESULT 1</th>
                                            <th runat="server">RESULT 2</th>
                                            <th runat="server">RESULT 3</th>
                                            <th runat="server">RESULT 4</th>
                                            <th runat="server">RESULT 5</th>
                                        </tr>
                                        <tr runat="server" id="itemPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager runat="server" ID="DataPager2">
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
                                <asp:Label Text='<%# Eval("Test_Date") %>' runat="server" ID="Test_DateLabel" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_1") %>' runat="server" ID="Result_1Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_2") %>' runat="server" ID="Result_2Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_3") %>' runat="server" ID="Result_3Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_4") %>' runat="server" ID="Result_4Label" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("Result_5") %>' runat="server" ID="Result_5Label" /></td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>

</div>



                <asp:SqlDataSource runat="server" ID="labresult" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="Laboratory_Result_Search" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Search" PropertyName="Text" Name="Search" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>




    </div>
</asp:Content>

