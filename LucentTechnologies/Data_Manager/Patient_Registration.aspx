<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Registration.aspx.cs" Inherits="LucentTechnologies.Data_Manager.Patient_Registration" %>

<%@ Register Assembly="AjaxControlToolKit" Namespace="AjaxControlToolKit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
     <div class="container">
        <div class="page-header">
            <h3>New Patient Registration Form</h3>
        </div>

         <ul class="nav nav-tabs"> 
         <li class="active"><a href="Patient_Registration.aspx">Patient Registration</a></li> 
         <li><a href="../Doctors/Diagnosis.aspx">Diagnosis Detail </a></li> 
         <li><a href="../Lab_Technicians/Laboratory.aspx">Laboratory Detail</a></li> 
         <li><a href="Birth.aspx">Birth Registration</a></li>
         <li><a href="Death.aspx">Death Registration</a></li>
         <li><a href="Payment.aspx">Payment</a></li>
         <li><a href="General_Ward1.aspx">Admissions</a></li>
        <li><a href="../Reports/ReportsPage.aspx">Print</a></li>
         </ul>

        <br />
         <div class="row col-sm-2">

         </div>
         <div class="row col-sm-8">
        <div class="panel panel-default">
            <div class="panel-heading">
                
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
               
            </div>
            
            <div class="panel-body ">
                <!--Registration begins-->
                <h5>Patients Paersonal Details</h5>
                <hr />
                <div class="form form-horizontal">
                    <div class="form-group">
                        <label for="firstname" class="col-sm-4 control-label" >Firstname</label>
                        <asp:TextBox runat="server" ID="firstname" CausesValidation=" true" ValidateRequestMode="Enabled" required="true"
                            placeholder="Firstname" CssClass="col-sm-6 form-control" TextMode="SingleLine"  />
                       
                         <asp:RequiredFieldValidator runat="server" ControlToValidate="firstname" CssClass="col-sm-2"  ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" />
                   
                            </div>
                       
               

                    <div class="form-group">
                        <label for="surname" class="col-sm-4 control-label" >Surname</label>
                        <asp:TextBox runat="server" ID="surname" CausesValidation="true" ValidateRequestMode="Enabled" required="true"
                            placeholder="Surname" CssClass="col-sm-6 form-control" TextMode="SingleLine" />

                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ControlToValidate="surname" ErrorMessage="*" ForeColor="Red" Display="Dynamic"  SetFocusOnError="true"/>




                    </div>

                    <div class="form-group ">
                        <label for="lastname" class="control-label col-sm-4">Lastname</label>
                        <asp:TextBox runat="server" ID="lastname" CausesValidation="false" TextMode="SingleLine" 
                            placeholder="Lastname" CssClass="form-control col-sm-6" />
                           <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ControlToValidate="lastname" ErrorMessage="*" ForeColor="Red" Display="Dynamic"  SetFocusOnError="true"/>
                        
                    </div>

                    <div class="form-group">
                        <label for="gender" class="control-label col-sm-4" >Patient Gender</label>
                        <asp:DropDownList runat="server" ID="gender"  ValidateRequestMode="Enabled" CssClass="form-control col-sm-6" required="true" CausesValidation="true" >
                            <asp:ListItem  Text="Gender"></asp:ListItem>
                            <asp:ListItem Value="Male" Text="  Male  "></asp:ListItem>
                            <asp:ListItem Value="Female" Text="  Female  "></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2"  ControlToValidate="gender" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" />
                    </div>
                    
                    <div class="form-group">
                        
                        <label for="date" class="control-label col-sm-4" >Today's Date</label>
                        <asp:TextBox runat="server" ID="date" required="true"  ValidateRequestMode="Enabled" CssClass=" col-sm-6 form-control"  CausesValidation="true"
                            placeholder="Date" />
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="date" />
                         <ajaxToolkit:CalendarExtender runat="server" TargetControlID="date" CssClass="btn btn-primary" TodaysDateFormat="dd/MM/yyyy" />
                       </div>

                      <div class="form-group">
                        
                        <label for="phone" class=" col-sm-4 control-label" > Number</label>
                        <asp:TextBox runat="server" ID="phone" required="true"   TextMode="Number" ValidateRequestMode="Enabled" CssClass="form-control col-sm-6"  CausesValidation="true"
                            placeholder="Phone Number" />
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="phone" />
                    </div>

                    <div class="form-group">
                        
                        <label for="age" class="control-label col-sm-4" >Age Group </label>
                        <asp:TextBox runat="server" ID="age" required="true"  TextMode="Number" ValidateRequestMode="Enabled" CssClass="form-control col-sm-6"  CausesValidation="true"
                            placeholder="Patient Age" />
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="age" />
                    

                    </div>

                    <div class="form-group">
                        
                        <label for="status" class="control-label col-sm-4" >Marital Status </label>
                        <asp:DropDownList runat="server" CssClass=" col-sm-6 form-control" CausesValidation="true" ValidateRequestMode="Enabled" ID="status" >
                            <asp:ListItem Text=" Status"></asp:ListItem>
                            <asp:ListItem Value="Single" Text="Single"></asp:ListItem>
                            <asp:ListItem Value="Married" Text="Married" ></asp:ListItem>
                            <asp:ListItem Value="Divorce" Text="Divorce"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="status" />
                    

                    </div>

                    
                   <div class="form-group">
                        
                        <label for="nationality" class="control-label col-sm-4" >Patient's Nationality</label>
                        <asp:DropDownList runat="server" CssClass="form-control col-sm-6"  CausesValidation="true" ValidateRequestMode="Enabled" ID="nationality" >
                            <asp:ListItem Text="Nationality"></asp:ListItem>
                            <asp:ListItem Value="Nigerian" Text="Nigerian"></asp:ListItem>
                            <asp:ListItem Value="Non-Nigerian" Text="Non-Nigerian" ></asp:ListItem>
                            
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="nationality" />
                    

                    </div>

                    <div class="form-group">
                        
                        <label for="religion" class="control-label col-sm-4" >Religious Believe </label>
                        <asp:DropDownList runat="server" CssClass="form-control col-sm-6"  CausesValidation="true" ValidateRequestMode="Enabled" ID="religion" >
                            <asp:ListItem Text="Religion"></asp:ListItem>
                            <asp:ListItem Value="Christianity" Text="Christianity"></asp:ListItem>
                            <asp:ListItem Value="Islam" Text="Islam" ></asp:ListItem>
                            <asp:ListItem Value="Traditional" Text="Traditional"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="religion" />
                    

                    </div>

                     <div class="form-group">
                        
                        <label for="state" class="control-label col-sm-4" >Patient's State of Origin  </label>
                        <asp:DropDownList runat="server" CssClass="form-control col-sm-6"  CausesValidation="true" ValidateRequestMode="Enabled" ID="state" >
                            <asp:ListItem Text="State"></asp:ListItem>
                            <asp:ListItem Value="Adamawa" Text="Adamawa"></asp:ListItem>
                            <asp:ListItem Value="Abia" Text="Abia" ></asp:ListItem>
                            <asp:ListItem Value="" Text=""></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="state" />
                    </div>
               

                     <div class="form-group">
                        <br />
                        <label for="lga" class="control-label col-sm-4" > LGA </label>
                        <asp:TextBox runat="server" required="true" CausesValidation="true" ID="lga" TextMode="SingleLine" ValidateRequestMode="Enabled" placeholder="LGA of Origin" CssClass="form-control col-sm-6"/>
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="lga" />
                    </div>


                   <div class="form-group">
                        
                        <label for="address" class="control-label col-sm-4" > Patient's Address </label>
                        <asp:TextBox runat="server" required="true" CausesValidation="true" ID="address" TextMode="MultiLine"  ValidateRequestMode="Enabled" placeholder="Home Address" CssClass="form-control col-sm-6"/>
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="address" />
                    </div>

                    
                    <br />
                    <h4>Patient Next of Kin Details</h4>
                    <hr />


                 <div class="form-group">
                     
                        <label for="fullname" class="control-label col-sm-4" >Fullname</label>
                        <asp:TextBox runat="server" ID="fullname" CausesValidation=" true" ValidateRequestMode="Enabled" required="true"
                            placeholder="Next of Kin Fullname" CssClass="form-control col-sm-6" TextMode="SingleLine"  />
                       
                         <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ControlToValidate="fullname"  ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" />
                  </div>
                       

                 <div class="form-group">
                        
                        <label for="phonenumber" class="control-label col-sm-4" >Number</label>
                        <asp:TextBox runat="server" ID="phonenumber" required="true"   TextMode="Number" ValidateRequestMode="Enabled" CssClass="form-control col-sm-6"  CausesValidation="true" placeholder="Phone Number" />
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="phonenumber" />
                    </div>


                     <div class="form-group">
                       
                        <label for="relationship" class="control-label col-sm-4" >Relationship</label>
                        <asp:DropDownList runat="server" CssClass="form-control col-sm-6"  CausesValidation="true" ValidateRequestMode="Enabled" ID="relationship" >
                            <asp:ListItem Text="Relationship"></asp:ListItem>
                            <asp:ListItem Value="Brother" Text="Brother"></asp:ListItem>
                            <asp:ListItem Value="Sister" Text="Sister" ></asp:ListItem>
                            
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" CssClass="col-sm-2" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="nationality" />
                    

                    </div>


                 <div class="form-group">
                        
                        <label for="email" class="control-label col-sm-4" >Email Address </label>
                        <asp:TextBox runat="server" ID="email" TextMode="Email"  CssClass="form-control col-sm-6"    placeholder="Email Address" />
                        
                    </div>


                <div class="form-group">
                        
                        <label for="nextofkinaddress" class="label-control col-sm-4" > Patient's Next of Kin Address </label>
                        <asp:TextBox runat="server" required="true" CausesValidation="true" ID="nextofkinaddress" TextMode="MultiLine"  ValidateRequestMode="Enabled" placeholder="Next of Kin Home Address" CssClass="form-control col-sm-6"/>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="nextofkinaddress" CssClass="col-sm-2" />
                    </div>




                </div>
            </div>
            <div class="panel-footer">
                <div class="text-center">
                   <asp:Button runat="server" ID="register" CssClass="btn btn-default" Width="180" Text="Register Patient"  OnClick="register_Click" />
                    
                    <asp:Button runat="server" ID="cancel" CssClass="btn btn-default" Text="Cancel Registration" />
                   
                 
                      </div>
        

            </div>
        </div>
</div>
         <div class="row col-sm-2">


         </div>

    </div>

   

   
</asp:Content>

