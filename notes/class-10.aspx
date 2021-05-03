<%@ Page Title="" Language="C#" MasterPageFile="~/notes/notes.master" AutoEventWireup="true" CodeFile="class-10.aspx.cs" Inherits="notes_class_10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- about page breadcrumns -->
    <section class="inner-banner">
    </section>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-padding">
            <li class="breadcrumb-item"><a href="../home.aspx">ExpertSquad</a></li>
            <li class="breadcrumb-item"><a href="../students/studenthome.aspx"><%=HttpContext.Current.Session["first_name"]%></a></li>
            <li class="breadcrumb-item"><a href="noteshome.aspx">Notes</a></li>
            <li class="breadcrumb-item active" aria-current="page">Class-10</li>
        </ol>
    </nav>
    <!-- //about page breadcrumns -->



    <!-- contact section -->
    <section class="w3l-contact3">
        <div class="contact1-bg section-gap">
            <div class="container">
                <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12 px-lg-3 px-0">
                    <h4 class="section-title">Class - 10 Notes.</h4>

                </div>
                <div class="row contact-main mt-5">
                    <div class="col-md-6 ">

                        <div class="box-wrap">
                            <div class="icon">
                                <span class="fa fa-book"></span>
                            </div>

                            <!-- noteslist section -->
                            <h4 class="section-title">Biology</h4>
                            <asp:GridView ID="GridView1" CssClass="table table-hover" GridLines="None" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="chapter_name" HeaderText="chapter" SortExpression="course_name" />
                                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                    <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("viewnotes.aspx?filename={0}",Eval("filename")) %>'>View Notes</asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <hr />
                        </div>



                    </div>
                    <!-- map iframe-->
                    <div class="col-md-6  mt-lg-0 mt-4">
                        <div class="box-wrap">
                            <div class="icon">
                                <span class="fa fa-book"></span>
                            </div>

                            <!-- noteslist section -->
                            <h4 class="section-title">Chemistry</h4>
                            <asp:GridView ID="GridView2" CssClass="table table-hover" GridLines="None" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="chapter_name" HeaderText="chapter" SortExpression="course_name" />
                                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                    <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("viewnotes.aspx?filename={0}",Eval("filename")) %>'>View Notes</asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                            <hr />
                        </div>
                    </div>
                    <!-- //map iframe -->
                </div>
            </div>
        </div>
    </section>



    <!-- contact section -->
    <section class="w3l-contact3">
        <div class="contact1-bg section-gap">
            <div class="container">
                

                <div class="row contact-main mt-5">
                    <div class="col-md-6 ">

                        <div class="box-wrap">
                            <div class="icon">
                                <span class="fa fa-book"></span>
                            </div>

                            <!-- noteslist section -->
                            <h4 class="section-title">Maths</h4>
                            <asp:GridView ID="GridView3" CssClass="table table-hover" GridLines="None" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="chapter_name" HeaderText="chapter" SortExpression="course_name" />
                                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                    <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("viewnotes.aspx?filename={0}",Eval("filename")) %>'>View Notes</asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <hr />
                        </div>



                    </div>
                    <!-- map iframe-->
                    <div class="col-md-6  mt-lg-0 mt-4">
                        <div class="box-wrap">
                            <div class="icon">
                                <span class="fa fa-book"></span>
                            </div>

                            <!-- noteslist section -->
                            <h4 class="section-title">Physics</h4>
                            <asp:GridView ID="GridView4" CssClass="table table-hover" GridLines="None" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="chapter_name" HeaderText="chapter" SortExpression="course_name" />
                                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                    <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("viewnotes.aspx?filename={0}",Eval("filename")) %>'>View Notes</asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <hr />
                        </div>
                    </div>
                    <!-- //map iframe -->
                </div>
            </div>
        </div>
    </section>

</asp:Content>

