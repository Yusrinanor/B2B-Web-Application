<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cust_ChangePass.aspx.cs" Inherits="Cust_ChangePass" %>

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
                            <h1 class="mb30">View Profile</h1>
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
                    <h3 class="title2nd">Change Password</h3>

                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="newpass">New Password</label>
                            <input type="password" id="newpass" class="form-control" runat="server" required="required" />
                        </div>

                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="confirmpass">Confirm New Password</label>
                            <input type="password" id="confirmpass" class="form-control" runat="server" required="required" />

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="edit" Text="Submit" CssClass="btn btn-lg btn-primary" OnClick="edit_Click" />
                    </div>

                   


                </div>
        </div>

    </div>
    </div>
</asp:Content>

