<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminadvertisemanage.aspx.cs" Inherits="Itpm_jarvis.adminadvertisemanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
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
                                <asp:FileUpload class="form-control" ID="FileUpload1"
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
                                        runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
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
                                    <asp:TextBox class="form-control" ID="TextBox6" 
                                        placeholder="language" runat="server"></asp:TextBox>
                                </div>

                                <label>Customer name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        placeholder="customr name" runat="server"></asp:TextBox>
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
                               <label>Show Time(mor/eveni)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" 
                                        placeholder="showTime" runat="server"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                     
                        <div class="row">

                            <div class="col-md-4">
                               <label>times to show</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                        runat="server" placeholder="times to show" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

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
                                        runat="server" placeholder="n times" ReadOnly="False" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                      
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                                        
                        <div class="row">
                            <div class="col-4">
                                <center>
                                <asp:Button ID="Button1" Class="btn btn-block btn-success"
                                    runat="server" Text="Add" OnClick="Button1_Click" />
                                </center>
                            </div>
                            <div class="col-4">
                                <center>
                                <asp:Button ID="Button2" Class="btn btn-block btn-warning"
                                    runat="server" Text="Update" OnClick="Button2_Click" />
                                </center>
                            </div>
                            <div class="col-4">
                                <center>
                                <asp:Button ID="Button4" Class="btn btn-block btn-danger"
                                    runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                    <h4>Advertisement List</h4>                           
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JarvisConnectionString2 %>" SelectCommand="SELECT * FROM [advertisement_table]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" 
                                    runat="server" AutoGenerateColumns="False" DataKeyNames="advert_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="advert_id" HeaderText="advert_id" ReadOnly="True" SortExpression="advert_id" />
                                        <asp:BoundField DataField="advert_name" HeaderText="advert_name" SortExpression="advert_name" />
                                        <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                        <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
                                        <asp:BoundField DataField="starter_date" HeaderText="starter_date" SortExpression="starter_date" />
                                        <asp:BoundField DataField="expire_date" HeaderText="expire_date" SortExpression="expire_date" />
                                        <asp:BoundField DataField="show_time" HeaderText="show_time" SortExpression="show_time" />
                                        <asp:BoundField DataField="times_toshow" HeaderText="times_toshow" SortExpression="times_toshow" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
   
                             
                      </div>
                </div>
               </div>
        </div>
     </div>


</asp:Content>
