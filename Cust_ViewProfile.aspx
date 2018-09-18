<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cust_ViewProfile.aspx.cs" Inherits="Cust_ViewProfile" %>

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
                    <h3 class="title2nd">My Personal Details</h3>
                   
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="fname">Full Name</label>
                                <input type="text" id="fname" class="form-control"  runat="server" required="required"/>
                            </div>

                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="cname">Company Name</label>
                                <input type="text" id="cname" class="form-control" runat="server" required="required"/>
                                
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="email">E-mail</label>
                            <input type="text" id="email" class="form-control" runat="server" required="required"/>                     
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="password">Password</label>
                                                             
                               <input type="text" id="password" class="form-control" runat="server" required="required"/>  
                                
                            </div>
                        </div>

                    <div class="row form-group">
                            <div class="col-md-12">
                                <label for="country">Country</label>
                                                             
                               <input type="text" id="country" class="form-control" runat="server" required="required"/>  
                                
                            </div>
                        </div>
                        <div class="form-group">
                              <asp:Button runat="server" ID="edit" Text="Edit Profile" CssClass="btn btn-lg btn-primary" />                        
                        </div>

                     <asp:Label runat="server" ID="lblresult" CssClass="text-success"></asp:Label>

                   
                </div>
            </div>

        </div>
    </div>
</asp:Content>

