using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cust_ViewProfile : System.Web.UI.Page
{
    public int userid;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Email"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            string email = Session["Email"].ToString();
            Login1 user = new Login1();
            userid = user.GetuserID(email);
            if (!Page.IsPostBack)
            {

                /*
               Get email logged in using session. Session converted to string to match with the email
               Access class Login1 to get function
               Pass email variable to the function to get the ID

                */



                /*
            creating a variable named current user which contains the user id which will be passed to the function GetUser 
            to get the user id which is logged in using the email

               */

                User currentuser = user.GetUser(userid);
                fname.Value = currentuser.fullName;
                cname.Value = currentuser.companyName;
                email1.Value = currentuser.email;
                country.SelectedValue = currentuser.country;
            }
        }

    }

    protected void edit_Click(object sender, EventArgs e)
    {
        User object1 = new User();

        /*
               Open User which is the table to access the variables.
               Value from textbox taken to be stored in the variables(column) of object

        Open Login1 class to access a function inside to pass object1 into the function to be passed into the variable; NewUser
                 */
        object1.Id = userid;
        object1.fullName = fname.Value;
        object1.companyName = cname.Value;
        object1.email = email1.Value;
        object1.country = country.SelectedValue;

        Login1 object2 = new Login1();
        String successmessage = object2.UpdateUser(object1);

        lblresult4.Text = successmessage;

    }

    protected void ChangePass_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cust_ChangePass.aspx");
    }
}