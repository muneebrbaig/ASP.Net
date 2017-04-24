<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SimpleMembership.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="panel panel-default ">
                    <div class="panel-heading">
                        <h3 class="panel-title">Login</h3>
                    </div>
                    <div class="panel-body">
                            <div id="loginForm">
                                <h5 class="alert alert-warning">
                                    <i class="fa fa-info-circle fa-lg"></i>&nbsp;Use your email and password to login.</h5>
                                <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false" ID="MyLogin" OnAuthenticate="MyLogin_Authenticate">
                                    <LayoutTemplate>
                                        <p class="validation-summary-errors ">
                                            <asp:Literal runat="server" ID="FailureText" />
                                        </p>
                                        <div class="input-group">
                                            <asp:Label runat="server"
                                                AssociatedControlID="UserName"
                                                CssClass="fa fa-envelope-o fa-fw"></asp:Label>
                                            <asp:TextBox runat="server" ID="UserName"
                                                placeholder="email"
                                                title="your email is your user name to login" />
                                            <div class="col-md-offset-1 col-sm-offset-1">
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error"
                                                ErrorMessage="The email is required." />
                                            </div>
                                        </div>
                                        <div class="input-group">
                                            <asp:Label runat="server"
                                                AssociatedControlID="Password"
                                                CssClass="fa fa-key fa-fw">
                                            </asp:Label>
                                            <asp:TextBox runat="server" ID="Password" TextMode="Password"
                                                placeholder="password"
                                                title="password" />
                                        <div class="col-md-offset-1 col-sm-offset-1">
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error"
                                                ErrorMessage="The password is required." />
                                        </div>
                                        </div>
                                        
                                        <hr/>
                                        <div class="input-group">
                                            <asp:Button runat="server" class="btn btn-success btn-block"
                                                CommandName="Login" Text="Log in" />
                                        </div>
                                    </LayoutTemplate>
                                </asp:Login>
                            </div>
                        
                    </div>
                    <div class="panel-footer">
                      
                    </div>
                </div>

</asp:Content>
