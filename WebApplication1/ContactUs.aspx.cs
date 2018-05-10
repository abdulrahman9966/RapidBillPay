using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ContactUS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void SubmitBtn_Click(object sender, EventArgs e)
        {

            string msgTo = tbe2.Text;
            string msgSubject = "We have received your Message ! ";
            string msgBody = "Dear User," + tbe2.Text + " <br />" +
                " You have received this email because you contacted us with a comment, question(s) and/or concerns.<br /><br />" +
                "" +
                " Our support staff will respond within next 48 hours.<br />" +
                "Thank You.<br />" +
                "Rapid Bill Pay Administration Team";

            MailMessage mailObj = new MailMessage();
            mailObj.Body = msgBody;
            mailObj.From = new MailAddress("hameedtest8@gmail.com", "Rapid Bill Pay Admin Team");
            mailObj.To.Add(new MailAddress(msgTo));
            mailObj.Subject = msgSubject;
            mailObj.IsBodyHtml = true;

            SmtpClient smtpClient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new System.Net.NetworkCredential("hameedtest8@gmail.com", "hameed@123");
            smtpClient.EnableSsl = true;

            try
            {
                //smtpClient.Send("motelgroup3@gmail.com",msgTo,"thanks subject",msgBody);
                smtpClient.Send(mailObj);
            }

            catch (Exception ex)
            {
                            labelex.Text = ex.ToString();

            }
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank you for your message. An email has been send to the address you entered. Please feel free to contact us anytime in the future, so we will address your concerns');", true);

            tb1.Text = "";
            tb2.Text = "";
            tbe2.Text = "";
            TextArea1.Text = "";


        }

    
    }
}