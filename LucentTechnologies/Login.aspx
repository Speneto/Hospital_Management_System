<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LucentTechnologies.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-3">
           
        </div>
        <div class="col-md-6">
            <br />
            <br />
            <br />
            <br />
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="text-center"> <strong>USERS LOGIN</strong> </div>
                    

                    </div>
                <div class="panel-body btn btn-primary btn-group-justified">

                    <div class="form-horizontal">
                        
                             <asp:label runat="server" ID="credentials" CssClass="form-control alert-danger btn-group-justified" Text="Wrong Username or Password, Please try again." Visible="false" />
                       <br />
                        
                          <div class="form-group">
                            <label for="Username"  class="col-sm-3 control-label">Username</label>

                       <div class="col-sm-6">
                    <asp:TextBox runat="server" ID="username" required="true" placeholder="Username" CausesValidation="True"  CssClass="form-control input-sm"   >

                    </asp:TextBox> 

                  </div>
                      <div class="col-sm-2">
                          <asp:RequiredFieldValidator runat="server" ForeColor="Red" CssClass="form-control" ControlToValidate="username" ErrorMessage="*" Display="Dynamic" />
                      </div>
                   </div>


                        <div class="form-group">
                            <label for="Pasword" id="pass" class="col-sm-3 control-label">Password</label>

                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="Password" required="true" TextMode="Password" placeholder="Password" CausesValidation="true" CssClass="form-control input-sm" />

                            </div>
                            <div class="col-sm-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ForeColor="Red" CssClass="form-control" ErrorMessage="*" Display="Dynamic" />
                            </div>
                        </div>

                   
                       <div class="form-group">
                           <label for="User Category" id="category" class="col-sm-3 control-label">Category</label>

                           <div class="col-sm-6">
                               <asp:DropDownList runat="server" ID="Category" CssClass="form-control input-sm" CausesValidation="true" >
                                   <asp:ListItem Text=""></asp:ListItem>
                                   <asp:ListItem Text="Administrator" Value="1"></asp:ListItem>
                                   <asp:ListItem Text="Doctor" Value="2"></asp:ListItem>
                                   <asp:ListItem Text="Data Manager" Value="3"></asp:ListItem>
                                   <asp:ListItem Text="Laboratory Scientist" Value="4"></asp:ListItem>
                                   <asp:ListItem Text="Nurse" Value="5"></asp:ListItem>
                               </asp:DropDownList>
                           </div>

                           <div class="col-sm-2">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="Category" ErrorMessage="*" ForeColor="Red" Display="Dynamic" CssClass="form-control" />
                           </div>
                       </div>


                    </div>
                </div>

                <div class="panel-footer">
                    <div class="text-center">
                   <asp:Button runat="server" ID="Login" CssClass="btn btn-default" Width="200" Text="LOGIN" OnClick="Login_Click"  />
                   
            
                      </div>
                </div>

            </div>
     
        </div>
        <div class="col-md-2">
            
        </div>
         </div>

</asp:Content>
