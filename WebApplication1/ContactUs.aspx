<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WebApplication1.ContactUS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Pay Bill</title>
    <link rel="stylesheet" href="custom.css">
    <script type="text/javascript">
        function myfunction() {
            alert("work in progress");
        }
        var xmlDoc;
        var xmlhttp;

        function loadXMLDoc() {

            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readXml;
            xmlhttp.open("GET", "contactinfo.xml", true);
            xmlhttp.send();
        }

        function readXml() {
            if (xmlhttp.readyState == 4) {
                xmlDoc = xmlhttp.responseXML;
                var elements = xmlDoc.getElementsByTagName("info");
                var elementValue1 = elements[0].getAttribute("toll_free_phone");
                var elementValue2 = elements[0].getAttribute("direct_phone");
                var elementValue3 = elements[0].getAttribute("fax");
                var elementValue4 = elements[0].getAttribute("email");
                var elementValue5 = elements[0].getAttribute("address_line1");
                var elementValue6 = elements[0].getAttribute("address_line2");
                var elementValue7 = elements[0].getAttribute("city");
                var elementValue8 = elements[0].getAttribute("state");
                var elementValue9 = elements[0].getAttribute("zip");



                var elevalue = new Array();


                elevalue[0] = elementValue1;
                elevalue[1] = elementValue2;
                elevalue[2] = elementValue3;
                elevalue[3] = elementValue4;
                elevalue[4] = elementValue5;
                elevalue[5] = elementValue6;
                elevalue[6] = elementValue7;
                elevalue[7] = elementValue8;
                elevalue[8] = elementValue9;

                var labels = new Array();

                labels[0] = "Toll freephone";
                labels[1] = "Direct phone";
                labels[2] = "fax";
                labels[3] = "E-Mail";
                labels[4] = "Address Line 1";
                labels[5] = "Address Line 2";
                labels[6] = "City";
                labels[7] = "State";
                labels[8] = "zip";

                var myTable1 = "<table>";
                for (var i = 0; i < 4; i++) {

                    myTable1 += "<tr><td style='width: 225px; text-align: left;color:darkblue;'>" + labels[i] + "</td>";
                    myTable1 += "<td style='width: 225px; text-align: left;'>: " + elevalue[i] + "</td></tr>";

                }
                myTable2 += "</table>";
                var myTable2 = "<table>";
                for (var i = 4; i < 9; i++) {

                    myTable2 += "<tr><td style='width: 225px; text-align: left;color:darkblue;'>" + labels[i] + "</td>";
                    myTable2 += "<td style='width: 225px; text-align: left;'>: " + elevalue[i] + "</td></tr>";

                }
                myTable2 += "</table>";


                document.getElementById("column1").innerHTML = myTable1;
                document.getElementById("column2").innerHTML = myTable2;
            }
        }
    </script>
   
</head>
<body onload="loadXMLDoc()" class="container">
    <form id="formContactUs" runat="server">
        <div class="">
            <div class="navbar">
                <div class="nav-left">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="index.aspx" class="logo" runat="server">Rapid Bill Pay</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="AboutUs.pdf" Target="_blank" runat="server">About Us</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" NavigateUrl="Security.pdf" Target="_blank" runat="server">Security</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink4" NavigateUrl="#" runat="server">Contact Us</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink5" NavigateUrl="FAQ.aspx" runat="server">FAQ</asp:HyperLink>
                </div>

                <div class="nav-right">
                    <asp:Button ID="btn1" Style="width: 40%;" runat="server" Text="USER LOGIN" />
                    <asp:Button ID="btn2" Style="width: 40%;" runat="server" Text="SIGN UP" />
                </div>
            </div>
            <div class="contactinfo">
                <div id="column1" class="column" style="float: left"></div>
                <div id="column2" class="column" style="float: right"></div>
                <div style="clear: both;"></div>
            </div>
            <div class="feedbackform">
                <div style="background-color: rgba(178, 181, 192, 0.5)">
                    <h1>Contact Rapid Bill Pay Support Staff</h1>
                </div>
                <asp:TextBox ID="tb1" runat="server" placeholder="First Name"></asp:TextBox>
                <asp:TextBox ID="tb2" runat="server" placeholder="Last Name"></asp:TextBox>
                <asp:TextBox ID="tbe2" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                <asp:Label runat="server" ID="labelex"></asp:Label>

                <asp:TextBox Style="width: 100%; background-color: rgba(249, 250, 253, 0.67);" ID="TextArea1" placeholder="Type your text here" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                <asp:Button class="submit" ID="SubmitBtn" OnClick="SubmitBtn_Click" Style="margin: 0 auto; display: block; font-size: 20px; padding: 8px;" Text="Submit your message to support staff" runat="server" />

            </div>

        </div>
    </form>
</body>
</html>
