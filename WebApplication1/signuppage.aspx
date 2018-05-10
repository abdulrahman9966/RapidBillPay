<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signuppage.aspx.cs" Inherits="WebApplication1.signuppage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="custom.css">
    <style>
        select {
            width: 100%;
        }
    </style>
</head>
<body class="container">
    <form id="form1" runat="server">
        <div class="" style="">
            <div class="navbar">
                <div class="nav-left">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="index.aspx" class="logo" runat="server">Rapid Bill Pay</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="AboutUs.pdf" Target="_blank" runat="server">About Us</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" NavigateUrl="Security.pdf" Target="_blank" runat="server">Security</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink4" NavigateUrl="ContactUs.aspx" runat="server">Contact Us</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink5" NavigateUrl="FAQ.aspx" runat="server">FAQ</asp:HyperLink>
                </div>

                <%-- <div class="nav-right">
                    <asp:Button ID="btn1" style="width:40%;" runat="server" Text="USER LOGIN" />
                    <asp:Button ID="btn2" style="width:40%;" runat="server" Text="SIGN UP" />
            </div>--%>
            </div>
            <div class="form-container" style="margin:auto;width:60%;display:block;position:relative;" runat="server" id="signup2">
                    <h2 style="text-align: center">Sign UP</h2>
                    <h3>Complete Your Full Mailing Address</h3>
                    <asp:Table runat="server" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton5" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/address.png" ToolTip="United States postal abbreviations for states" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="3">
                                <asp:DropDownList ID="StateOrProvince" runat="server" TextMode="SingleLine" Columns="2" ToolTip="United States postal abbreviations for states">
                                    <asp:ListItem Enabled="true" Text="Select State/Province" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="AL" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="AK" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="AZ" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="AR" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="CA" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="CO" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="CT" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="DE" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="FL" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="GA" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="HI" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="ID" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="IL" Value="13"></asp:ListItem>
                                    <asp:ListItem Text="IN" Value="14"></asp:ListItem>
                                    <asp:ListItem Text="IA" Value="15"></asp:ListItem>
                                    <asp:ListItem Text="KS" Value="16"></asp:ListItem>
                                    <asp:ListItem Text="KY" Value="17"></asp:ListItem>
                                    <asp:ListItem Text="LA" Value="18"></asp:ListItem>
                                    <asp:ListItem Text="ME" Value="19"></asp:ListItem>
                                    <asp:ListItem Text="MD" Value="20"></asp:ListItem>
                                    <asp:ListItem Text="MA" Value="21"></asp:ListItem>
                                    <asp:ListItem Text="MI" Value="22"></asp:ListItem>
                                    <asp:ListItem Text="MN" Value="23"></asp:ListItem>
                                    <asp:ListItem Text="MS" Value="24"></asp:ListItem>
                                    <asp:ListItem Text="MO" Value="25"></asp:ListItem>
                                    <asp:ListItem Text="MT" Value="26"></asp:ListItem>
                                    <asp:ListItem Text="NE" Value="27"></asp:ListItem>
                                    <asp:ListItem Text="NV" Value="28"></asp:ListItem>
                                    <asp:ListItem Text="NH" Value="29"></asp:ListItem>
                                    <asp:ListItem Text="NJ" Value="30"></asp:ListItem>
                                    <asp:ListItem Text="NM" Value="31"></asp:ListItem>
                                    <asp:ListItem Text="NY" Value="32"></asp:ListItem>
                                    <asp:ListItem Text="NC" Value="33"></asp:ListItem>
                                    <asp:ListItem Text="ND" Value="34"></asp:ListItem>
                                    <asp:ListItem Text="OH" Value="35"></asp:ListItem>
                                    <asp:ListItem Text="OK" Value="36"></asp:ListItem>
                                    <asp:ListItem Text="OR" Value="37"></asp:ListItem>
                                    <asp:ListItem Text="PA" Value="38"></asp:ListItem>
                                    <asp:ListItem Text="RI" Value="39"></asp:ListItem>
                                    <asp:ListItem Text="SC" Value="40"></asp:ListItem>
                                    <asp:ListItem Text="SD" Value="41"></asp:ListItem>
                                    <asp:ListItem Text="TN" Value="42"></asp:ListItem>
                                    <asp:ListItem Text="TX" Value="43"></asp:ListItem>
                                    <asp:ListItem Text="UT" Value="44"></asp:ListItem>
                                    <asp:ListItem Text="VT" Value="45"></asp:ListItem>
                                    <asp:ListItem Text="VA" Value="46"></asp:ListItem>
                                    <asp:ListItem Text="WA" Value="47"></asp:ListItem>
                                    <asp:ListItem Text="WV" Value="48"></asp:ListItem>
                                    <asp:ListItem Text="WI" Value="49"></asp:ListItem>
                                    <asp:ListItem Text="WY" Value="50"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="StateOrProvince" runat="server" ErrorMessage="State/Province is required"></asp:RequiredFieldValidator><br />
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton7" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/address.png" ToolTip="Customer Mailing Street Address" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2">
                                <asp:TextBox ID="StreetAddress" runat="server" placeholder="Street Address" TextMode="SingleLine" Columns="2" ToolTip="Customer Mailing Street Address"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="1">
                                <asp:TextBox ID="ZipCode" runat="server" placeholder="Zip Code" TextMode="SingleLine" Columns="2" ToolTip="Customer Mailing Zip Code"></asp:TextBox>
                            </asp:TableCell>
                              <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="StreetAddress" runat="server" ErrorMessage="Street Address is required"></asp:RequiredFieldValidator><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="ZipCode" runat="server" ErrorMessage="Zip is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ForeColor="Red" runat="server" ErrorMessage="Invalid zip Format" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$" ControlToValidate="ZipCode"></asp:RegularExpressionValidator><br />

                          </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton8" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/user.png" ToolTip="Customer Name" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2">
                                <asp:TextBox ID="FirstName" runat="server" placeholder="First Name" TextMode="SingleLine" ToolTip="Customer First Name"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="1">
                                <asp:TextBox ID="LastName" runat="server" placeholder="Last Name" TextMode="SingleLine" ToolTip="Customer Last Name"></asp:TextBox>
                            </asp:TableCell>
                             <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="FirstName" runat="server" ErrorMessage="First Name is required"></asp:RequiredFieldValidator><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="LastName" runat="server" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator><br />

                             </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton6" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/phone.png" ToolTip="Customer Phone" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2">
                                <asp:TextBox ID="HomePhone" runat="server" placeholder="Home" TextMode="SingleLine" ToolTip="Customer Home Phone"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="1">
                                <asp:TextBox ID="CellPhone" runat="server" placeholder="Cellphone" TextMode="SingleLine" ToolTip="Customer cellphone Phone"></asp:TextBox>
                            </asp:TableCell>
                              <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="HomePhone" runat="server" ErrorMessage="Home Phone is required"></asp:RequiredFieldValidator><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="CellPhone" runat="server" ErrorMessage="Cell Phone is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ForeColor="Red" runat="server" ErrorMessage="Invalid Home Phone Format" ValidationExpression="^((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}$" ControlToValidate="HomePhone"></asp:RegularExpressionValidator><br />
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ForeColor="Red" runat="server" ErrorMessage="Invalid Cell Phone Format" ValidationExpression="^((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}$" ControlToValidate="CellPhone"></asp:RegularExpressionValidator><br />

                          </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                    <h3>Note: your email address will be youur username</h3>
                    <asp:Table runat="server" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton9" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/email.png" ToolTip="Customer Email" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2">
                                <asp:TextBox ID="EmailField" runat="server" placeholder="Email Address" TextMode="Email" ToolTip="Email Address valid email address"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="1">
                                <asp:TextBox ID="ReEmailField" runat="server" placeholder="Re-type Email Address" TextMode="Email" ToolTip="Retype the email address"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="EmailField" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ForeColor="Red" runat="server" ErrorMessage="Invalid Email Format" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="EmailField"></asp:RegularExpressionValidator><br />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="ReEmailField" runat="server" ErrorMessage=" Retype Email is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ForeColor="Red" runat="server" ErrorMessage="Invalid Retype-Email Format" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="ReEmailField"></asp:RegularExpressionValidator><br />
                                <asp:CompareValidator runat="server" id="CmpEmail" ForeColor="Red" controltovalidate="ReEmailField" controltocompare="EmailField" operator="Equal" type="String" errormessage="Email Adress did not match" /><br />

                            </asp:TableCell>
                        </asp:TableRow>


                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton10" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/password.png" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2">
                                <asp:TextBox ID="Password" runat="server" placeholder="Password" TextMode="Password" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="1">
                                <asp:TextBox ID="RePassword" runat="server" placeholder="Re-type Password" TextMode="Password" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="Password" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" ForeColor="Red" runat="server" ErrorMessage="Invalid Password Format" ValidationExpression="^(?=.*[a-z])(?=.*[0-9]).{8,15}$" ControlToValidate="Password"></asp:RegularExpressionValidator><br />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="Red" ControlToValidate="RePassword" runat="server" ErrorMessage="Retype-Password is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" ForeColor="Red" runat="server" ErrorMessage="Invalid Retype-Password Format" ValidationExpression="^(?=.*[a-z])(?=.*[0-9]).{8,15}$" ControlToValidate="RePassword"></asp:RegularExpressionValidator><br />
                                <asp:CompareValidator runat="server" id="CmpPassword" ForeColor="Red" controltovalidate="Password" controltocompare="RePassword" operator="Equal" type="String" errormessage="Password did not match" /><br />

                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <h3>Select a security question</h3>
                    <asp:Table runat="server" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton11" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/question.png" ToolTip="Select a security question" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="3">
                                <asp:DropDownList ID="SecurityQuestion" runat="server" TextMode="SingleLine" Columns="2" ToolTip="Select a security question">
                                    <asp:ListItem Enabled="true" Text="What is your mother's maiden name?" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="What was your childhood nickname?" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="What is the name of your favorite childhood friend?" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="What is your favorite sport team?" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="What was the make and model of your first car?" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="What school did you attend for sixth grade?" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="What was the last name of your third grade teacher?" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="In what town was your first job?" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="What is your favorite movie?" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="Who is your childhood sports hero?" Value="10"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton12" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/question.png" ToolTip="Enter an answer to the security question" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="3">
                                <asp:TextBox ID="SecurityAnswer" runat="server" placeholder="Type Answer to the security question" TextMode="SingleLine" Columns="2" ToolTip="Enter an answer to the security question"></asp:TextBox>
                            </asp:TableCell>
                             <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="Red" ControlToValidate="SecurityAnswer" runat="server" ErrorMessage="Security AnswerS is required"></asp:RequiredFieldValidator><br />

                             </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <asp:HyperLink NavigateUrl="privacypolicy.html" Text="privacy policy" runat="server" />
                    <asp:CheckBox ID="CheckBox1" Style="display: inline-block;" Text="I have read and agreed to the Terms and Conditions in the Privacy Policy." runat="server" />
                    <div class="form-footer">
                        <div class="footer-left" style="height: 50px;">
                            <asp:Button ID="BtnCancelSignup" class="submit" Text="CANCEL" CausesValidation="false" OnClick="BtnCancelSignup_Click" runat="server" />
                        </div>
                        <div class="footer-right">
                            <asp:Button ID="BtnCreateAccount" class="submit" Text="CREATE ACCOUNT" CausesValidation="true" OnClick="addUser"  runat="server" />
                            <asp:Label ID="labelex" runat="server"></asp:Label>

                        </div>
                    </div>
            </div>
        </div>
    </form>

    <%-- <script runat="server">
        function cancelSignUp() {
            var resetFlag = confirm("Are you sure you want to cancel the sign up process?");
            if (resetFlag == true) {
                document.getElementById("TextBox16").value = "";
}
        }
    </script>--%>
</body>
</html>
