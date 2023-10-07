<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="toadvertise.aspx.cs" Inherits="Itpm_jarvis.toadvertise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">

                <div class="card">
                    <div class="card-body">
        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Advertisement Details</h4>
                                 </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr /> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:FileUpload Class="form-control" ID="FileUpload1"
                                    runat="server" />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-3">
                               <label>adv_id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="adver id"></asp:TextBox>
                                    <asp:LinkButton class="btn btn-primary" ID="LinkButton4"
                                        runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                </div>
                            </div>

                            <div class="col-md-9">
                               <label>Advertisement name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="adver name"></asp:TextBox>
                                </div>
                            </div>
                            
                        </div>

                        <div class="row">

                            <div class="col-md-4">
                               <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Tamil" Value="Tamil" />
                                        <asp:ListItem Text="Sinhala" Value="Sinhala" />
                                        <asp:ListItem Text="chinese" Value="chinese" />
                                    </asp:DropDownList>
                                </div>
                                <label>Customer ID</label>
                                <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        runat="server" placeholder="fullname"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                               <label>Startr Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                        runat="server" placeholder="date" TextMode="Date"></asp:TextBox>
                                </div>

                                <label>Exprie date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                        runat="server" placeholder="date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                               <label>Show Time</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Morning_show" Value="Morning_show" />
                                        <asp:ListItem Text="Evening_show" Value="Evening_show" />
                                        <asp:ListItem Text="Night_show" Value="Night_show" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                        </div>

                     
                        <div class="row">

                            <div class="col-md-4">
                               <label>noOftimes to show</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                        runat="server" placeholder="times to show" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <!-- remain times to show and times showed-->
                            <!-- 
                            <div class="col-md-4">
                               <label>Remain-times to show</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" 
                                        runat="server" placeholder="n times" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                               <label>times-showed</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" 
                                        runat="server" placeholder="n times" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            -->

                        </div>

                        
                      
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                                        
                        <div class="row">
                            <center>
                            <div class="col-4">
                                <center>
                                <asp:Button ID="Button1" Class="btn btn-block btn-success"
                                    runat="server" Text="Add" OnClick="Button1_Click" />
                                </center>
                            </div> 
                            </center>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a><br />
            </div>

        </div>
     </div>

</asp:Content>
