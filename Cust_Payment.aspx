<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cust_Payment.aspx.cs" Inherits="Cust_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .modal-header-primary {
            color: #ffffff;
            padding: 9px 15px;
            border-bottom: 1px solid #eee;
            background-color: #428bca;
            -webkit-border-top-left-radius: 5px;
            -webkit-border-top-right-radius: 5px;
            -moz-border-radius-topleft: 5px;
            -moz-border-radius-topright: 5px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
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
                            <h1 class="mb30">Make Your Purchase</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="fh5co-contact" class="pad2em">
        <div class="container">

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6 animate-box">


                    <div class="row">
                        <h3 class="title2nd">Order Summary</h3>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="text-center">Product</th>
                                        <th class="text-center"></th>
                                        <th class="text-center">Plan</th>
                                        <th class="text-center">Total Price</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td><%=Request.QueryString["prodname"]%></td>
                                        <td>
                                            <img src="images/<%=Request.QueryString["prodimage"]%>" height="100" width="100" class="img-responsive" /></td>
                                        <td><%=Request.QueryString["planname"] %></td>
                                        <td><%=Request.QueryString["prodprice"] %></td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>
                    <hr />


                    <div class="row">
                        <h3 class="title2nd">Payment Details</h3>
                        <p style="color: black; font-size: 20px !important" class="col-md-3">We Accept</p>
                        <img class="col-md-3" src="images/PAYMENT.PNG" alt="some image" />
                    </div>

                    <h4 style="font-weight: bold; font-size: 15px !important">You will not be charged until you have reviewed and placed your order in the next step.</h4>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="cnumb">Card Number</label>
                            <input type="number" oninput="limitany(this,16)" id="cnumb" class="form-control" placeholder="Your Card Number" runat="server" required="required" />
                        </div>

                    </div>
                    <div class="row form-group">

                        <div class="col-md-6">
                            <label for="expiryd">Expiry Date (MM/YY)</label>
                            <div class="form-inline" style="margin-bottom: 15px">
                                <select id="month" name="month" class="form-control" runat="server" required="required">
                                    <option selected="">MM</option>
                                    <option value="1">01</option>
                                    <option value="2">02</option>
                                    <option value="3">03</option>
                                    <option value="4">04</option>
                                    <option value="5">05</option>
                                    <option value="6">06</option>
                                    <option value="7">07</option>
                                    <option value="8">08</option>
                                    <option value="9">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                                <select id="year" class="form-control" runat="server" required="required">
                                    <option selected="">YYYY</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                    <option value="2020">2020</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                    <option value="2023">2023</option>
                                    <option value="2024">2024</option>
                                    <option value="2025">2025</option>
                                    <option value="2026">2026</option>
                                    <option value="2027">2027</option>
                                    <option value="2028">2028</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="cnumb">Security Code</label>
                            <input type="number" oninput="limitany(this,4)" id="code" class="form-control" placeholder="Your CVV" runat="server" required="required" />
                        </div>
                        <script>
                            function limitany(num, limit) {
                                if (num.value.length > limit) {
                                    num.value = num.value.slice(0, limit);
                                }

                            }
                        </script>
                        <div class="col-md-12" style="margin-bottom: 15px">
                            <label for="subject">Name on Card</label>
                            <input type="text" id="namecard" class="form-control" placeholder="Your name on your card" runat="server" required="required" />
                        </div>
                        <div class="col-md-6">
                            <a class="btn btn-primary" href="#primary" data-toggle="modal">
                                <i class="icon-check2"></i>Purchase
                            </a>


                        </div>
                    </div>

                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-header-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h1 style="color: white"><i class="fa fa-bar-chart-o"></i>Confirmation</h1>
                </div>
                <div class="modal-body">
                    By clicking on complete purchase, you will finish the payment and proceed to using the service.
               
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <asp:Button runat="server" ID="submit" CssClass="btn btn-success pull-left" Text="Complete Purchase" OnClick="submit_Click" />
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!-- Modal -->
</asp:Content>

