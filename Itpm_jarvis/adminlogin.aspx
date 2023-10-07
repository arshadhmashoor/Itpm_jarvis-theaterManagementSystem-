<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Itpm_jarvis.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/adminuser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
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
                                <label>Admin ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Customer ID"></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                </div>
                                <hr />
                                <div class="form-group">
                                    <center>
                                    <asp:Button  class="btn btn-success btn-block btn-lg" runat="server"
                                       ID="Button1" Text="Login" OnClick="Button1_Click" />
                                    </center>
                                </div>
                                
                                <div class="form-group">
                                    <center>
                                    <a href="userSignUp.aspx"><input class="btn btn-info btn-block btn-lg" type="button" 
                                       id="Button2"  value="Sign Up" />
                                    </a>
                                    </center>
                                </div>
                                  
                                
                            </div>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a><br />
            </div>
        </div>
    </div>

</asp:Content>
