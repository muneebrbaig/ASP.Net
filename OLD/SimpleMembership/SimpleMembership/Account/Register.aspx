<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SimpleMembership.Account.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="panel panel-default ">
        <div class="panel-heading">
            <h3>Register</h3>
            <h5>Use the form below to create your account.</h5>
        </div>
        <div class="panel-body">
            <div class="alert alert-info">
                <i class="fa fa-quote-left fa-lg pull-left fa-border"></i>
                Passwords are required to be a combination of at least 6 Alphanumeric characters including 1 number and 1 uppercase.
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please review the errors and provide required info." Width="50%" CssClass="alert alert-danger" />
            <asp:Panel ID="registrationErrorMsg" class="alert alert-warning" runat="server" Visible="False">
                Some error occured during the Registration, please try again or contact Administrator.
				<br />
                <asp:Label runat="server" ID="ErrorDetails"></asp:Label>
            </asp:Panel>
            <div class="form-horizontal">
                <div class="well well-sm">
                    <legend>Account </legend>
                    <div class="form-group">
                        <span class="col-md-2 control-label">Email address</span>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email"
                                placeholder="Email" ToolTip="your email address is your user name to login." />
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="field-validation-error "
                                ErrorMessage="The email address field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <span class="col-md-2 control-label">Password</span>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ID="Password" CssClass="form-control" TextMode="Password"
                                placeholder="Password"
                                ToolTip="Passwords are required to be a combination of at least 6 Alphanumeric characters including 1 number and 1 uppercase." />
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                CssClass="field-validation-error" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <span class="col-md-2 control-label">Confirm password</span>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ID="ConfirmPassword" CssClass="form-control" TextMode="Password"
                                placeholder="Confirm the Password" />
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-offset-2 col-md-1 ">
                <asp:Button runat="server" Text="Register" ID="btnRegister" ClientIDMode="Static"
                    CssClass="btn btn-primary btn-sm" OnClick="btnRegister_Click" />
            </div>
        </div>
        <div class="panel-footer">
        </div>
    </div>
</asp:Content>
