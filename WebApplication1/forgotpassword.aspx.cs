using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace WebApplication1
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["RefUrl"] = Request.UrlReferrer.ToString();
            }
        }

        protected void Cancelfp_Click(object sender, EventArgs e)
        {
            object refUrl = ViewState["RefUrl"];
            if (refUrl != null)
                Response.Redirect((string)refUrl);
        }

        protected void RecoverPwd_Click(object sender, EventArgs e) 
        {
            string username = Email3.Text;
            int countUsers = 0;
            string pass = "";
            foreach (UserInfo kk in ((List<UserInfo>)Application["AllUsersList"]))
            {
                countUsers++;


                if (kk.EmailAddress == username)
                {
                    int ind = ((List<UserInfo>)Application["AllUsersList"]).IndexOf(kk);
                    Session["currentuser"] = kk;
                    Session["username"] = kk.FirstName + kk.LastName;
                    pass = kk.Password;
                    sendMail(sender, e, pass);
                    //send mail ()
                    //Response.Redirect("myStudents.aspx?index=" + ind);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Please go to the Sign Up page');", true);

                }
            }
            if (countUsers == 0) //if users list is empty or no one is registered yet
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Please go to the Sign Up page');window.location.replace('Default.aspx');",true);
                //Response.Redirect("Default.aspx");

                string strconfirm = "<script>if(window.confirm('No registrations found yet. Redirecting to the Sign Up page. Are you sure?')){window.location.href='signuppage.aspx'}</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Confirm", strconfirm, false);

            }
        }


        protected void sendMail(object sender, EventArgs e, string pwd)
        {
            string msgTo = Email3.Text;

            string msgSubject = "We have recovered your password ! ";
            string msgBody = "Dear Parent,"+ Email3.Text + "<br />" + "Your current password is: " + pwd +
                "<br /> You have received this email because you requested to recover your password.<br /><br />" +
                "" +
                " Our support staff will respond within next 48 hours.<br />" +
                "Thank You.<br />" +
                "Rapid Bill Pay Admin Team";

            MailMessage mailObj = new MailMessage();
            mailObj.Body = msgBody;
            mailObj.From = new MailAddress("hameedtest8@gmail.com", "Rapid BillPay Admin Team");
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
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank you for your message. An email has been send to the address you entered.');", true);


            Email3.Text = "";



        }//end of send mail
    }
}