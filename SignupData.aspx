<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SignupData.aspx.cs" Inherits="SignupData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" DataKeyNames="userid" DataSourceID="SqlDataSource1" Height="228px" Width="920px" BorderColor="#33CCFF" BorderStyle="Groove" BorderWidth="10pt" ForeColor="Black" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="userid" HeaderText="userid" InsertVisible="False" ReadOnly="True" SortExpression="userid" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="conpass" HeaderText="conpass" SortExpression="conpass" />
            <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
            <asp:ButtonField CommandName="Del" Text="Disable" />
        </Columns>
    </asp:GridView>
        </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myCon %>" SelectCommand="SELECT * FROM [reguser]"></asp:SqlDataSource>
</asp:Content>

