using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cust_Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (Request.QueryString["prodid"] == null)
            {
                Response.Redirect("ProductCatalogue.aspx");
            }
        }


    }

    private Payment createPayment()
    {
        Payment pay = new Payment();
        string email = Session["Email"].ToString(); //get session email to get the user id
        Login1 login = new Login1();
        int userid = login.GetuserID(email);
        int productid = Convert.ToInt32(Request.QueryString["prodid"]);
        int planid = Convert.ToInt32(Request.QueryString["planid"]);
        string prodprice = Request.QueryString["prodprice"];
        string planprice = Request.QueryString["planprice"];
        double totalprice = Convert.ToDouble(prodprice) + Convert.ToDouble(planprice);
        DateTime now = DateTime.Now;
        pay.datePayment = now;
        pay.userId = userid;
        pay.productId = productid;
        pay.planId = planid;
        pay.Price = Convert.ToString(totalprice);
        pay.CardNumber = cnumb.Value;
        pay.ExpiryDate = month.Value + year.Value;
        pay.SecurityCode = code.Value;
        pay.NameCard = namecard.Value;
        return pay;
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        Payment1 pay1 = new Payment1();
        Payment pay = createPayment();
        string result = pay1.AddPayment(pay);
        Response.Redirect("Cust_Receipt.aspx?payid=" + pay.Id);
    }
}