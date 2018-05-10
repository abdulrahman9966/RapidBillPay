<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="WebApplication1.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pay Bill</title>
    <link rel="stylesheet" href="custom.css">

</head>
<body>
   <form ID="formFaq" runat="server">
    <div class="container" style="height:auto;">
        <div class="navbar">
            <div class="nav-left">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="index.aspx" class="logo" runat="server">Rapid Bill Pay</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" NavigateUrl="AboutUs.pdf" target="_blank" runat="server">About Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" NavigateUrl="Security.pdf" target="_blank" runat="server">Security</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" NavigateUrl="ContactUs.aspx" runat="server">Contact Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" NavigateUrl="#" runat="server">FAQ</asp:HyperLink>
            </div>

            <div class="nav-right">
                    <asp:Button ID="btn1" style="width:40%;" runat="server" Text="USER LOGIN" />
                    <asp:Button ID="btn2" style="width:40%;" runat="server" Text="SIGN UP" />
            </div>
        </div>
<div style="margin:0 auto;width: 80%;">
        <h1 style= "background-color:  rgba(160, 152, 122, 0.29);color:ivory">Frequently Asked Questions. Rapid Bill Pay</h1>
          <p>
          <asp:HyperLink ID="faqlink" runat="server" href="faq.pdf" target="_blank" style= "margin-left: 20px;color:#9ba5c7;">View FAQ in pdf</asp:HyperLink>
          </p>
          <p class="ques">Q. What is Rapid Bill Pay?</p>
          <p class="ans">A. Rapid Bill Pay is the premier provider for online bill payment systems. We make it easy for organizations to offer online bill payment, and we make it easy for customers to pay their bills online.</p>

          <p class="ques">Q. Does it cost anything to sign up for online bill payment?</p>
          <p class="ans">A. No. It's free to sign up for online bill payment and to use the Rapid Bill Pay service. However, some billing organizations charge a transaction convenience fee.</p>

          <p class="ques">Q. How do I create a log in?</p>
          <p class="ans">A. Follow these steps
From the Rapid Bill Pay home page, simply click the "Sign Up" button, enter your email, and create a password.
You will be sent an email to verify your email address. In that email, you will need to click "Verify Email" to return to Rapid Bill Pay. In that email, you will need to click "Verify Email" to return to Rapid Bill Pay.
Finally, you will need to provide your contact information, agree to terms and conditions, and then click "Next." Once your Rapid Bill Pay account has been created, you can begin managing your bills.
</p>

          <p class="ques">Q. Do I need a separate Rapid Bill Pay login for each billing account?</p>
          <p class="ans">A. No. You can manage all your merchant and service provider billing accounts from a single Rapid Bill Pay login.</p>

          <p class="ques">Q. What payment choices do I have?</p>
          <p class="ans">A. You can pay your bills with a credit card, debit card, or you can transfer funds directly from your banking account using electronic funds transfer (EFT). The types of payment accepted are determined by the billing organization and not Rapid Bill Pay. If you do have questions about payment methods, please contact the billing organization directly.</p>

          <p class="ques">Q. Can I set up automatic payments?</p>
          <p class="ans">A. Yes. When you set up your account you can choose whether you want automatic bill payment, so you can set it and forget it. Payments will be automatically deducted from a credit card or banking account on the frequency you choose.</p>

          <p class="ques">Q. What will my bill look like online?</p>
          <p class="ans">A. Your online bill will have an easy to read format with all of the necessary information to understand your bill.</p>

          <p class="ques">Q. What other information is available?</p>
          <p class="ans">A. You can view up to a year's history of your account online, so you can print and compare your current bill to previous bills.</p>

         <p class="ques">Q. How do I update my customer information, such as email address or phone number?</p>
          <p class="ans">A. First log in to your account. In the upper right corner of the screen, you will see the profile icon along with the name associated with your account. Click the dropdown arrow and select "Account Settings." You can then update your contact or login information by clicking “Edit” and then click “Save Edits.”</p>

          <p class="ques">Q. Is my information safe?</p>
          <p class="ans">A. Absolutely. All the transactions are handled on secure servers and all sensitive data encrypted. As long as you don't give out your password, only you will be able to access your account. Plus. your personal information or e-mail address will NOT be sold or rented to third parties for marketing purposes without your permission.</p>

          <p class="ques">Q. How easy is it to pay my bill?</p>
          <p class="ans">A. You can pay your bills online or using our mobile app. You can also set up Rapid Bill Auto Pay to pay your bill on a scheduled frequency.</p>

          <p class="ques">Q. How do I know the payment went through?</p>
          <p class="ans">A. After you complete the transaction, you will get a transaction receipt with confirmation number, as well as an email as a secondary confirmation.</p>
</div>  
    </div>
       </form>
</body>
</html>
