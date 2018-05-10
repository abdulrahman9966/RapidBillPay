using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class UserInfo
{
String stateOrProvince;
String streetAddress;
String zipCode;
String firstName;
String lastName;
String homePhone;
String cellPhone;
String emailAddress;
String password;
String securityQuestion;
String securityQuestionAnswer;
List<BillPayEntry> myBillPayments;
public String EmailAddress
{
get { return emailAddress; } /*ADD THE PROPERTIES AS SHOWN*/
set { emailAddress = value; } /*FOR THE REMAINING FIELDS.*/
}
    public String Password { get; set; }
    public String FirstName { get; set; }
    public String LastName { get; set; }
    public String SecurityQuestion { get; set; }
    public String SecurityQuestionAnswer { get; set; }
    public String StateOrProvince { get; set; }
    public String StreetAddress { get; set; }
    public string ZipCode { get; set; }
    public string HomePhone { get; set; }
    public string CellPhone { get; set; }

    public List<BillPayEntry> MybillPayments { get; set; }

}