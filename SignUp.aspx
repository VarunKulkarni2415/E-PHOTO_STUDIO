<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Login2.css"/>
</head>
<body>
    <form id="form1" runat="server">
  <div class="wrapper login">
        <div class="container">
            <div class="col-left">
                <div class="login-text">
                    <h2>Welcome!</h2>
                    <p>Create your account.<br>For Free!</p>
                    <a href="Login2.aspx" class="btn">Login</a>
                </div>
            </div>

            <div class="col-right">
                <div class="login-form">
                    <h2>Sign Up</h2>
                  
                        <p>
                            <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="semail" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:TextBox ID="semail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </p>
                        <p>
                           <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="spass" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="spass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </p<p>
                           <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Wrong*" ControlToCompare="spass" ControlToValidate="scpass"></asp:CompareValidator>
                            <asp:TextBox ID="scpass" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        </p>
                        <p>
                           <asp:Label ID="Label4" runat="server" Text="Security Question"></asp:Label>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="secquestion" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:TextBox ID="secquestion" runat="server" placeholder="Security Question"></asp:TextBox>
                        </p>

                        <p>
                            <asp:Label ID="smessage" runat="server" Text=""></asp:Label>
                            <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                            <br>
                        </p>
                    <p>
                                <a href="Home.aspx"><-Back</a>
                            </p>
                        <%--<p>
                            <a href="">Forgot password?</a>
                        </p>--%>

                 
                </div>
            </div>

        </div>
    </div>
    </form>
</body>
</html>
