<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Administrator.ascx.cs" Inherits="LucentTechnologies.Controls.Administrator" %>
<link href="../Content/bootstrap.css" rel="stylesheet" />
 <div class="container">
               
               
               <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/index.aspx"><strong>WhiteBox</strong></a>
                    
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                                             
                 <!--Doctors-->
                         <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Staff Management
                        </a>
                        <ul class="dropdown-menu">
                            <li><a runat="server" href="~/Administrator/New_Staff.aspx">Register Staff</a></li>
                            <li><a runat="server" href="~/Administrator/Register_Users.aspx">Register User</a></li>
                            <li><a runat="server" href="~/Administrator/Manage_Users.aspx">Manage User</a></li>
                            <li><a runat="server" href="~/Administrator/Manage_Staff.aspx">Manage Staff</a></li>
                            


                        </ul>
                    </li>

                           <!--Doctors-->
                         <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Record Management
                        </a>
                        <ul class="dropdown-menu">
                            <li><a runat="server" href="~/Record_Update/Patient_Update.aspx">Patient Biodata</a></li>
                            <li><a runat="server" href="~/Record_Update/Diagnosis_Update.aspx">Patient Diagnosis</a></li>
                            <li><a runat="server" href="~/Record_Update/Laboratory_Update.aspx">Laboratory Result</a></li>
                            <li><a runat="server" href="~/Record_Update/Payment_Update.aspx">Payment Details</a></li>
                              <li><a runat="server" href="~/Record_Update/General_Ward1_Update.aspx">Admissions</a></li>
                            <li><a runat="server" href="~/Record_Update/Birth_Update.aspx">Birth</a></li>
                            <li><a runat="server" href="~/Record_Update/Death_Update.aspx">Death</a></li>
                           


                        </ul>
                    </li>

                           <!--Doctors-->
                         <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Record Search
                        </a>
                        <ul class="dropdown-menu">
                            <li><a runat="server" href="~/Search/Search_Patient_Details.aspx">Patient Details</a></li>
                            <li><a runat="server" href="~/Search/Search_Diagnosis.aspx">Patient Diagnosis</a></li>
                            <li><a runat="server" href="~/Search/Search_Lab_Details.aspx">Laboratory Result</a></li>
                            <li><a runat="server" href="~/Search/Search_Payment.aspx">Payment Details</a></li>
                            <li><a runat="server" href="~/Search/Search_InPatient.aspx">In Patients</a></li>
                            


                        </ul>
                    </li>


                         


                     
                      
                    </ul>


                    

                      <ul class="nav navbar-nav navbar-right">
                                <li><a runat="server" href="" ><%:"Welcome " + Session["name"] %></a></li>
                                <li>
                                    <asp:LoginStatus runat="server" LogoutAction="Redirect" LoginText="Log off" LogoutPageUrl="~/Login.aspx" 
                                           OnLoggingOut="Unnamed_LoggingOut" />
                                </li>
                            </ul>


                 
                </div>

        
            </div>
         
           
        
