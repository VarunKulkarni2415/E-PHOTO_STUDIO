<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="admingridviewsearch.aspx.cs" Inherits="admingridviewsearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

<asp:Button ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"></asp:Button>
<hr />
<asp:GridView ID="GridView1" runat="server"  BackColor="White" Height="228px" Width="920px" BorderColor="#33CCFF" BorderStyle="Groove" 
    BorderWidth="10pt" ForeColor="Black" AutoGenerateColumns="False"  >
    <Columns>
        <asp:BoundField HeaderText="OrderID" DataField="orderid" />
        <asp:BoundField HeaderText="Full Name" DataField="fullname"/>
        <asp:BoundField HeaderText="Moblie No" DataField="mobno" />
        <asp:BoundField HeaderText="Current Address" DataField="currentaddress"/>
        <asp:BoundField HeaderText="Event Type" DataField="eventtype"/>
        <asp:BoundField HeaderText="Event Address" DataField="eventaddress" />
        <asp:BoundField HeaderText="FromDate" DataField="fromdate" />
        <asp:BoundField HeaderText="ToDate" DataField="todate" />
        <asp:BoundField HeaderText="Packages" DataField="package" />
        <asp:BoundField HeaderText="Status" DataField="status" />
    </Columns>
            </asp:GridView>
            </center>
    </div>
</asp:Content>

