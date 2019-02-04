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
                                <th class="text-center">User Name</th> <!-- user name is from user data -->
                                <th class="text-center">Service Name</th><!-- service name is from product data -->
                                <th class="text-center">Plan Type</th><!-- plan type name is from plan data -->
                                <th class="text-center">Price</th>   <!-- price from payment plan price -->
                                <th class="text-center"> Subscription Status</th>   <!-- on-going status -->                     
                            </tr>
                        </thead>
                        <tbody>
                            <%Login1 loginclass = new Login1();
                                List<Payment> pay = loginclass.GetAllPayments();
                                AddProduct1 productclass = new AddProduct1();
                                
                                foreach (Payment payment in pay) //it loops every object from Payment data in the form of the list using the function getallpayments
                                {

                                    User user = loginclass.GetUser(Convert.ToInt32(payment.userId)); //Get GetUser function which returns User, explains why it is 'User user='. Put User ID in bracket
                                    //since u r looking for the user based on ID
                                    // convert because from entity framework, they generate the payment.userId as Int?. it should be Int (it is by definition and implementation is same) however, the compiler interprete it
                                    // differently

                                    
                                    Product product = productclass.GetProduct(Convert.ToInt32(payment.productId));
                                    Plan plan = productclass.GetPlan(Convert.ToInt32(payment.planId));
                                    %>
                                    
                            <tr>
                                <td class="text-center"><%=user.fullName%></td> <!-- to get full name u have to use .fullname because initially, it is returning an object so to be specific u use a dot -->
                                <td class="text-center"><%=product.name %></td>
                                <td class="text-center"><%=plan.name%></td>
                                <td class="text-center"><%=payment.Price %></td>  
                                <td class="text-center">On-going</td>                                                          
                            </tr>
                            <%} %>
                        </tbody>
                       
                    </table>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

