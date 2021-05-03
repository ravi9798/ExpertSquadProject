<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="teachernotes.aspx.cs" Inherits="teachers_teachernotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- banner section -->
    <section id="home" class="banner">
        <div id="banner-bg-effect" class="banner-effect"></div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 col-md-12 col-sm-12 order-lg-first mt-lg-0 mt-4">
                    <h1 class="mb-4 title">Your
                 
                        Uploaded Notes
                    </h1> <h1 class="mb-4 title">
                        Will Appear here.
                </h1>

                    <%--<div class="mt-5">
                    <a class="btn btn-primary btn-style mr-2" href="../teachers/teachernotes.aspx">Notes Uploaded by You </a>
                    <a class="btn btn-outline btn-outline-style" href="../teachers/addnotes.aspx">Add Notes </a>
                </div>--%>
                </div>
                <div class="col-lg-5 col-md-12 col-sm-12 order-first text-lg-left text-center">
                    <div>
                        <img src="assets/images/about1.png" alt="" class="rounded-circle img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner section -->
    <!-- contact section -->
    <section class="w3l-contact3">
        <div class="contact1-bg section-gap">
            <div class="container">
                <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12 px-lg-3 px-0">
                    <h4 class="section-title">Your Uploaded Notes</h4>
                    <p class="text-center">All The Notes With Their Chapters are Listed Below</p>
                    <br />

                </div>
                <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12 px-lg-3 px-0">

                    <h4 class="section-title">
                        <div class="form-control btn-primary">
                            <a href="addnotes.aspx" >-------- Add New PDF Notes Now --------</a>
                    </h4>

                </div>
                <asp:GridView ID="GridView1" CssClass="table table-hover" GridLines="None" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="pdf_id" HeaderText="PDF Id" SortExpression="pdf_id" />
                        <asp:BoundField DataField="class_name" HeaderText="Class" SortExpression="class_name" />
                        <asp:BoundField DataField="subject_name" HeaderText="Subject" SortExpression="subject_name" />
                        <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                        <asp:BoundField DataField="chapter_name" HeaderText="Chapter" SortExpression="Chapter" />
                        <asp:BoundField DataField="created_on" HeaderText="Uploaded Date" SortExpression="created_on" />
                        <asp:TemplateField HeaderText="View">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("viewpdfteacher.aspx?filename={0}",Eval("filename")) %>'>View PDF</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%-- <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" ForeColor="Red" runat="server" NavigateUrl='<%# String.Format("deletepdfteacher.aspx?pdf_id={0}",Eval("pdf_id")) %>'>Delete PDF</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                    </Columns>
                </asp:GridView>









            </div>
            <hr />
            <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12 px-lg-3 px-0">

                <h4 class="section-title">
                    <div class="form-control btn-primary">
                        <a href="addnotes.aspx">-------- Add New PDF Notes Now --------</a>
                </h4>

            </div>


        </div>
    </section>

</asp:Content>

