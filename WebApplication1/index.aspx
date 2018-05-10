<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pay Bill</title>

    <link rel="stylesheet" href="custom.css">
</head>
<body>

    <div class="container">
        <form id="formHome" runat="server">
            <div class="navbar">
                <div class="nav-left">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="#" class="logo" runat="server">Rapid Bill Pay</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="AboutUs.pdf" Target="_blank" runat="server">About Us</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" NavigateUrl="Security.pdf" Target="_blank" runat="server">Security</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink4" NavigateUrl="ContactUs.aspx" runat="server">Contact Us</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink5" NavigateUrl="FAQ.aspx" runat="server">FAQ</asp:HyperLink>
                </div>

                <div class="nav-right">
                    <asp:Button ID="btnLogin" Style="width: 40%;" runat="server" CausesValidation="false" OnClick="btnLogin_Click" Text="USER LOGIN" />
                    <asp:Button ID="btnSignup" Style="width: 40%;" runat="server" CausesValidation="false" OnClick="btnSignup_Click" Text="SIGN UP" />
                </div>
            </div>

            <div class="text-block">
                <h1>Pay Your Bills<br>
                    <strong>Online</strong><br>
                    24 X 7</h1>
                <br>
                <h2><em>It's Fast, Easy<br>
                    and Secure</em></h2>
            </div>

            <div class="form-container" runat="server" id="login">
                <h1>Login to Pay Your Bills Online</h1>
                <h3>EMAIL ADDRESS<span class="required">*</span></h3>
                <asp:TextBox ID="EmailField" runat="server" placeholder="Enter Email" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="EmailField" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" ErrorMessage="Invalid Email Format" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="EmailField"></asp:RegularExpressionValidator><br />

                <h3>PASSWORD<span class="required">*</span></h3>
                <asp:TextBox ID="PasswordField" TextMode="password" placeholder="Enter Password" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="PasswordField" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" runat="server" ErrorMessage="Invalid Password Format. Password must be between 8 and 10 characters,<br/>  contain at least one digit and one 
                                alphabetic character, and must <br/> not contain special characters"
                    ValidationExpression="^(?=.*[a-z])(?=.*[0-9]).{8,15}$" ControlToValidate="PasswordField"></asp:RegularExpressionValidator><br />

                <div class="form-footer">
                    <div class="footer-left">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" OnClick="LinkButton1_Click"><h3>Forgot Password</h3></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" OnClick="LinkButton2_Click"><h3>Create a New Account</h3></asp:LinkButton>
                    </div>
                    <div class="footer-right">
                        <asp:Button class="submit" Text="USER LOGIN" CausesValidation="true" OnClick="btnUserLogin_Click" runat="server" />
                    </div>
                </div>
            </div>







            <div class=" form-container" runat="server" id="signup">
                <h1>New to Rapid Bill Pay?</h1>
                <h3>Create an Account to Pay your Bills Online</h3>
                <h3>EMAIL ADDRESS<span class="required">*</span></h3>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email" TextMode="SingleLine"></asp:TextBox>
                <h3>PASSWORD<span class="required">*</span></h3>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox1" ForeColor="Red" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red" ErrorMessage="Invalid Email Format" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="TextBox1"></asp:RegularExpressionValidator><br />
                <asp:TextBox ID="TextBox2" TextMode="password" placeholder="Enter Password" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TextBox2" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="Red" runat="server" ErrorMessage="Invalid Password Format. Password must be between 8 and 10 characters,<br/>  contain at least one digit and one 
                                alphabetic character, and must <br/> not contain special characters"
                    ValidationExpression="^(?=.*[a-z])(?=.*[0-9]).{8,15}$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator><br />

                <div class="form-footer">
                    <div class="footer-left">
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><h3>Already a member?</h3></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><h3>LOGIN</h3></asp:LinkButton>
                    </div>
                    <div class="footer-right">
                        <asp:Button class="submit" ID="BtnNext" CausesValidation="true" OnClick="BtnNext_Click" Text="Next" runat="server" />
                    </div>
                </div>
            </div>

           <%-- <div class="adrotator" style="bottom:0px;left:500px;position:absolute">
                <asp:ScriptManager ID="ScriptManager" runat="server"> </asp:ScriptManager>
                 <asp:Timer ID="Timer" runat="server" Interval="5000"></asp:Timer>
                <asp:AdRotator ID="AdRotator1" AdvertisementFile="adfile.xml" runat="server"  Height="150px" Width="150px" />
            </div>--%>
         <footer>
        <div id="ad" style="bottom:2px;position:absolute;left:0px;right:0px;text-align:center; ">
            <asp:ScriptManager ID="ScriptManager" runat="server"> </asp:ScriptManager>
                 <asp:Timer ID="Timer" runat="server" Interval="10000"></asp:Timer>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="adfile.xml"  />
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="adfile.xml" Target="_blank" />
            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="adfile.xml" Target="_blank" />

        </div>
    </footer>

        </form>
    </div>


</body>
</html>
