<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="WebApplication1.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="custom.css">
</head>
<body class="container">


    <form id="form1" runat="server">

        <div class="">
            <div class="navbar">
                <div class="nav-left">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="index.aspx" class="logo" runat="server">Rapid Bill Pay</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="AboutUs.pdf" Target="_blank" runat="server">About Us</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" NavigateUrl="Security.pdf" Target="_blank" runat="server">Security</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink4" NavigateUrl="ContactUs.aspx" runat="server">Contact Us</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink5" NavigateUrl="FAQ.aspx" runat="server">FAQ</asp:HyperLink>
                </div>

                <%--<div class="nav-right">
                    <asp:Button ID="btn1" style="width:40%;" runat="server" Text="USER LOGIN" />
                    <asp:Button ID="btn2" style="width:40%;" runat="server" Text="SIGN UP" />
            </div>--%>
            </div>
            <div class="form-container" style="margin: auto; width: 50%; display: block; position: relative; margin-top: 15%" runat="server">
                    <h1 style="text-align: center">Recover Password</h1>

                    <asp:Table runat="server" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="email3img" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="email.png" ToolTip="Email" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="Email3" runat="server" placeholder="Enter Email" TextMode="Email" Columns="2" ToolTip="A valid Email Address"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail1" ForeColor="Red" ControlToValidate="Email3" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail1" ForeColor="Red" runat="server" ErrorMessage="Invalid Email Format" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="Email3"></asp:RegularExpressionValidator>
                            <br />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <p style="font-size: 13px;">The email your typing above must match the email in records.If the email match you will receive an email with login info.</p>
                    <div class="form-footer">
                        <div class="footer-left" style="height: 50px;">
                            <asp:Button ID="Cancelfp" class="submit" Text="CANCEL AND GO BACK" CausesValidation="false" OnClick="Cancelfp_Click" runat="server" />
                        </div>
                        <div class="footer-right">
                            <asp:Button class="submit" Text="RECOVER PASSWORD" OnClick="RecoverPwd_Click" runat="server" />
                                    <asp:Label ID="labelex" runat="server"></asp:Label>

                        </div>
                    </div>
            </div>
        </div>
    </form>

</body>
</html>
