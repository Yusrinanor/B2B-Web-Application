using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Contact
/// </summary>
public class Contact
{
    public string AddInquiry(Inquiry inquiry)
    {
        try
        {
            B2BEntities db = new B2BEntities();
            db.Inquiries.Add(inquiry);
            db.SaveChanges();

            return inquiry.email +  "was successfully submitted, please wait for our customer service to respond to your inquiries, Thank You.";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public List<Inquiry> GetAllInquiries()
    {
        try
        {
            using(B2BEntities db = new B2BEntities())
            {
                List<Inquiry> inquiry = (from x in db.Inquiries select x).ToList();
                return inquiry;
            }
        }

        catch (Exception)
        {
            return null;
        }
        
    }
        
    
}