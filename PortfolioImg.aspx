<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PortfolioImg.aspx.cs" Inherits="PortfolioImg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" CssClass="auto-style1" BackColor="White"  Height="228px" Width="920px" BorderColor="#33CCFF" BorderStyle="Groove" BorderWidth="10pt" ForeColor="Black">
      
         <Columns>
            <asp:BoundField DataField="Id" HeaderText="Image Id" />
            <asp:TemplateField HeaderText="Images">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="205px" Width="270px" ImageUrl='<%#Eval("picPath") %>'/> 
            </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField CommandName="Del" Text="Remove"/>
        
             </Columns>
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myCon %>" SelectCommand="SELECT * FROM [UploadPhoto]"></asp:SqlDataSource>
</asp:Content>

