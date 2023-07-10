<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="orderdata.aspx.cs" Inherits="orderdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="orderid" DataSourceID="SqlDataSource1" BackColor="White" Height="228px" Width="920px" BorderColor="#33CCFF" BorderStyle="Groove" BorderWidth="10pt" ForeColor="Black" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="orderid" InsertVisible="False" ReadOnly="True" SortExpression="orderid" />
            <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
            <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
            <asp:BoundField DataField="currentaddress" HeaderText="currentaddress" SortExpression="currentaddress" />
            <asp:BoundField DataField="eventtype" HeaderText="eventtype" SortExpression="eventtype" />
            <asp:BoundField DataField="eventaddress" HeaderText="eventaddress" SortExpression="eventaddress" />
            <asp:BoundField DataField="fromdate" HeaderText="fromdate" SortExpression="fromdate" />
            <asp:BoundField DataField="todate" HeaderText="todate" SortExpression="todate" />
            <asp:BoundField DataField="package" HeaderText="package" SortExpression="package" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:ButtonField CommandName="upd" Text="Finish" />
            <asp:ButtonField CommandName="Del" Text="Delete" />
        </Columns>
    </asp:GridView>
        </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myCon %>" SelectCommand="SELECT * FROM [orderdetails]"></asp:SqlDataSource>
</asp:Content>

