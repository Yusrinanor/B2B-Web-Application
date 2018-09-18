<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
                            <h1 class="mb30">Contact Us</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>



    <div id="fh5co-contact" class="pad2em">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-md-push-1 animate-box">

                    <div class="fh5co-contact-info">
                        <h3 class="title2nd">Contact Information</h3>
                        <ul>
                            <li class="address">198 West 21th Street,
                                <br/>
                                Suite 721 New York, 
                                <br />
                                NY 10016</li>
                            <li class="phone"><a href="tel://1234567920">+ 1235 2355 98</a></li>
                            <li class="email"><a href="mailto:customerservice@brandbuilder.com">info@yoursite.com</a></li>
                            <li class="url"><a href="http://brandbuilder.com">brandbuilder.co</a></li>
                        </ul>
                    </div>

                </div>
                <div class="col-md-6 animate-box">
                    <h3 class="title2nd">Get In Touch</h3>
                   
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="cname">Company Name</label>
                                <input type="text" id="cname" class="form-control" placeholder="Your company name" runat="server" required="required"/>
                            </div>

                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="email">Email</label>
                                <input type="text" id="email" class="form-control" placeholder="Your email address" runat="server" required="required"/>
                                <asp:RegularExpressionValidator ID="validEmail" runat="server" ErrorMessage="Please enter a valid e-mail address" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="pname">Category</label>
                            <select id="categoryselect" class="form-control" runat="server" required="required">
                                <option selected="">Choose...</option>
                                <option value="Our Solution">Our Solutions</option>
                                <option value="Purchase Process">Purchase Process</option>
                                <option value="Subscriptions">Subscriptions</option>
                                <option value="Others">Others</option>

                            </select>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="message">Message</label>
                                                             
                                <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about your inquiries" runat="server" required="required"></textarea>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Button runat="server" ID="Submit" Text="Submit" class="btn btn-lg btn-primary" OnClick="Submit_Click" />                           
                        </div>

                     <asp:Label runat="server" ID="lblresult" CssClass="text-success"></asp:Label>

                   
                </div>
            </div>

        </div>
    </div>

</asp:Content>

