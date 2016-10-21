<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff_Education.aspx.cs" Inherits="LucentTechnologies.Administrator.Staff_Education" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="page-header">
            <h3>Staff Education</h3>
        </div>
     <div class="row">
        <div class="col-md-3">
           
        </div>
        <div class="col-md-6">
            <br />
            
           
            <div class="panel panel-default">
                <div class="panel-heading">
                    
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
               
                    

                    </div>
                <div class="panel-body">

                    <div class="form-horizontal">
                           
                        <div class="form-group">
                            <label for="staff"  class="col-sm-4 control-label">Staff ID</label>

                       <div class="col-sm-6">
                           <asp:SqlDataSource ID="StaffData" runat="server" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT [Staff_ID] FROM [Staff_View]"></asp:SqlDataSource>
                        <asp:DropDownList runat="server" ID="staffid" CausesValidation="true" CssClass="form-control dropdown" DataSourceID="StaffData" DataTextField="Staff_ID" DataValueField="Staff_ID">
                            <asp:ListItem Text=""></asp:ListItem>
                        </asp:DropDownList>
                  </div>
                      <div class="col-sm-2">
                          <asp:RequiredFieldValidator runat="server" ForeColor="Red" CssClass="form-control" ControlToValidate="staffid" ErrorMessage="*" Display="Dynamic" />
                      </div>
                   </div>


                      

                   
                       <div class="form-group">
                           <label for="edu" id="education" class="col-sm-4 control-label">Hieghest Education</label>

                           <div class="col-sm-6">
                               <asp:DropDownList runat="server" ID="hiegheducation" CssClass="form-control dropdown" CausesValidation="true" >
                                   <asp:ListItem Text=""></asp:ListItem>
                                   <asp:ListItem Text="University Degree" Value="University Degree"></asp:ListItem>
                                   <asp:ListItem Text="College Diploma" Value="College Diploma"></asp:ListItem>
                                   <asp:ListItem Text="School of Nursing and Midwifery" Value="School of Nursing and Midwifery"></asp:ListItem>
                                   <asp:ListItem Text="Secondary Cert" Value="Secondary Cert"></asp:ListItem>
                                   <asp:ListItem Text="Primary Cert" Value="Primary Cert" />
                               </asp:DropDownList>
                           </div>

                           <div class="col-sm-2">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="hiegheducation" ErrorMessage="*" ForeColor="Red" Display="Dynamic" CssClass="form-control" />
                           </div>
                       </div>


                        <div class="form-group">
                            <label for="institutio" class="col-sm-4 control-label">Institution Name</label>
                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="institutionname" required="true" TextMode="SingleLine" placeholder="Institution Name" CausesValidation="true" CssClass="form-control"/>
                           </div>
                             <div class="col-sm-1">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="institutionname" ErrorMessage="*" ForeColor="Red" Display="Dynamic" CssClass="form-control" />
                            
                                </div>
                        </div>

                        
                        <div class="form-group">
                            <label for="gar" class="col-sm-4 control-label">Graduation Date</label>
                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="date" required="true" TextMode="Date" placeholder="Graduation Date" CausesValidation="true" CssClass="form-control"/>
                                
                                
                            </div>
                            <div class="col-sm-1">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="date" ErrorMessage="*" ForeColor="Red" Display="Dynamic" CssClass="form-control" />
                            
                                </div>
                        </div>






                    </div>
                </div>

                <div class="panel-footer">
                    <div class="text-center">
                   <asp:Button runat="server" ID="save" CssClass="btn btn-default" Width="200" Text="Save Staff Education" OnClick="save_Click"  />
                         <asp:Button runat="server" ID="cancel" CssClass="btn btn-default " Width="200" Text="Cancel"   />
                   
            
                      </div>
                </div>

            </div>
     
        </div>
        <div class="col-md-2">
            
        </div>
         </div>
</div>
</asp:Content>
