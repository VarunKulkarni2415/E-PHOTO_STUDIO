<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Login2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper login">
            <div class="container">
                <div class="col-left">
                    <div class="login-text">
                        <h2>Welcome!</h2>
                        <p>Create your account.<br>
                            For Free!</p>
                        <a href="SignUp.aspx" class="btn">Sign Up</a>
                    </div>
                </div>

                <div class="col-right">
                    <div class="login-form">
                        <h2>Login</h2>
                       
                            <p>
                                <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="lemail" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                                <asp:TextBox ID="lemail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="lpass" ForeColor="DarkRed"></asp:RequiredFieldValidator>

                                <asp:TextBox ID="lpass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>


                            </p>
                            <p>
                                <asp:Label ID="lmessage" runat="server" Text=""></asp:Label>
                                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                <br>
                            </p>
                            <p>
                                <a href="ForgotPass.aspx">Forgot password?</a>
                            </p>
                        <p>
                                <a href="Home.aspx"><-Back</a>
                            </p>

                  
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
