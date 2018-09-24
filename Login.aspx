<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
                            <h1 class="mb30">Log in</h1>
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
                    <h3>Log in</h3>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="email">E-mail</label>
                                <input type="email" id="inpemail" class="form-control" placeholder="Your e-mail" runat="server" />
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="subject">Password</label>
                                <input type="password" id="inppassword" class="form-control" placeholder="Your password" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Button runat="server" ID="login" Text="Login" CssClass="btn btn-lg btn-primary" OnClick="login_Click" />
                        </div>

                    <div class="border-top card-body text-center">Don't have an account? <a href="Registration.aspx">Register</a></div>
                </div>
                <div class="col-md-3"></div>
            </div>

        </div>
    </div>


</asp:Content>

