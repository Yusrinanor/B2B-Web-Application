<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_ViewInquiry.aspx.cs" Inherits="Ad_ViewInquiry" %>

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
                            <h1 class="mb30">View Inquiries</h1>
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
                                <th class="text-center">Company Name</th>
                                <th class="text-center">E-mail</th>
                                <th class="text-center">Category</th>
                                <th class="text-center">Message</th>                           
                            </tr>
                        </thead>
                        <tbody>
                            <%Contact listinquiries = new Contact();
                                List<Inquiry> inquiries =
                                listinquiries.GetAllInquiries();
                                foreach (Inquiry inquiry in inquiries)
                                { %>
                            <tr>
                                <td><%=inquiry.companyName%></td>
                                <td><%=inquiry.email %></td>
                                <td><%=inquiry.category %></td>
                                <td><%=inquiry.message %></td>  
                                <td></td>                                                         
                            </tr>
                            <%} %>
                        </tbody>
                       
                    </table>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

