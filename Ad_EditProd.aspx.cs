using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ad_EditProd : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {
                int prodid = Convert.ToInt32(Request.QueryString["Id"]);
                AddProduct1 ap = new AddProduct1();
                Product prod = ap.GetProduct(prodid);
                idproduct.Value = Request.QueryString["Id"];
                productselect1.SelectedValue = prod.name;
                priceselect1.SelectedValue = prod.price;
                pdesc1.Text = prod.description;


                imageproduct.Value = prod.image1;


            }
            else
            {
                Response.Redirect("Ad_ViewProd.aspx");
            }

        }

    }


    protected void UpdateProd_Click(object sender, EventArgs e)
    {
        string imagename = "";
        Product prod = new Product();
        prod.Id = Convert.ToInt32(idproduct.Value);
        prod.name = productselect1.SelectedItem.Value;

        
        prod.description = pdesc1.Text;
        prod.price = priceselect1.SelectedItem.Value;
        System.Diagnostics.Debug.WriteLine(prod.name+prod.description+prod.price);


        if (productpic1.HasFile)
        {
            string file_name4 = productpic1.FileName.ToString() + "";
            productpic1.PostedFile.SaveAs(Server.MapPath("~/images/") + file_name4);
            string filePath4 = productpic1.PostedFile.FileName;
            imagename = Path.GetFileName(filePath4);
            string ext4 = Path.GetExtension(imagename);
            string contenttype4 = String.Empty;
            switch (ext4)
            {
                case ".jpg":
                    contenttype4 = "image/jpg";
                    break;
                case ".png":
                    contenttype4 = "image/png";
                    break;
                case ".gif":
                    contenttype4 = "image/gif";
                    break;
            }
            Stream fs4 = productpic1.PostedFile.InputStream;
            BinaryReader br4 = new BinaryReader(fs4);
            Byte[] bytes4 = br4.ReadBytes((Int32)fs4.Length);
        }
        else
        {
            imagename = imageproduct.Value;
        }

        prod.image1 = imagename;

        AddProduct1 ap = new AddProduct1();
        String promise = ap.UpdateProduct(prod);
        lblresult1.Text = promise;
    }
}