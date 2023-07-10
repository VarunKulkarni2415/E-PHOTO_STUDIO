<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Portfolio.aspx.cs" Inherits="Portfolio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Portfolio.css" />


    <%-- <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 45px;
        }
    </style--%>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


        <div style="text-size-adjust: initial">
            <center>
            <h1>Gallery</h1>
                                         
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
    
                  <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picPath") %>' Height="223px" Width="440px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                     </center>
        </div>


    </form>
</body>
</html>
