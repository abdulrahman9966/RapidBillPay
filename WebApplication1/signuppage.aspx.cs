using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


namespace WebApplication1
{
    public partial class signuppage : System.Web.UI.Page
    {
        int countofuser = 0;
        bool flag = true;
        UserInfo aUser = new UserInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Response.Write("page loaded first time");
            }

            else
            {
               
                foreach (UserInfo kk in ((List<UserInfo>)Application["AllUsersList"]))
                {

                    countofuser++;
                    aUser.EmailAddress = EmailField.Text;
                    if (aUser.EmailAddress == kk.EmailAddress)
                    {
                        flag = false; //person already present,dont add
                        break;
                    }
                    else
                    {
                        flag = true; //person not present
                    }
                }
                if (!flag)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('User " + aUser.EmailAddress + " already exists. Please Login');", true);

                }
            }

        }


        public void addUser(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                if (countofuser == 0) //first person in the list
                {
                    aUser.EmailAddress = EmailField.Text;
                    aUser.FirstName = FirstName.Text;
                    aUser.LastName = LastName.Text;
                    aUser.Password = Password.Text;
                    aUser.SecurityQuestion = SecurityQuestion.SelectedValue;
                    aUser.SecurityQuestionAnswer = SecurityAnswer.Text;
                    aUser.StateOrProvince = StateOrProvince.SelectedValue;
                    aUser.HomePhone = HomePhone.Text;
                    aUser.CellPhone = CellPhone.Text;
                    aUser.ZipCode = ZipCode.Text;
                    aUser.StreetAddress = StreetAddress.Text;
                    ((List<UserInfo>)Application["AllUsersList"]).Add(aUser);
                    string strconfirm = "<script>if(window.confirm('Thanks your for signing up. You can now login using the Log in option. An email has also been sent to email address you provided during sign up')){window.location.href='index.aspx'}</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), "Confirm", strconfirm, false);
                    sendMail(sender, e);
                    updateDatabase(sender, e);

                }
                else if (flag)
                {
                    aUser.EmailAddress = EmailField.Text;
                    aUser.FirstName = FirstName.Text;
                    aUser.LastName = LastName.Text;
                    aUser.Password = Password.Text;
                    aUser.SecurityQuestion = SecurityQuestion.SelectedValue;
                    aUser.SecurityQuestionAnswer = SecurityAnswer.Text;
                    aUser.StateOrProvince = StateOrProvince.SelectedValue;
                    aUser.HomePhone = HomePhone.Text;
                    aUser.CellPhone = CellPhone.Text;
                    aUser.ZipCode = ZipCode.Text;
                    aUser.StreetAddress = StreetAddress.Text;
                    ((List<UserInfo>)Application["AllUsersList"]).Add(aUser);
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thanks your for signing up. You can now login using the Log in option. An email has also been sent to email address you provided during sign up');", true);
                    sendMail(sender, e);
                    updateDatabase(sender, e);


                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('User " + aUser.EmailAddress + " already exists. Please Login');", true);
                }

            }
            else
            {
                Response.Write("<script>alert('Please check the Agreement Policy to continue...');</script>");
            }

        }


        protected void updateDatabase(object sender, EventArgs e)
        {
            MySql.Data.MySqlClient.MySqlConnection co;

            string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
            co = new MySql.Data.MySqlClient.MySqlConnection(connection);
            co.Open();

            string query = "INSERT INTO `c432017fa02mohammada`.`mohammada_wadfl17_userinfo` VALUES ('" + aUser.EmailAddress + "','" + aUser.FirstName + "','" + aUser.LastName + "','" + aUser.HomePhone + "','" + aUser.CellPhone + "','" + aUser.Password + "','" + aUser.SecurityQuestion + "','" + aUser.SecurityQuestionAnswer + "','" + aUser.StreetAddress + "','" + aUser.ZipCode + "') ";


            MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(query, co);

            command.ExecuteNonQuery();
            co.Close();
        }

        protected void BtnCancelSignup_Click(object sender, EventArgs e)
        {
            ClientScriptManager CSM = Page.ClientScript;

            if (!ReturnValue())
            {
                string strconfirm = "<script>if(window.confirm('Are you sure you want    cancel signup?')){window.location.href='signuppage.aspx'}</script>";
                CSM.RegisterClientScriptBlock(this.GetType(), "Confirm", strconfirm, false);
            }
            bool ReturnValue()
            {
                return false;
            }
        }



        protected void sendMail(object sender, EventArgs e)
        {
            string msgTo = EmailField.Text;
            string msgSubject = "New Signing Up Notification ";
            string msgBody = "Dear" + EmailField.Text + ",<br />" +
                "Thank you for signing up with us. <br></br><br></br>" +
                " You can now access your Rapid Bill Pay account at " + "<a href=\"http://dcm.uhcl.edu/c432017fa02mohammada/index.aspx \">Login Page</a>" + "<br /><br />" +
                "" +
                " Thank you again for your singning up. IF you have any questions, please contact us at <a href=\"http://dcm.uhcl.edu/c432017fa02mohammada/ContactUs.aspx \" > Contact Us Page</a> .<br />" +
                "With Best wishes.<br />" +
                "Rapid Bill pay Team.";

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
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank you for your message. An email has been send to the address you entered. Please feel free to contact us anytime in the future, so we will address your concerns');", true);

            //FirstName.Text = "";
            //LastName.Text = "";
            //Email.Text = "";
            //school.Text = "";


        }


    }
}