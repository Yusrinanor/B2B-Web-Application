<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_ViewPayment.aspx.cs" Inherits="Ad_ViewPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm max350" role="banner" style="background-image: url(images/img_bg_1.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-left">
                    <div class="display-t amam">
                        <div class="display-tc animate-box amam" data-animate-effect="fadeInUp">
                            <h1 class="mb30">View Payment</h1>
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
                                <th class="text-center">User Id</th>
                                <th class="text-center">Product Id</th>
                                <th class="text-center">Plan Id</th>
                                <th class="text-center">Price</th>   
                                <th class="text-center"> Subscription Status</th>                        
                            </tr>
                        </thead>
                        <tbody>
                            <%Login1 listpayment = new Login1();
                                List<Payment> pay =
                                listpayment.GetAllPayments();
                                foreach (Payment payment in pay)
                                { %>
                            <tr>
                                <td><%=payment.userId%></td>
                                <td><%=payment.productId %></td>
                                <td><%=payment.planId%></td>
                                <td><%=payment.Price %></td>  
                                <td>On-going</td>                                                          
                            </tr>
                            <%} %>
                        </tbody>
                       
                    </table>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

