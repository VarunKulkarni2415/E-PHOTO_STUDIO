<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="ForgotPass" %>

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
                         <a href="SignUp.aspx" class="btn">Sign Up</a>
                        <p>
                            <br>
                         <a href="Login2.aspx" class="btn">Login</a>
                            </p>
                    </div>
                </div>

                <div class="col-right">
                    <div class="login-form">
                        <h2>Login- Security Question</h2>
                        
                            <p>
                                <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="Label2" runat="server" Text="Security Answer"></asp:Label>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="secanswer" runat="server" placeholder="Enter Security Answer"></asp:TextBox>


                            </p>
                            <p>
                                <asp:Label ID="formessage" runat="server" Text=""></asp:Label>
                                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                <br>
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
