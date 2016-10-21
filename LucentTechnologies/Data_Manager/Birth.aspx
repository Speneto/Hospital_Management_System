<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Birth.aspx.cs" Inherits="LucentTechnologies.Data_Manager.Birth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
    <div  class="page header">
        <h3>New Birth Registration Form</h3>
    </div>
    <hr />

          <ul class="nav nav-tabs"> 
         <li><a href="Patient_Registration.aspx">Patient Registration</a></li> 
         <li><a href="../Doctors/Diagnosis.aspx">Diagnosis Detail </a></li> 
         <li><a href="../Lab_Technicians/Laboratory.aspx">Laboratory Detail</a></li>  
         <li class="active"><a href="Birth.aspx">Birth Registration</a></li>
         <li><a href="Death.aspx">Death Registration</a></li>
         <li><a href="Payment.aspx">Payment Registration</a></li>
          <li><a href="General_Ward1.aspx">Admissions</a></li>
              <li><a href="../Reports/ReportsPage.aspx">Print</a></li>
         </ul>

        <br />
   

    
        <div class="col-md-2">
           
        </div>
        <div class="col-md-8">
         
       
            <div class="panel panel-default">
                <div class="panel-heading">
                    
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
               
                
                </div>        
           

                <div class="panel-body">

                    <div class="form-horizontal">
                        <div class="form-group">
                            <label for="patient_id"  class="col-sm-3 control-label">Patient Id</label>

                       <div class="col-sm-6">
                    <asp:TextBox runat="server" ID="patient_id" required="true" placeholder="Patient Id" CausesValidation="True"  CssClass="form-control input-sm"   >

                    </asp:TextBox> 

                  </div>
                      <div class="col-sm-2">
                          <asp:RequiredFieldValidator runat="server" ForeColor="Red" CssClass="form-control" ControlToValidate="patient_id" ErrorMessage="*" Display="Dynamic" />
                      </div>
                   </div>

                        <asp:SqlDataSource ID="StaffData" runat="server" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT [Staff_ID] FROM [Staff_View]"></asp:SqlDataSource>
                        <div class="form-group">
                            <label for="staff_id"  class="col-sm-3 control-label">Staff Id</label>

                       <div class="col-sm-6">
                        <asp:DropDownList runat="server" ID="staff_id" CausesValidation="true" CssClass="form-control input-sm" DataSourceID="StaffData" DataTextField="Staff_ID" DataValueField="Staff_ID">
                            <asp:ListItem Text=""></asp:ListItem>
                        </asp:DropDownList>
                  </div>
                      <div class="col-sm-2">
                          <asp:RequiredFieldValidator runat="server" ForeColor="Red" CssClass="form-control input-sm" ControlToValidate="staff_id" ErrorMessage="*" Display="Dynamic" />
                      </div>
                   </div>


                        <div class="form-group">
                            <label for="date" id="" class="col-sm-3 control-label">Date of Birth</label>

                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="date" required="true"  placeholder="Date of Birth" CausesValidation="true" CssClass="form-control input-sm" />
                                <ajaxToolkit:CalendarExtender runat="server" TargetControlID="date" CssClass="btn btn-primary" Format="dd/MM/yyyy" />
                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="date" ForeColor="Red" CssClass="form-control input-sm" ErrorMessage="*" Display="Dynamic" />
                            </div>
                        </div>

                   
                      <div class="form-group">
                            <label for="time" id="" class="col-sm-3 control-label">Time of Birth</label>

                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="time" required="true" TextMode="Time" placeholder="Time of Birth" CausesValidation="true" CssClass="form-control input-sm" />

                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="time" ForeColor="Red" CssClass="form-control input-sm" ErrorMessage="*" Display="Dynamic" />
                            </div>
                        </div>

                         <div class="form-group">
                           <label for="gender" id="" class="col-sm-3 control-label">Infant Gender</label>

                           <div class="col-sm-6">
                               <asp:DropDownList runat="server" ID="gender" CssClass="form-control input-sm" CausesValidation="true" >
                                   <asp:ListItem Text="Select Gender"></asp:ListItem>
                                   <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                   <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                               </asp:DropDownList>
                           </div>

                           <div class="col-sm-2">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="gender" ErrorMessage="*" ForeColor="Red" Display="Dynamic" CssClass="form-control input-sm" />
                           </div>
                       </div>

                        </div>
                    </div>
                

                <div class="panel-footer">
                    <div class="text-center">
                   <asp:Button runat="server" ID="save" CssClass="btn btn-default" Width="200" Text="Save Record" OnClick="save_Click"   /> 
                        <asp:Button runat="server" ID="cancle" CssClass="btn btn-default" Width="200px" Text="Cancel" OnClick="cancle_Click"   />
                      </div>
                </div>

            </div>
     </div>
     
     </div>
</asp:Content>

