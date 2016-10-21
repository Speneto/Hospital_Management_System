<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="General.ascx.cs" Inherits="LucentTechnologies.Controls.General" %>
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
                        <li><a runat="server" href="~/index.aspx">Home</a></li>
                        <li><a runat="server" href="~/About.aspx">About Us</a></li>
                        <li><a runat="server" href="~/Help.aspx">Help</a></li>
                        

                                    
                      

                    </ul>
                   <asp:LoginView runat="server" ViewStateMode="Disabled">
                        <AnonymousTemplate>
                            <ul class="nav navbar-nav navbar-right">
                                 <li><a runat="server" href="~/Login">Login</a></li>
                            </ul>
                      </AnonymousTemplate>
                    </asp:LoginView>
                    
                </div>
             





            </div>
            
