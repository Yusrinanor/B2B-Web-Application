using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payment
/// </summary>
public class Payment1
{
    public string AddPayment(Payment payment)
    {
        try
        {
            B2BEntities db = new B2BEntities();
            db.Payments.Add(payment);
            db.SaveChanges();
            return "Product was successfully purchased";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public Payment GetPayment(int id)
    {
        try
        {
            using (B2BEntities db = new B2BEntities())
            {
                Payment payment = db.Payments.Find(id);
                return payment;

            }
        }
        catch (Exception)
        {
            return null;
        }
    }
}