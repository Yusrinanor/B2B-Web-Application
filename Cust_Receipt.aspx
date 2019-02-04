<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cust_Receipt.aspx.cs" Inherits="Cust_Receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .invoice-title h2, .invoice-title h3 {
            display: inline-block;
        }

        .table > tbody > tr > .no-line {
            border-top: none;
        }

        .table > thead > tr > .no-line {
            border-bottom: none;
        }

        .table > tbody > tr > .thick-line {
            border-top: 2px solid;
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
                            <h1 class="mb30">Thank you for buying!</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="fh5co-project" class="pad2em">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="invoice-title">
                        <h2>Receipt</h2>
                        <h3 class="pull-right">RId # <%=payid %></h3>
                        <button type="button" onclick="getPDFFileButton()" class="btn btn-primary" style="margin:5px"><i class="icon-download2"></i></button>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-xs-6">
                            <p>
                                <strong>Purchased by:</strong><br>
                                <%=fullname %><br>
                                 <%=companyname %><br>
                                <%=country %><br>
                                <%=email %>
    			
                            </p>
                        </div>
                      
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <address>
                                <strong>Payment:</strong><br>
                                -Complete-<br />
                                Visa 
                                <%=cardname %>
    			
                            </address>
                        </div>
                        <div class="col-xs-6 text-right">
                            <address>
                                <strong>Payment Date:</strong><br>
                                <%=datepayment %><br>
                                <br>
                            </address>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Payment summary</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <thead>
                                        <tr>
                                            <td><strong>Product Id</strong></td>
                                            <td class="text-center"><strong>Product Name</strong></td>
                                            <td class="text-center"><strong>Plan</strong></td>
                                            <td class="text-right"><strong>Total Price</strong></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                        <tr>
                                            <td>#-<%=prodid %></td>
                                            <td class="text-center"><%=productname %></td>
                                            <td class="text-center"><%=planname %></td>
                                            <td class="text-right">MYR<%=subtotal %></td>
                                        </tr>
                                        <tr>
                                            <td class="thick-line"></td>
                                            <td class="thick-line"></td>
                                            <td class="thick-line text-center"><strong>Subtotal</strong></td>
                                            <td class="thick-line text-right">MYR<%=subtotal %></td>
                                        </tr>
                                        <tr>
                                            <td class="no-line"></td>
                                            <td class="no-line"></td>
                                            <td class="no-line text-center"><strong>SST</strong></td>
                                            <td class="no-line text-right">6%</td>
                                        </tr>
                                        <tr>
                                            <td class="no-line"></td>
                                            <td class="no-line"></td>
                                            <td class="no-line text-center"><strong>Total</strong></td>
                                            <td class="no-line text-right">MYR<%=total %></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
