<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProdDetails.aspx.cs" Inherits="ProdDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .boxcolor {
            background-color: deepskyblue;
            border-color: deepskyblue;
        }

        .checkcolor {
            color: lawngreen;
            font-size: 30px;
            padding-right: 20px;
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
                        <div class="display-tc amam">
                            <h1 class="mb10">Product Details</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="fh5co-contact" class="pad2em">
        <div class="container">
            <div class="row">
                <% if (!String.IsNullOrWhiteSpace(Request.QueryString["Id"]))
                    {

                        int prodid = Convert.ToInt32(Request.QueryString["Id"]);
                        AddProduct1 ap = new AddProduct1();
                        Product prod = ap.GetProduct(prodid);





                %>
                <div class="col-md-5">

                    <h1 class="mytitle"><%=prod.name%></h1>
                    <p style="font-size: 20px"><%=prod.description %></p>
                </div>
                <div class="col-md-7">
                    <img src="images/<%=prod.image1 %>" style="height: 400px" />
                </div>
            </div>

        </div>
    </div>
    <div id="fh5co-blog" class="fh5co-bg-section">
        <div class="container">
            <div class="row">
                <%List<Plan> plan = ap.GetAllPlan();
                    foreach (Plan plans in plan)
                    { %>
                <div class="col-md-6 col-sm-4 animate-box" data-animate-effect="fadeInUp">
                    <div class="fh5co-post" style="text-align: center">
                        <h1><%=plans.name %></h1>
                        <hr />
                        <h5><strong style="font-size: 35px; color: deepskyblue"><%=plans.Price %></strong>/per month</h5>
                        <p><i class="icon-check checkcolor"></i><%=plans.description %></p>
                        <p><i class="icon-check checkcolor"></i><%=plans.description_2 %></p>
                        <p><i class="icon-check checkcolor"></i><%=plans.description_3 %></p>
                        <a class="btn btn-primary boxcolor" href="Cust_Payment.aspx?prodid=<%=prod.Id %>&proddesc=<%=prod.description %> &prodname=<%=prod.name 
    %>&prodprice=<%=prod.price %>&planid=<%=plans.Id%>&planname=<%=plans.name %>&prodimage=<%=prod.image1 %>&planprice=<%=plans.Price %>">Purchase Now</a>

                    </div>

                </div>
                <%} %>
            </div>
        </div>
    </div>
    <%
        }
        else
        {
            Response.Redirect("ProductCatalogue.aspx");
        } %>
</asp:Content>

