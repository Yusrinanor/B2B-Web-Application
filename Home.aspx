<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- hello world -->

    <header id="fh5co-header" class="fh5co-cover max350" role="banner" style="background-image: url(images/img_bg_1.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-left">
                    <div class="display-t amam">
                        <div class="display-tc animate-box amam" data-animate-effect="fadeInUp">
                            <h1 class="mb30">Lets build a brand together</h1>
                            <h2 class="mb30">The #1 Marketing Services in 2018</h2>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="fh5co-project" class="pad2em">
        <div class="container">
            <div class="row row-pb-md">
                <div class="col-md-8 col-md-offset-2 text-left fh5co-heading  animate-box">
                    <h2>Our Services</h2>
                </div>
            </div>

            <div class="row">
                <asp:ListView ID="ListView3" runat="server" DataSourceID="XmlDataSource1">
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-6 fh5co-project animate-box" data-animate-effect="fadeIn">
                            <h3 style="color: black"><%# XPath("serviceName") %></h3>
                            <a style="height: 200px">
                                <img src="<%# XPath("serviceImage") %>" alt="Free HTML5 Website Template by gettemplates.co" class="img-responsive">
                                <div class="fh5co-copy">
                                    <h3><%# XPath("serviceName") %></h3>
                                    <p><%# XPath("serviceDescription") %></p>
                                    <span class="btn btn-primary">RM <%# XPath("servicePrice") %></span>
                                </div>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XML/Service.xml"></asp:XmlDataSource>

            </div>
        </div>

    </div>

    <div id="fh5co-services" class="fh5co-bg-section border-bottom">
        <div class="container">

            <div class="row row-pb-md">
                <div class="col-md-8 col-md-offset-2 text-left animate-box" data-animate-effect="fadeInUp">
                    <div class="fh5co-heading">
                        <span>We're expert</span>
                        <h2>Why BrandBuilder?</h2>
                        <p>We Give You The Solution You Need To Better Understand Your Customers</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="XmlDataSource2">
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-6 ">
                            <div class="feature-center animate-box" data-animate-effect="fadeInUp">
                                <h3><%# XPath("Achieve1") %></h3>
                                <p><%# XPath("AchieveDesc") %></p>
                                <p><a href="#"><%# XPath("AchieveLink") %></a></p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/XML/About.xml"></asp:XmlDataSource>
            </div>
        </div>
    </div>


    <div id="fh5co-testimonial" class="fh5co-bg-section">
        <div class="container">
            <div class="row animate-box row-pb-md">
                <div class="col-md-8 col-md-offset-2 text-left fh5co-heading">
                    <span>You deserved happiness</span>
                    <h2>Happy Clients</h2>
                    <p>Our customers have seen improvements in their sales with our marketing tools</p>
                </div>
            </div>
            <div class="row">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource3">
                    <ItemTemplate>

                        <div class="col-md-6 animate-box">
                            <div class="testimonial fh5co-selected">
                                <blockquote>
                                    <p>&ldquo;<%# XPath("clientDesc") %>&rdquo;</p>
                                    <p class="author">
                                        <img src="images/person1.jpg" alt="Free HTML5 Bootstrap Template by gettemplates.co">
                                        <cite>&mdash; <%# XPath("clientName") %></cite>
                                    </p>
                                </blockquote>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:ListView>
                <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/XML/Clients.xml"></asp:XmlDataSource>
            </div>
        </div>

        <div id="fh5co-counter">
            <div class="container">

                <div class="row animate-box" data-animate-effect="fadeInUp">
                    <div class="col-md-8 col-md-offset-2 text-left fh5co-heading">
                        <span>Enjoy it</span>
                        <h2>Fun Facts</h2>
                        <p>Our business has grown 300% over the last 5 years</p>
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                        <div class="feature-center">
                            <span class="icon">
                                <i class="ti-download"></i>
                            </span>
                            <span class="counter"><span class="js-counter" data-from="0" data-to="15" data-speed="1500" data-refresh-interval="50">1</span>M+</span>
                            <span class="counter-label">Downloads</span>

                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                        <div class="feature-center">
                            <span class="icon">
                                <i class="ti-face-smile"></i>
                            </span>
                            <span class="counter"><span class="js-counter" data-from="0" data-to="120" data-speed="1500" data-refresh-interval="50">1</span>+</span>
                            <span class="counter-label">Happy Clients</span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                        <div class="feature-center">
                            <span class="icon">
                                <i class="ti-briefcase"></i>
                            </span>
                            <span class="counter"><span class=" js-counter" data-from="0" data-to="90" data-speed="1500" data-refresh-interval="50">1</span>+</span>
                            <span class="counter-label">Projects Done</span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                        <div class="feature-center">
                            <span class="icon">
                                <i class="ti-time"></i>
                            </span>
                            <span class="counter"><span class="js-counter" data-from="0" data-to="12" data-speed="1500" data-refresh-interval="50">1</span>K+</span>
                            <span class="counter-label">Hours Spent</span>

                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div id="fh5co-blog" class="fh5co-bg-section">
            <div class="container">
                <div class="row animate-box row-pb-md" data-animate-effect="fadeInUp">
                    <div class="col-md-8 col-md-offset-2 text-left fh5co-heading">
                        <span>Thoughts &amp; Ideas</span>
                        <h2>Our Blog</h2>
                        <p>The latest news, perspectives, and insights from BrandBuilder Marketing Platform and their services.</p>
                    </div>
                </div>
                <div class="row">
                    <asp:ListView ID="ListView4" runat="server" DataSourceID="XmlDataSource4">
                        <ItemTemplate>
                            <div class="col-md-4 col-sm-4 animate-box" data-animate-effect="fadeInUp">
                                <div class="fh5co-post">
                                    <span class="fh5co-date"><%# XPath("date") %></span>
                                    <h3><a href="#"><%# XPath("title") %></a></h3>
                                    <p><%# XPath("content") %></p>
                                    <p class="author">
                                        <img src="images/person1.jpg" alt="Free HTML5 Bootstrap Template by gettemplates.co">
                                        <cite><%# XPath("author") %></cite>

                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                    <asp:XmlDataSource ID="XmlDataSource4" runat="server" DataFile="~/XML/Blog.xml"></asp:XmlDataSource>
                </div>
            </div>
        </div>

        <div id="fh5co-started">
            <div class="container">
                <div class="row animate-box">
                    <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                        <span>Let's work together</span>
                        <h2>Try our services for free 1-month trial</h2>
                        <p>We help you achieve what you need at a lower costs</p>
                        <p>
                            
                            <a href="ContactUs.aspx" class="btn btn-primary">Get In Touch</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



