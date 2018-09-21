using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cust_ChangePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void edit_Click(object sender, EventArgs e)
    {
        string newpassword = newpass.Value;
        string email = Session["Email"].ToString();
        Login1 loginclass = new Login1();
        int userid = loginclass.GetuserID(email);

        loginclass.ChangePass(newpassword, userid);
        Response.Redirect("Cust_ViewProfile.aspx");

    }
}