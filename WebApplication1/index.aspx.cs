using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            signup.Visible = false;
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            signup.Visible = false;
            login.Visible = true;
        }

        protected void btnSignup_Click(object sender, EventArgs e){
            login.Visible = false;
            signup.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e){
            Response.Redirect("forgotpassword.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e){
            login.Visible = false;
            signup.Visible = true;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            signup.Visible = false;
            login.Visible = true;
            
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            signup.Visible = false;
            login.Visible = true;
            
        }

     

        protected void BtnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("signuppage.aspx");
        }


        public void btnUserLogin_Click(object sender, EventArgs e)
        {
            string uname = EmailField.Text;
            string pword = PasswordField.Text;
            int countUsers = 0;

            foreach (UserInfo kk in ((List<UserInfo>)Application["AllUsersList"]))
            {
                countUsers++;


                if (kk.EmailAddress == uname && kk.Password == pword)
                {
                    int ind = ((List<UserInfo>)Application["AllUsersList"]).IndexOf(kk);
                    Session["currentuser"] = kk;
                    Session["username"] = kk.FirstName + kk.LastName;
                    // Response.Redirect("myStudents.aspx?index=" + ind);
                    Response.Redirect("payment.aspx?index=" + ind);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Or a wrong password has been given. Please go to the Sign Up page');", true);

                }
            }
            if (countUsers == 0) //if users list is empty or no one is registered yet
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Please go to the Sign Up page');window.location.replace('Default.aspx');",true);
                //Response.Redirect("Default.aspx");

                string strconfirm = "<script>if(window.confirm('It appears this user is not in our database. Please go to the Sign Up page. Are you sure?')){window.location.href='signuppage.aspx'}</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Confirm", strconfirm, false);

            }
        }

    }
}