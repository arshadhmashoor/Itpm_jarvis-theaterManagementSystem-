<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="customerprofile.aspx.cs" Inherits="Itpm_jarvis.customerprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status  </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>full name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="fullname"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                               <label>Date of birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="password" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                        runat="server" placeholder="contact" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                               <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                        runat="server" placeholder="email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-4">
                               <label>Province</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-group" ID="DropDownList1" runat="server">

                                        <asp:ListItem Text="WesternProv" Value="select" />
                                        <asp:ListItem Text="SouthernProv" Value="select" />
                                        <asp:ListItem Text="EasternProv" Value="select" />
                                        <asp:ListItem Text="NorthernProv" Value="select" />
                                        <asp:ListItem Text="N'WesternProv" Value="select" />
                                        <asp:ListItem Text="CentralProv" Value="select" />
                                        <asp:ListItem Text="UvaProvince" Value="select" />
                                        <asp:ListItem Text="Sabr'Prov" Value="select" />
                                        <asp:ListItem Text="N'CentralProv" Value="select" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                               <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" 
                                        runat="server" placeholder="city"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                               <label>city code</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" 
                                        runat="server" placeholder="citycode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                               <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" 
                                        runat="server" placeholder="address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge badge-pill badge-info">Login Credentials</span>  
                                </center>
                               </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label>CustomerID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" 
                                        runat="server" placeholder="customerId" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                               <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" 
                                        runat="server" placeholder="password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                               <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" 
                                        runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                <div class="form-group">
                                    <center>
                                    <asp:Button  class="btn btn-primary btn-lg" runat="server"
                                       ID="Button1" Text="Update" />
                                    </center>
                                </div>
                                </center>
                         
                            </div>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a><br />
            </div>


            <div class="col-md-7">
            <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books1.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Advertisement List</h4>
                                    
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2"
                                        runat="server" Text="Your status"></asp:Label>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"
                                    runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
        </div>

        </div>
    </div>

</asp:Content>
