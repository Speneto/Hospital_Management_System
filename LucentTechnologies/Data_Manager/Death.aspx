<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Death.aspx.cs" Inherits="LucentTechnologies.Data_Manager.Death" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        
    <div  class="page header">
        <h3>New Death Registration Form</h3>
    </div>
    <hr />

        <ul class="nav nav-tabs"> 
         <li><a href="Patient_Registration.aspx">Patient Registration</a></li> 
         <li><a href="../Doctors/Diagnosis.aspx">Diagnosis Detail </a></li> 
         <li><a href="../Lab_Technicians/Laboratory.aspx">Laboratory Detail</a></li>  
         <li><a href="Birth.aspx">Birth Registration</a></li>
         <li class="active"><a href="Death.aspx">Death Registration</a></li>
         <li><a href="Payment.aspx">Payment Registration</a></li>
          <li><a href="General_Ward1.aspx">Admissions</a></li>
            <li><a href="../Reports/ReportsPage.aspx">Print</a></li>
         </ul>

        <br />

     <div class="row">
        <div class="col-md-2">
           
        </div>
        <div class="col-md-8">
            <br />
            
     
            <div class="panel panel-default">
                <div class="panel-heading">
                        
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
               
                    </div>
                <div class="panel-body">
                    
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-9 text-center">
                             <asp:label runat="server" ID="credentials" CssClass="form-control alert-danger" Text="Wrong Username or Password, Please try again." Visible="false" />
                       
                              </div>  
                           </div>
                        <div class="form-group">
                            <label for="Patient ID"  class="col-sm-3 control-label" >Patient Id</label>

                       <div class="col-sm-6">
                    <asp:TextBox runat="server" ID="patient_id" required="true" placeholder="Patient Id" CausesValidation="True"  CssClass="form-control input-sm"   >

                    </asp:TextBox> 

                  </div>
                      <div class="col-sm-2">
                          <asp:RequiredFieldValidator runat="server" ForeColor="Red" CssClass="form-control input-sm" ControlToValidate="patient_id" ErrorMessage="*" Display="Dynamic" />
                      </div>
                   </div>

                        <asp:SqlDataSource ID="StaffData" runat="server" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT [Staff_ID] FROM [Staff_View]"></asp:SqlDataSource>
                         <div class="form-group">
                           <label for="staff_id" id="" class="col-sm-3 control-label">Staff Id</label>
                           <div class="col-sm-6">
                               <asp:DropDownList runat="server" ID="staff_id" CssClass="form-control input-sm" CausesValidation="true" DataSourceID="StaffData" DataTextField="Staff_ID" DataValueField="Staff_ID" >
                                   <asp:ListItem Text=""></asp:ListItem>
                               </asp:DropDownList>
                           </div>

                           <div class="col-sm-2">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="staff_id" ErrorMessage="*" ForeColor="Red" Display="Dynamic" CssClass="form-control input-sm" />
                           </div>
                       </div>


                        <div class="form-group">
                            <label for="Date" id="" class="col-sm-3 control-label">Date of Death</label>

                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="date" required="true" TextMode="Date"  CausesValidation="true" CssClass="form-control input-sm" />
                                <ajaxToolkit:CalendarExtender runat="server" TargetControlID="date" CssClass="btn btn-primary" Format="dd/MM/yyyy" />

                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="date" ForeColor="Red" CssClass="form-control input-sm" ErrorMessage="*" Display="Dynamic" />
                            </div>
                        </div>

                   
                      <div class="form-group">
                            <label for="Time" id="" class="col-sm-3 control-label">Time of Death</label>

                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="time" required="true" TextMode="Time" placeholder="Time of Birth" CausesValidation="true" CssClass="form-control input-sm" />

                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="time" ForeColor="Red" CssClass="form-control input-sm" ErrorMessage="*" Display="Dynamic" />
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="Death Cause" id="" class="col-sm-3 control-label">Death Cause</label>

                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="death_cause" required="true"  TextMode="MultiLine" placeholder="Cause of Death" CausesValidation="true" CssClass="form-control input-sm" />

                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="death_cause" ForeColor="Red" CssClass="form-control input-sm" ErrorMessage="*" Display="Dynamic" />
                            </div>
                        </div>

                        


                    </div>
                </div>
                
                <div class="panel-footer">
                    <div class="text-center">
                   <asp:Button runat="server" ID="save" CssClass="btn btn-default" Width="200" Text="Save Record" OnClick="save_Click"  /> 
                        <asp:Button runat="server" ID="cancle" CssClass="btn btn-default" Width="200px" Text="Cancel"  OnClick="cancle_Click1"  />
                      </div>
                </div>

            </div>
     
        </div>
        
        <div class="col-md-2">
            
        </div>
         </div>
    
</asp:Content>

