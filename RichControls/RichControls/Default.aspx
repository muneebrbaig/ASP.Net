<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RichControls._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <!--
  https://goo.gl/IfMA1O
  -->
  <div class="col-md-6">
    <div class="panel panel-default">
      <div class="panel-heading">Calendar</div>
      <div class="panel-body">
        <div class="col-md-6">
          <asp:Calendar ID="Calendar1" runat="server" Caption="Select a date:" NextPrevStyle-CssClass="btn btn-danger" CssClass=" table table-responsive table-striped" NextPrevFormat="ShortMonth" SelectionMode="DayWeek">
            <NextPrevStyle CssClass="alert alert-danger"></NextPrevStyle>
            <SelectedDayStyle CssClass="alert alert-success" />
            <WeekendDayStyle CssClass="disabled" />
          </asp:Calendar>
        </div>
      </div>
      <div class="panel-footer">
        <div class="row">
          <span>Selected Dates:</span><asp:Button runat="server" Text="OK" CssClass="btn btn-default btn-sm pull-right" OnClick="Unnamed1_Click" />
        </div>
        <div id="divCalResult" runat="server" class="alert alert-warning"></div>
      </div>
    </div>

  </div>
  <div class="col-md-6">
    <div class="panel panel-default">
      <div class="panel-heading">Calendar</div>
      <div class="panel-body">
        <div class="col-md-6">
          <asp:Calendar ID="Calendar2" runat="server" />

        </div>
      </div>
      <div class="panel-footer">
        <div class="row">
          <span>Selected Dates:</span><asp:Button runat="server" Text="OK" CssClass="btn btn-default btn-sm pull-right" OnClick="Unnamed1_Click"/>
        </div>
        <div id="div1" runat="server" class="alert alert-warning"></div>
      </div>
    </div>

  </div>

</asp:Content>
