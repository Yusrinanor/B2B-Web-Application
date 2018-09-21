<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
                            <h1 class="mb30">Register</h1>
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
                    <h3>Register</h3>

                    <div class="row form-group">
                        <div class="col-md-6">
                            <label for="fname">Full Name</label>
                            <input type="text" id="fname" class="form-control" placeholder="Your full name" runat="server" required="required" />
                        </div>
                        <div class="col-md-6">
                            <label for="lname">Company Name</label>
                            <input type="text" id="comname" class="form-control" placeholder="Company's name" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="subject">Enter Email Address</label>
                            <input type="email" id="email" class="form-control" placeholder="Your email address" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="country">Country</label>
                            <select id="countryselect" class="form-control" runat="server" required="required">
                                <option>Choose...</option>
                                <option value="Indonesia">Indonesia</option>
                                <option value="Malaysia" selected="">Malaysia</option>
                                <option value="Brunei">Brunei</option>
                                <option value="Singapore">Singapore</option>
                            </select>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="subject">Create Password</label>
                            <input type="password" id="password" class="form-control" placeholder="minimum of 4 characters" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="subject">Confirm Password</label>
                            <input type="password" id="confirm_password" class="form-control" placeholder="Confirm Password" required="required" />
                           
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="register" Text="Register" CssClass="btn btn-lg btn-primary" OnClick="register_Click" />
                    </div>
                    <asp:Label runat="server" ID="lblterm" CssClass="text-muted">By clicking the 'Register' button, you confirm that you accept our
                            <br />
                            Terms of use and Privacy Policy.</asp:Label>
                    <br />
                    <asp:Label runat="server" ID="lblresult" CssClass="text-success"></asp:Label>

                    <div class="border-top card-body text-center">Have an account? <a href="Login.aspx">Log In</a></div>
                </div>
                <div class="col-md-3"></div>
            </div>

        </div>
    </div>

    <script type="text/javascript">
        var password = document.getElementById("password")
            , confirm_password = document.getElementById("confirm_password");
        function valpass() {
            if (password.value.length < 3) {
                password.setCustomValidity("Must be 6 or more characters");
            }
            else {
                password.setCustomValidity('');
            }
        }

        function validatePassword() {
            if (password.value != confirm_password.value) {
                confirm_password.setCustomValidity("Passwords do not match");
            } else {
                confirm_password.setCustomValidity('');
            }
        }
        password.onchange = valpass;
        confirm_password.onkeyup = validatePassword
    </script>
</asp:Content>

