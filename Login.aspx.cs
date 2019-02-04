using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        Login1 log = new Login1();

        bool loginresult = log.GetLogin(inpemail.Value, inppassword.Value);
        if (loginresult)
        {
            Session["Email"] = inpemail.Value;


            Response.Redirect("Home.aspx");
        }
        else
            Response.Write("Invalid e-mail or password");
    }
}