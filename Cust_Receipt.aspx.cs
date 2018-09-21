using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cust_Receipt : System.Web.UI.Page
{
    public int payid, prodid;
    public string fullname, email, companyname, country, cardno, cardname, productname, planname, datepayment;
    public double total, productprice, planprice, subtotal;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["payid"] != null)
        {
            payid = Convert.ToInt32(Request.QueryString["payid"]);
            Payment1 payclass = new Payment1();
            Payment payment = payclass.GetPayment(payid);
            AddProduct1 productclass = new AddProduct1();
            Product product = productclass.GetProduct(Convert.ToInt32(payment.productId));
            Plan plan = productclass.GetPlan(Convert.ToInt32(payment.planId));
            Login1 userclass = new Login1();
            User user = userclass.GetUser(Convert.ToInt32(payment.userId));

            productprice = Convert.ToDouble(product.price);
            planprice = Convert.ToDouble(plan.Price.ToString());
            subtotal = productprice + planprice;
            double tax = 0.06 * subtotal;
            total = subtotal + tax;

            fullname = user.fullName;
            email = user.email;
            companyname = user.companyName;
            country = user.country;
            cardno = payment.CardNumber;
            cardname = payment.NameCard;
            productname = product.name;
            prodid = product.Id;
            planname = plan.name;
            datepayment = payment.datePayment.ToString();

        }
        else
        {
            Response.Redirect("ProductCatalogue.aspx");
        }
    }
}