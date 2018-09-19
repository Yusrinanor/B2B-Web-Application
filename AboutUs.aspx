<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

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
                            <h1 class="mb30">About BrandBuilder </h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>



    <div id="fh5co-contact" class="pad2em">
        <div class="container">
            <div class="row">
                <div class="col-md-1">
                </div>

                <div class="col-md-10 animate-box">
                    <h2 class="mytitle">About BrandBuilder</h2>
                    <h4 style="font-weight:bold">Faster, smarter marketing</h4>
                    <p>Introducing BrandBuilder, a unified advertising and analytics platform for smarter marketing and better results.</p>
                    <p>Our marketing solutions surrounds everything from analytics to surveys and they are easy-to-use tools for businesses, provide advanced solutions establishing a deeper customer connection to drive marketing results with a complete set of solutions</p>
                    <br />
                    <h3 class="title2nd">Integrated solutions for every marketer</h3>

                    <br />
                    <asp:ListView runat="server" DataSourceID="XmlDataSource1">
                        <ItemTemplate>
                            <div class="col-md-4 col-sm-6 fh5co-project animate-box" data-animate-effect="fadeIn">
                                <a href="#">
                                    <img src="<%# XPath("serviceImage") %>" alt="Free HTML5 Website Template by gettemplates.co" class="img-responsive">
                                    <div class="fh5co-copy">
                                        <h3><%# XPath("serviceName") %></h3>
                                        <p style="color:black"><%# XPath("serviceDescription") %></p>
                                    </div>
                                </a>
                                &nbsp;&nbsp;
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XML/Service.xml"></asp:XmlDataSource>




                </div>
            </div>

        </div>
    </div>
</asp:Content>

