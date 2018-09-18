using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private Inquiry CreateInquiry()
    {
        Inquiry inquiry = new Inquiry();
        inquiry.companyName = cname.Value;
        inquiry.email = email.Value;
        inquiry.category = categoryselect.Value;
        inquiry.message = message.Value;
        return inquiry;
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        Contact contact = new Contact();
        Inquiry inquiry = CreateInquiry();
        lblresult.Text = contact.AddInquiry(inquiry);

        cname.Value = String.Empty;
        email.Value = String.Empty;
        categoryselect.Value = String.Empty;
        message.Value = String.Empty;

    }
}