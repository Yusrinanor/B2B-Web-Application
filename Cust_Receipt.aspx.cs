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
        if (Session["Email"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (Request.QueryString["payid"] != null)
        {
            payid = Convert.ToInt32(Request.QueryString["payid"]); //this is to get the pay id based on the previous page
            Payment1 payclass = new Payment1();
            Payment payment = payclass.GetPayment(payid); //get the specific payment data using the pay id
            AddProduct1 productclass = new AddProduct1();
            Product product = productclass.GetProduct(Convert.ToInt32(payment.productId)); //get the product name using the product id stated in the payment data
            Plan plan = productclass.GetPlan(Convert.ToInt32(payment.planId));
            Login1 userclass = new Login1();
            User user = userclass.GetUser(Convert.ToInt32(payment.userId)); //get the user name using the user id stated in the payment data

            productprice = Convert.ToDouble(product.price);
            planprice = Convert.ToDouble(plan.Price.ToString()); //convert to double cuz price is string in data so to add numbers, convert to double first
            subtotal = planprice + productprice;
            double tax = 0.06 * subtotal;
            total = subtotal + tax;

            fullname = user.fullName;
            email = user.email;
            companyname = user.companyName; //based on variable declared, this is equal to what will be displayed in front end
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