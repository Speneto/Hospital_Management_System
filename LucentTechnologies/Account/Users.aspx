<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="LucentTechnologies.Account.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
     <br />
    <div class="page-header">
        
    </div>
    <div class="col-md-1">

    </div>
       <div class="col-md-8">
       <div class="jumbotron btn btn-primary">
           <h2>Welcome You have Successfully login as  <%: Session["userty"] %></h2>
       </div>
      </div>
       </div>
</asp:Content>
