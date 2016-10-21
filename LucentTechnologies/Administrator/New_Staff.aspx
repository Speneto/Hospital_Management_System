<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New_Staff.aspx.cs" Inherits="LucentTechnologies.Administrator.New_Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="page-header">
            <h3>Staff Biodata Registration </h3>
           
        </div>

        <!--panel-->
        <div class="panel panel-default">
            <div class="panel-heading">
                
                    <asp:Label runat="server" ID="success" Visible="false"  data-dismiss="alert" Text="Record added Successfully" class="alert alert-success alert-dismissable  btn-group-justified input-group-sm"   />
                        <asp:Label runat="server" ID="failure" Visible="false"  data-dismiss="alert"  class="alert alert-danger alert-dismissable  btn-group-justified input-group-sm"   />
               
            </div>

            <div class="panel-body">
                <div class="form-inline">
                    <div class="form-group">
                        <label for="surname" class="control-label" >Staff Surname</label>
                        <asp:TextBox runat="server" ID="surname" CausesValidation="true" required="true" placeholder="Surname" CssClass="form-control" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="surname" Display="Dynamic" ForeColor="Red" ErrorMessage="*" SetFocusOnError="true" />
                    </div>

                <div class="form-group">
                    <label for="firstname" class="control-label" >Staff Firstname</label>
                    <asp:TextBox runat="server" ID="firstname" CausesValidation="true" reqired="true" placeholder="Firstname" CssClass="form-control" TextMode="SingleLine" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="firstname" Display="Dynamic" ForeColor="Red" ErrorMessage="*" SetFocusOnError="true" />
                </div>

                <div class="form-group">
                    <label for="lastname" class="control-label" >Staff Lastname</label>
                    <asp:TextBox runat="server" ID="lastname" CssClass="form-control" TextMode="SingleLine" placeholder="Staff Lastname" />
                    <!---No validator-->
                </div>


              <div class="form-group">
                  <br />
                <label for="birthdate" class="control-label" >Staff Birth Date</label>
                <asp:TextBox runat="server" ID="birthdate" CausesValidation="true" TextMode="Date" placeholder="Birth Date" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="birthdate" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" />
            </div>

              <div class="form-group">
                  <br />
                  <label for="status" class="control-label">Staff Marital Status</label>
                  <asp:DropDownList ID="status" runat="server" CausesValidation="true" CssClass="form-control">
                      <asp:ListItem Text="Select Marital Status"></asp:ListItem>
                      <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                      <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                      <asp:ListItem Text="Divorce" Value="Divorce"></asp:ListItem>
                  </asp:DropDownList>
              </div>

          <div class="form-group">
               <br />
                  <label for="gender" class="control-label">Staff Gender</label>
                  <asp:DropDownList ID="gender" runat="server" CausesValidation="true" CssClass="form-control">
                      <asp:ListItem Text="Select Staff Gender"></asp:ListItem>
                      <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                      <asp:ListItem Text="Female" Value="Fimale"></asp:ListItem>
                      
                  </asp:DropDownList>
          </div>
        

            <div class="form-group" >
                <br />
                  <label for="department" class="control-label">Staff Department</label>
                 <asp:DropDownList runat="server" ID="department" CssClass="form-control" CausesValidation="true">
                     <asp:ListItem Text="Get Staff Department" />
                     <asp:ListItem Text="Administration"  Value="Administration"/>
                     <asp:ListItem Text="Medical" Value="Medical" />
                     <asp:ListItem Text="Others" Value="Others" />
                 </asp:DropDownList>

            </div>

             <div class="form-group">
                <br />
                <label for="phone" class="control-label">Phone Number</label>
                <asp:TextBox runat="server" ID="phone" CssClass="form-control" placeholder="Staff Phone Number" required="true" TextMode="Number" CausesValidation="true" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="phone" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" />
            </div>


           <div class="form-group" >
                <br />
                  <label for="rank" class="control-label">Staff Rank</label>
                 <asp:DropDownList runat="server" ID="rank" CssClass="form-control" CausesValidation="true">
                     <asp:ListItem Text="Select Staff Rank" />
                     <asp:ListItem Text="Nurse"  Value="Nurse"/>
                     <asp:ListItem Text="Laboratory Technician" Value="Laboratory Technician" />
                     <asp:ListItem Text="Medical Doctor" Value="Medical Doctor" />
                     <asp:ListItem Text="Data Manager" Value="Data Manager" />
                     <asp:ListItem Text="Others" Value="Others" />
                 </asp:DropDownList>

            </div>


            <div class="form-group" >
                <br />
                  <label for="state" class="control-label">Staff State </label>
                 <asp:DropDownList runat="server" ID="state" CssClass="form-control" CausesValidation="true">
                     <asp:ListItem Text="Select Staff's State of Origin" />
                     <asp:ListItem Text="Adamawa"  Value="Adamawa"/>
                     <asp:ListItem Text="Abia" Value="Abia" />
                     
                 </asp:DropDownList>

            </div>

           <div class="form-group">
                <br />
                <label for="lga" class="control-label">Local Govt Area</label>
                <asp:TextBox runat="server" ID="lga" CssClass="form-control" placeholder="LGA of Origin" required="true" TextMode="SingleLine" CausesValidation="true" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="lga" ErrorMessage="*" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" />
            </div>


         
           <div class="form-group">
                <br />
                <label for="address" class="control-label">Home Address</label>
                <asp:TextBox runat="server" ID="address" CssClass="form-control" placeholder="Enter Staff Address" required="true" TextMode="MultiLine" CausesValidation="true" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="lga" ErrorMessage="*" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" />
            </div>










                </div>
            </div>


            <div class="panel-footer">
                 <div class="text-center">
                   <asp:Button runat="server" ID="add_staff" CssClass="btn btn-default" Width="180" Text="Register Staff" OnClick="add_staff_Click"   />
                    
                    <asp:Button runat="server" ID="cancel" CssClass="btn btn-default" Text="Cancel Registration" />
                   
                <a class="btn btn-default" href="Staff_Education.aspx">Staff Education &raquo;</a>
            
                      </div>
            </div>






        </div>

    </div>
</asp:Content>
