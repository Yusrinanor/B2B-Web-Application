<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_AddProdt.aspx.cs" Inherits="Ad_AddProdt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image: url(images/img_bg_1.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-left">
                    <div class="display-t">
                        <div class="display-tc animate-box" data-animate-effect="fadeInUp">
                            <h1 class="mb30">Add Services</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="fh5co-contact">
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6 animate-box">
                    <h3>Add Product</h3>

                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="pname">Product Name</label>
                            <select id="productselect" class="form-control" runat="server" required="required">
                                <option>Choose...</option>
                                <option value="Analytics 360">Analytics 360</option>
                                <option value="Surveys 360" selected="">Surveys 360</option>
                                <option value="Search Ads 360">Search Ads 360</option>
                            </select>
                        </div>
                        <div class="col-md-12">
                            <label for="descname">Description</label>
                            <textarea id="pdesc" name="pdesc" class="form-control" placeholder="Production description" required="required"></textarea>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="subject">Product Pricing</label>
                            <select id="priceselect" class="form-control" runat="server" required="required">
                                <option>Choose...</option>
                                <option value="150.00">RM 150.00</option>
                                <option value="125.00" selected="">RM 125.00</option>
                                <option value="130.00">RM 130.00</option>
                            </select>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="subject">Image</label>
                            <asp:FileUpload ID="productpic1" runat="server" placeholder="Upload product image" method="post" enctype="multipart/form-data" required="required" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="AddProd" Text="Add" CssClass="btn btn-lg btn-primary" OnClick="AddProd_Click" />
                        <br />
                        <asp:Label runat="server" ID="lblresult1" CssClass="text-success"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

