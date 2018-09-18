<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductCatalogue.aspx.cs" Inherits="ProductCatalogue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .mybox {
            background-color: #3F51B5;
            padding: 5px;
            border-radius: 5px;
            color: white !important;
            text-align: center;
            box-shadow:0 4px 8px 0 rgba(0,0,0,0.2);
            
        }

        .marauto{
            margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm max350" role="banner" style="background-image: url(images/img_bg_1.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-left">
                    <div class="display-t amam">
                        <div class="display-tc animate-box amam" data-animate-effect="fadeInUp">
                            <h1 class="mb30">Product Catalogue</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>


    <div id="fh5co-project" class="pad2em">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading  animate-box">
                    <h2 class="mytitle">Our Solutions</h2>
                </div>
            </div>

            <div class="row">
                <% AddProduct1 addprod = new AddProduct1();
                    List<Product> product =
                    addprod.GetAllProducts();
                    foreach (Product products in product)
                    { %>
                <div class="col-md-4 col-sm-6 fh5co-project animate-box" data-animate-effect="fadeIn">
                    <h3 style="color: black"><%=products.name%></h3>
                    <a style="height: 240px; border-radius: 5px;">
                        <img src="images/<%=products.image1 %>" alt="Free HTML5 Website Template by gettemplates.co" class="img-responsive" />
                        <div class="fh5co-copy">
                            <p class="mybox"><%=products.description %></p>
                            <p class="mybox" style="width:100PX">RM <%=products.price %></p>
                            <button type="button" class="btn btn-primary" onclick="window.location.href = 'ProdDetails.aspx?id=<%=products.Id %>'">View Product Details</button>
                            
                        </div>
                    </a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <%} %>
            </div>
        </div>

    </div>

</asp:Content>

