<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventBookingForm.aspx.cs" Inherits="EventBookingForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
             <link rel="stylesheet" href="Login2.css"/>
</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="wrapper login">
            <div class="container">
                <div class="col-left">
                    <div class="login-text">
                        <h2>Welcome!</h2>
                         <a href="SignUp.aspx" class="btn">Sign Up</a>
                        <p>
                            <br>
                         <a href="Login2.aspx" class="btn">Login</a>
                            </p>
                    </div>
                </div>

                <div class="col-right">
                    <div class="login-form">
                        <h2>Book Event Now!</h2>

                        <p>
                            <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="fullname" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="fullname" runat="server" placeholder="Full Name"></asp:TextBox>

                        </p>
                        <p>
                            <asp:Label ID="Label2" runat="server" Text="Phone"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="phone" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="phone" runat="server" placeholder="Phone"></asp:TextBox>


                        </p>
                        <p>
                            <asp:Label ID="Label3" runat="server" Text="Current Address"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="cadd" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="cadd" runat="server" placeholder="Current Address"></asp:TextBox>


                        </p>
                        <p>
                            <asp:Label ID="Label6" runat="server" Text="Event Address"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="eadd" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="eadd" runat="server" placeholder="Event Address"></asp:TextBox>


                        </p>
                        <p>
                            <asp:Label ID="Label7" runat="server" Text="Select  Event"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                            <asp:DropDownList ID="DropDownList1" runat="server" placeholder="--Select--">
                                <asp:ListItem>--Select Event--</asp:ListItem>
                                <asp:ListItem>Engagement</asp:ListItem>
                                <asp:ListItem>Pre-Wedding</asp:ListItem>
                                <asp:ListItem>Wedding</asp:ListItem>
                                <asp:ListItem>Post-Wedding</asp:ListItem>
                                <asp:ListItem>Maternity</asp:ListItem>
                                <asp:ListItem>Baby Shower</asp:ListItem>
                                <asp:ListItem>Model Shoot</asp:ListItem>
                                <asp:ListItem>Child Shoot</asp:ListItem>
                                <asp:ListItem>Food Photography</asp:ListItem>
                            </asp:DropDownList>

                        </p>


                        <p>
                            <asp:Label ID="Label4" runat="server" Text="From Date"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtfromdate" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="txtfromdate" runat="server" placeholder="From Date"></asp:TextBox>


                            <ajaxToolkit:CalendarExtender ID="txtfromdate_CalendarExtender" runat="server" BehaviorID="TextBox2_CalendarExtender" DaysModeTitleFormat="yyyy-MM-dd" TargetControlID="txtfromdate" />


                        </p>
                        <p>
                            <asp:Label ID="Label5" runat="server" Text="To Date"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txttodate" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="txttodate" runat="server" placeholder="To Date"></asp:TextBox>


                            <ajaxToolkit:CalendarExtender ID="txttodate_CalendarExtender" runat="server" BehaviorID="TextBox3_CalendarExtender" DaysModeTitleFormat="yyyy-MM-dd" TargetControlID="txttodate" />


                        </p>
                        <p>
                            <asp:Label ID="Label8" runat="server" Text="Select Packages"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="DropDownList2" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>--Select Packages--</asp:ListItem>
                                <asp:ListItem>Bronze</asp:ListItem>
                                <asp:ListItem>Silver</asp:ListItem>
                                <asp:ListItem>Gold</asp:ListItem>
                            </asp:DropDownList>

                        </p>
                        <p>
                            <%--                                 <asp:Label ID="formessage" runat="server" Text=""></asp:Label>--%>
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

                            <br>
                            <%--                                <asp:Button ID="Button2" runat="server" Text="<<Back" OnClick="Button2_Click" />--%>
                        </p>
                         <p>
                                <a href="Login2.aspx">Logout</a>
                            </p>
                    </div>
                </div>

            </div>
        </div>
    </form>
    </form>
</body>
</html>
