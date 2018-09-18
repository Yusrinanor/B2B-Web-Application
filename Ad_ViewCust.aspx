<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_ViewCust.aspx.cs" Inherits="Admin_Ad_ViewCust" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image: url(images/img_bg_1.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-left">
                    <div class="display-t">
                        <div class="display-tc animate-box" data-animate-effect="fadeInUp">
                            <h1 class="mb30">View Customers</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div id="fh5co-project">
        <div class="container">
            <div class="row">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="text-center">Full Name</th>
                                <th class="text-center">Company Name</th>
                                <th class="text-center">E-mail</th>
                                <th class="text-center">Country</th>                           
                            </tr>
                        </thead>
                        <tbody>
                            <%Login1 listuser = new Login1();
                                List<User> user =
                                listuser.GetAllUsers();
                                foreach (User users in user)
                                { %>
                            <tr>
                                <td><%=users.fullName%></td>
                                <td><%=users.companyName %></td>
                                <td><%=users.email %></td>
                                <td><%=users.country %></td>                                                           
                            </tr>
                            <%} %>
                        </tbody>
                       
                    </table>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

