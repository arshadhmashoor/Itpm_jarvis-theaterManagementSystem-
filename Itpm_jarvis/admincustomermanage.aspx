<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admincustomermanage.aspx.cs" Inherits="Itpm_jarvis.admincustomermanage" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Customer Details</h4>
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
                        <hr>
                     </div>
                  </div>

                  <div class="row">
                      <div class="col-md-3">
                        <label>Customer ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Customer ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4"
                                   runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Customer name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Customer name"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-5">
                        <label>Account status</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox7"
                                  runat="server" placeholder="status" ReadOnly="True"></asp:TextBox>

                               <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1"
                                   runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                               <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2"
                                   runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                               <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3"
                                   runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                              
                           </div>
                        </div>
                     </div>
                     
                  </div>

                  <div class="row">
                      <div class="col-md-3">
                        <label>DOB</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="dob" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="email" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                    <div class="col-md-4">
                        <label>Province</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Province" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="city" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>city_code</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="city_code" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   
                  <div class="row">
                        
                        <div class="col-md-12">
                            <label>Postal Address</label>
                            <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"
                                placeholder="address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    

                  <div class="row">
                     <div class="col-8 mx-auto">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger"
                            runat="server" Text="Delete Permenently" OnClick="Button2_Click" />
                     </div>
                     
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>

         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Customers List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JarvisConnectionString2 %>" SelectCommand="SELECT * FROM [customer_table]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customer_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="customer_id" HeaderText="Id" ReadOnly="True" SortExpression="customer_id" />
                                <asp:BoundField DataField="customer_name" HeaderText="Name" SortExpression="customer_name" />
                                <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="province" HeaderText="province" SortExpression="province" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
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
