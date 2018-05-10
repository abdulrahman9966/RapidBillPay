using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;

namespace WebApplication1
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            LoggedInUser.Text = "For User " + Session["username"].ToString();
            if (!IsPostBack)
            {
                List<BillPayEntry> myBillPayment = new List<BillPayEntry>();
                Session["myBillPayment"] = myBillPayment;
                List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

            }
        }


        protected void BtnSchedule_Click(object sender, EventArgs e)
        {
            sendMail(sender, e);

            int ind = 0;
            BillPayEntry entry = new BillPayEntry();

            entry.PaymentTransactionDate = PaymentDateField.Text;
            entry.RecipientBusinessAddress = BusinessAddressField.Text;
            entry.RecipientBusinessName = BusinessNameField.Text;
            entry.AmountPaid = AmountField.Text;
            entry.PaymentDetails = PaymentDetailsField.Text;

            UserInfo temp = (UserInfo)Session["currentuser"];

            entry.EmailAddress = temp.EmailAddress;

            if (temp.MybillPayments == null)
            {

                List<BillPayEntry> newBill = new List<BillPayEntry>();
                newBill.Add(entry);
                temp.MybillPayments = newBill;
            }

            else
            {
                temp.MybillPayments.Add(entry);
            }

        // Response.Redirect("payment.aspx");
            ///gridview
            DataTable dt = new DataTable();
            dt.Columns.Add("Transaction Date");
            dt.Columns.Add("Recipient Name");
            dt.Columns.Add("Recipient Address");
            dt.Columns.Add("Amount");
            dt.Columns.Add("Status");
            DataRow dr = null;
            if (ViewState["transactions"] != null)
            {
                for (int i = 0; i < 1; i++)
                {
                    dt = (DataTable)ViewState["transactions"];
                    if (dt.Rows.Count > 0)
                    {
                        dr = dt.NewRow();
                        dr["Transaction Date"] = PaymentDateField.Text;
                        dr["Recipient Name"] = BusinessNameField.Text;
                        dr["Recipient Address"] = BusinessAddressField.Text;
                        dr["Amount"] = AmountField.Text;
                        dr["Status"] = "In progress";
                        dt.Rows.InsertAt(dr, 0);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        updateDatabase(sender, e);

                        PaymentDateField.Text = "";
                        BusinessNameField.Text = "";
                        BusinessAddressField.Text = "";
                        AmountField.Text = "";
                        PaymentDetailsField.Text = "";
                    }
                }
            }
            else
            {
                dr = dt.NewRow();
                dr["Transaction Date"] = PaymentDateField.Text;
                dr["Recipient Name"] = BusinessNameField.Text;
                dr["Recipient Address"] = BusinessAddressField.Text;
                dr["Amount"] = AmountField.Text;
                dr["Status"] = "In progress";
                dt.Rows.Add(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                updateDatabase(sender, e);

                PaymentDateField.Text = "";
                BusinessNameField.Text = "";
                BusinessAddressField.Text = "";
                AmountField.Text = "";
                PaymentDetailsField.Text = "";

            }
            ViewState["transactions"] = dt;
            updateDatabase(sender, e);

            PaymentDateField.Text = "";
            BusinessNameField.Text = "";
            BusinessAddressField.Text = "";
            AmountField.Text = "";
            PaymentDetailsField.Text = "";
            ///gridview
        }


        protected void loadTable(object sender, EventArgs e)
        {

            Response.Redirect("patment.aspx?label1=" + PaymentDateField.Text + "&label2=" + BusinessNameField.Text + "&label3=" + BusinessAddressField.Text + "&label4=" + AmountField.Text);


        }

        protected void ImageButtonCal_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Selection_Change(Object sender, EventArgs e)
        {
            PaymentDateField.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            ClientScriptManager CSM = Page.ClientScript;
            if (!ReturnValue())
            {
                string strconfirm = "<script>if(window.confirm('Are you sure you want to cancel this transaction?')){window.location.href='payment.aspx'}</script>";
                CSM.RegisterClientScriptBlock(this.GetType(), "Confirm", strconfirm, false);
            }
            bool ReturnValue()
            {
                return false;
            }

        }


        protected void BtnOk_Click(object sender, EventArgs e)
        {
            Response.Write("<script>if(window.confirm('Are you sure you want to cancel this transaction?')){window.location.href='index.aspx';window.alert('You have Logged out of the session!');}</script>");
            Session.Abandon();

        }


        protected void updateDatabase(object sender, EventArgs e)
        {
            UserInfo temp = (UserInfo)Session["currentuser"];
            MySql.Data.MySqlClient.MySqlConnection co;

            string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
            co = new MySql.Data.MySqlClient.MySqlConnection(connection);
            co.Open();
            String Status = "Completed";

            string query = "INSERT INTO `c432017fa02mohammada`.`mohammada_wadfl17_billpayentry` VALUES ('" + temp.EmailAddress + "','" + PaymentDateField.Text + "','" + BusinessNameField.Text + "','" + BusinessAddressField.Text + "','" + AmountField.Text + "','" + PaymentDetailsField.Text + "','" + Status + "') ";



            MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(query, co);

            command.ExecuteNonQuery();
            co.Close();
        }

        protected void sendMail(object sender, EventArgs e)
        {

            UserInfo temp2 = (UserInfo)Session["currentuser"];
            string msgTo = temp2.EmailAddress;
            string msgSubject = "New Transaction Scheduling Notification";
            string msgBody = "Dear " + temp2.EmailAddress + ",<br />" +
                "You have scheduled a transaction in Rapid Bill Pay on " + PaymentDateField.Text + ".<br></br>" +
                "You can check the status of the transaction by visiting " + " <a href=\"http://dcm.uhcl.edu/c432017fa02mohammada/index.aspx \">Login Page</a>" + "<br /><br />" +
                "" +
                " Thank you for using Rapid Bill Pay.<br />" +
                "With Best wishes.<br />" +
                "Rapid Bill pay Admin Team.";

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

            //FirstName.Text = "";
            //LastName.Text = "";
            //Email.Text = "";
            //school.Text = "";


        }
    }
}