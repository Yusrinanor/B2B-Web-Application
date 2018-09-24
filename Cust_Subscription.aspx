<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cust_Subscription.aspx.cs" Inherits="Cust_Subscription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header id="fh5co-header" class="fh5co-cover max350" role="banner" style="background-image: url(images/img_bg_1.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-left">
                    <div class="display-t amam">
                        <div class="display-tc animate-box amam" data-animate-effect="fadeInUp">
                            <h1 class="mb30">Your Subscription</h1>
                            <h2 class="mb30">Here is your ongoing subscription</h2>

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
                                <th class="text-center">Image</th>
                                <th class="text-center">Name</th>
                                <th class="text-center">Description</th>
                                <th class="text-center">Plan</th>         
                                <th class="text-center">Price per-month</th> 
                                <th class="text-center">Status</th>                     
                            </tr>
                        </thead>
                        <tbody>
                            <%Login1 userclass = new Login1();
                                int userid = userclass.GetuserID(emailsession);
                                AddProduct1 productclass = new AddProduct1();

                                Payment1 paymentclass = new Payment1();
                                List<Payment> payment =
                                paymentclass.getAllPayments(userid);
                                foreach (Payment payments in payment)
                                {
                                    Product product = productclass.GetProduct(Convert.ToInt32(payments.productId));
                                    Plan plan = productclass.GetPlan(Convert.ToInt32(payments.planId));
                                    %>
                            <tr>
                                <td><img src="images/<%=product.image1%>" height="100" width="100" class="img-responsive" /></td>
                                <td><%=product.name %></td>
                                <td><%=product.description %></td>
                                <td><%=plan.name %></td>
                                <td><%=plan.Price %></td>
                                <td>On-going</td>
                                <td></td>                                                           
                            </tr>
                            <%} %>
                        </tbody>
                       
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

