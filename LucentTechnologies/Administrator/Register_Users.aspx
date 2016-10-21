<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register_Users.aspx.cs" Inherits="LucentTechnologies.Administrator.Register_Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
    <br />
    <div class="container">
    <div class="page-header">
        <h3>USERS REGISTRATION</h3>
    </div>
    

    <div class="row">
        <div class="col-md-3">

        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
               
                </div>

                <div class="panel-body">
                    
                    <div class="form-inline">
                    
                        <asp:SqlDataSource runat="server" ID="StaffData" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [Staff_ID] FROM [Staff_View]"></asp:SqlDataSource>
                    <div class="form-group">
                        <label for="staff_id" class="col-sm-3 control-label">Staff ID</label>
                        <div class="col-sm-6">
                            <asp:DropDownList runat="server" ID="staff_id" CssClass="form-control col-sm-3" CausesValidation="true" DataSourceID="StaffData" DataTextField="Staff_ID" DataValueField="Staff_ID">
                                <asp:ListItem Text=""></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="staff_id" ForeColor="Red" Display="Dynamic" CssClass="form-control" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="user_name" class="col-sm-3 control-label">User Name</label>
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="user_name" CausesValidation="true" required="true" placeholder="Enter User Name" CssClass="form-control" />
                        </div>
                        <div class="col-sm-2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="user_name" ForeColor="Red" CssClass="form-control" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                  <div class="form-group">
                      <label for="pass_word" class="col-sm-3 control-label">User PassWord</label>
                      <div class="col-sm-6">
                          <asp:TextBox runat="server" ID="pass_word" CausesValidation="true" required="true" placeholder="Enter PassWord" TextMode="Password" CssClass="form-control" />
                      </div>
                      <div class="col-sm-2">
                          <asp:RequiredFieldValidator runat="server" ControlToValidate="pass_word" ForeColor="Red" ErrorMessage="*" CssClass="form-control" Display="Dynamic" ></asp:RequiredFieldValidator>
                      </div>
                  </div>


                   <div class="form-group">
                       <label for="category_type" class="col-sm-3 control-label">Category Type</label>
                       <div  class="col-sm-6">
                           <asp:DropDownList runat="server" ID="category_type" CausesValidation="true" CssClass="form-control">
                               <asp:ListItem Text="Select User Category"></asp:ListItem>
                               <asp:ListItem Text="Administrator" Value="Administrator"></asp:ListItem>
                               <asp:ListItem Text="Doctor" Value="Doctor"></asp:ListItem>
                               <asp:ListItem Text="Data Manager" Value="Data Manager"></asp:ListItem>
                               <asp:ListItem Text="Laboratory Scientist" Value="Laboratory Scientist"></asp:ListItem>
                               <asp:ListItem Text="Nurse" Value="Nurse"></asp:ListItem>
                           </asp:DropDownList>
                       </div>
                       <div class="col-sm-2">
                           <asp:RequiredFieldValidator runat="server" ControlToValidate="category_type" ErrorMessage="*" ForeColor="Red" CssClass="form-control" Display="Dynamic"></asp:RequiredFieldValidator>
                       </div>
                   </div>
                        
                </div>
              
                <div class="panel-footer">
                    <div class="text-center">
                        <asp:Button runat="server" ID="save" CssClass="btn btn-default" Text="Save" Width="200" OnClick="save_Click" />
                        <asp:Button runat="server"  ID="cancle"  CssClass="btn btn-default" Text="Cancle" Width="200" OnClick="cancle_Click"  />
                        
                    </div>
            

                </div>
          
               
            </div>
        </div>
        <div class="col-md-2">

        </div>
    </div>
   </div>
        </div>
</asp:Content>
