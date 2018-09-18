<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_EditProd.aspx.cs" Inherits="Ad_EditProd" %>

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
                            <h1 class="mb30">Edit Services</h1>
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
                    <h3>Edit Product</h3>
                    <input type="hidden" runat="server" id="idproduct" />
                    <input type="hidden" runat="server" id="imageproduct" />
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="pname">Product Name</label>
                            <asp:DropDownList ID="productselect1" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select----</asp:ListItem>
                                <asp:ListItem Value="Analytics 360">Analytics 360</asp:ListItem>
                                <asp:ListItem Value="Surveys 360">Surveys 360</asp:ListItem>
                                <asp:ListItem Value="Search Ads 360">Search Ads 360</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-12">
                            <label for="descname">Description</label>
                            <asp:TextBox runat="server" ID="pdesc1" TextMode="MultiLine" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="subject">Product Pricing</label>
                            <asp:DropDownList ID="priceselect1" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select----</asp:ListItem>
                                <asp:ListItem Value="150.00">RM 150.00</asp:ListItem>
                                <asp:ListItem Value="125.00">RM 125.00</asp:ListItem>
                                <asp:ListItem Value="130.00">RM 130.00</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="subject">Image</label>
                            <asp:FileUpload ID="productpic1" runat="server" placeholder="Upload product image" method="post" enctype="multipart/form-data" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="UpdateProd" Text="Save" CssClass="btn btn-lg btn-primary" OnClick="UpdateProd_Click" />
                        <br />
                        <asp:Label runat="server" ID="lblresult1" CssClass="text-success"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

