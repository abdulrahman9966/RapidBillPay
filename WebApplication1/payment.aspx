<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WebApplication1.payment" %>

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
            <div class="form-payment" style="margin: auto; width: 60%; display: block; position: relative;" runat="server">
                <form>
                    <h2>Compose a Payment Request</h2>
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="PaymentDateField" Display="Dynamic" runat="server" ErrorMessage="Payment Date is required"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Invalid Payment Date Format" ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$" ControlToValidate="PaymentDateField"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="BusinessNameField" Display="Dynamic" runat="server" ErrorMessage="Business Name is required"></asp:RequiredFieldValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="BusinessAddressField" Display="Dynamic" runat="server" ErrorMessage="Street Address is required"></asp:RequiredFieldValidator><br />
<%--                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Invalid Street Address Format" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ControlToValidate="BusinessAddressField"></asp:RegularExpressionValidator><br />--%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="AmountField" Display="Dynamic" runat="server" ErrorMessage="Amount is required"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Invalid Amount Format" ValidationExpression="^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$" ControlToValidate="AmountField"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="PaymentDetailsField" Display="Dynamic" runat="server" ErrorMessage="Payment Description is required"></asp:RequiredFieldValidator><br />

                    </div>

                    <asp:Table runat="server" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/calender.png" ToolTip="select the date of transaction" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="4">
                                <asp:TextBox ID="PaymentDateField" runat="server" placeholder="Select Payment/Transaction Date" TextMode="SingleLine" Columns="2" ToolTip="select the date of transaction"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="1">
                                <asp:ImageButton ID="ImageButtonCal" runat="server" OnClick="ImageButtonCal_Click" CausesValidation="false" Width="50px" runat="server" ImageUrl="~/icons/picker.png" />
                                <asp:Calendar Style="position: fixed; z-index: 1;" OnSelectionChanged="Selection_Change" ID="Calendar1" runat="server"></asp:Calendar>
                            </asp:TableCell>
                            <%-- <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox3" runat="server" ErrorMessage="Payment Date is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" ErrorMessage="Invalid Payment Date Format" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="TextBox3"></asp:RegularExpressionValidator><br />
                            </asp:TableCell>--%>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/user.png" ToolTip="Funds Receiving Business Name" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="4">
                                <asp:TextBox ID="BusinessNameField" runat="server" placeholder="Recipient/Business Name" TextMode="SingleLine" Columns="2" ToolTip="Funds Receiving Business Name"></asp:TextBox>
                            </asp:TableCell>
                            <%--   <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TextBox4" runat="server" ErrorMessage="Business Name is required"></asp:RequiredFieldValidator><br />
                            </asp:TableCell>--%>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton3" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/address.png" ToolTip="Funds Receiving Business Address" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="4">
                                <asp:TextBox ID="BusinessAddressField" runat="server" placeholder="Recipient/Business Address" TextMode="SingleLine" ToolTip="Funds Receiving Business Address"></asp:TextBox>
                            </asp:TableCell>
                            <%--  <asp:TableCell Width="20px" Height="20px">

                            </asp:TableCell>--%>
                            <%--  <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TextBox5" runat="server" ErrorMessage="Street Address is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" runat="server" ErrorMessage="Invalid Street Address Format" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="TextBox5"></asp:RegularExpressionValidator><br />
                            </asp:TableCell>--%>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell Width="20px" Height="20px">
                                <asp:ImageButton ID="ImageButton4" runat="server" AlternateText="Image text" ImageAlign="left" ImageUrl="~/icons/payment.png" ToolTip="Payment About in $$" />
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2">
                                <asp:TextBox ID="AmountField" runat="server" placeholder="Amount in $$.cc" TextMode="SingleLine" ToolTip="Payment About in $$"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2">
                                <asp:TextBox ID="PaymentDetailsField" runat="server" placeholder="Describe your payment" TextMode="SingleLine" ToolTip="Description of the payment Eg. Car Payment"></asp:TextBox>
                            </asp:TableCell>
                            <%--   <asp:TableCell>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TextBox6" runat="server" ErrorMessage="Amount is required"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="Red" runat="server" ErrorMessage="Invalid Amount Format" ValidationExpression="^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$" ControlToValidate="TextBox6"></asp:RegularExpressionValidator><br />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TextBox7" runat="server" ErrorMessage="Payment Description is required"></asp:RequiredFieldValidator><br />

                                 </asp:TableCell>--%>
                        </asp:TableRow>
                    </asp:Table>
                    <p style="font-size: 13px;">The email your typing above must match the email in records.If the email match you will receive an email with login info.</p>
                    <div class="form-footer">
                        <div class="footer-left" style="height: 50px;">
                            <asp:Button class="submit" ID="BtnReset" Text="CANCEL TRANSACTION" OnClick="BtnReset_Click" CausesValidation="false" runat="server" />
                        </div>
                        <div class="footer-right">
                            <asp:Button class="submit" ID="BtnSchedule" CausesValidation="true" Text="SCHEDULE TRANSACTION" OnClick="BtnSchedule_Click" runat="server" />
                                                        <asp:Label ID="labelex" runat="server"></asp:Label>

                       </div>
                    </div>
                    <h3 style="color: mediumslateblue">My Previous Transactions:
                        <asp:Label ID="LoggedInUser" runat="server" /></h3>

                    <div>
                  <%--      <asp:Table runat="server" Width="100%">
                            <asp:TableRow>
                                <asp:TableCell>Transaction Date</asp:TableCell>
                                <asp:TableCell>Recipient Name</asp:TableCell>
                                <asp:TableCell>Recipiet Address</asp:TableCell>
                                <asp:TableCell>Amount</asp:TableCell>
                                <asp:TableCell>Status</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>--%>
                        <asp:GridView ID="GridView1" runat="server" BackColor=""
                            BorderColor="" BorderStyle="None" BorderWidth="1px" CellPadding="4"
                            ForeColor="" GridLines="horizontal">
                            <AlternatingRowStyle BackColor="" />
                            <FooterStyle BackColor="" />
                            <HeaderStyle BackColor="" Font-Bold="True" ForeColor="" />
                            <PagerStyle BackColor="" ForeColor="" HorizontalAlign="Right" />
                            <RowStyle BackColor="" />
                            <SelectedRowStyle BackColor="" Font-Bold="True" ForeColor="" />
                            <SortedAscendingCellStyle BackColor="" />
                            <SortedAscendingHeaderStyle BackColor="" />
                            <SortedDescendingCellStyle BackColor="" />
                            <SortedDescendingHeaderStyle BackColor="" />
                        </asp:GridView>

                    </div>
                    <div style="text-align: center">
                        <asp:Button Width="50px" Height="50px" ID="BtnOk" CausesValidation="false" class="submit" Text="OK" OnClick="BtnOk_Click" runat="server" />
                    </div>
                </form>
            </div>
        </div>
    </form>

    <script runat="Server" type="text/javascript">
//function myFunction(){
//      var resetFlag = confirm("Are you sure you want to cancel this transaction?");
//      if (resetFlag == true) {
//          document.getElementById("TextBox3").value = " ";
//          document.getElementById("TextBox4").value = " ";
//          document.getElementById("TextBox5").value = " ";
//          document.getElementById("TextBox6").value = " ";
//          document.getElementById("TextBox7").value = " ";
//      }
//  }
    </script>
</body>
</html>
