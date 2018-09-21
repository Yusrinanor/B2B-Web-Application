<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_ViewProd.aspx.cs" Inherits="Ad_ViewProd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm max350" role="banner" style="background-image: url(images/img_bg_1.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-left">
                    <div class="display-t amam">
                        <div class="display-tc animate-box amam" data-animate-effect="fadeInUp">
                            <h1 class="mb30">View Solutions</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div id="fh5co-project" class="pad2em">
        <div class="container">
            <div class="row">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="text-center">Name</th>
                                <th class="text-center">Description</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Image</th>
                                <th class="text-center">Control</th>                             
                            </tr>
                        </thead>
                        <tbody>
                            <%AddProduct1 addprod = new AddProduct1();
                                List<Product> product =
                                addprod.GetAllProducts();
                                foreach (Product products in product)
                                { %>
                            <tr>
                                <td><%=products.name%></td>
                                <td><%=products.description %></td>
                                <td><%=products.price %></td>
                                <td><img src="images/<%=products.image1 %>" height="100" width="100" class="img-responsive" /></td> 
                                <td><a href="Ad_EditProd.aspx?Id=<%=products.Id %>" class="btn btn-primary">Edit</a></td>                              
                            </tr>
                            <%} %>
                        </tbody>
                       
                    </table>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

