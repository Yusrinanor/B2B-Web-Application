using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cust_Subscription : System.Web.UI.Page
{
    public string emailsession;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] != null)
        {
            emailsession = Session["Email"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}