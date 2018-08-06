using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private User createUser()
    {
        User user = new global::User();
        user.fullName = fname.Value;
        user.companyName = comname.Value;
        user.email = email.Value;
        user.country = countryselect.Value;
        user.password = password.Value;
        user.userType = "Customer";
        return user;
    }

    protected void register_Click(object sender, EventArgs e)
    {
        Login1 register = new Login1();
        User users = createUser();
        lblresult.Text = register.AddUser(users);
        lblterm.Visible = false;
        
    }
}