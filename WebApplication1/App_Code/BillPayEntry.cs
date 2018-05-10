using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



public class BillPayEntry
{
    String emailAddress;
    String paymentTransactionDate;
    String recipientBusinessName;
    String recipientBusinessAddress;
    String amountPaid;
    String paymentDetails;
    int status; /* 0 payment not completed, 1 payment completed */
    public String PaymentTransactionDate
    {
        get { return paymentTransactionDate; } /*ADD THE PROPERTIES AS SHOWN*/
                                               /*FOR THE REMAINING FIELDS.*/
        set { paymentTransactionDate = value; }
    }


    public String EmailAddress { get; set; }
    public String RecipientBusinessName { get; set; }
    public String RecipientBusinessAddress { get; set; }
    public String AmountPaid { get; set; }
    public String PaymentDetails { get; set; }
    public String Status { get; set; }
}