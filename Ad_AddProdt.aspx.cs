using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Ad_AddProdt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    private Product CreateProduct()
    {
        Product prod = new Product();

        string file_name4 = productpic1.FileName.ToString() + "";
        productpic1.PostedFile.SaveAs(Server.MapPath("~/images/") + file_name4);
        string filePath4 = productpic1.PostedFile.FileName;
        string filename4 = Path.GetFileName(filePath4);
        string ext4 = Path.GetExtension(filename4);
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

        string pdesck = Request.Form["pdesc"];
        prod.name = productselect.Value;
        prod.description = pdesck;
        prod.price = priceselect.Value;
        prod.image1 = filename4;

        return prod;
    }


    protected void AddProd_Click(object sender, EventArgs e)
    {
        AddProduct1 prodmodel = new AddProduct1();
        Product product = CreateProduct();

        lblresult1.Text = prodmodel.AddProduct(product);
    }
}