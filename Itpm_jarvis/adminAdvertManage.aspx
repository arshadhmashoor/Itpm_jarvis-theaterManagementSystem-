<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAdvertManage.aspx.cs" Inherits="Itpm_jarvis.adminAdvertManage" %>
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
                           <h4>Advertisement Details</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/boods.jpeg" />
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                         <asp:FileUpload Class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>

                  <div class="row">
                      <div class="col-md-5">
                        <label>advertisemet ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="advert ID"></asp:TextBox>
                               <asp:Button class="form-control btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click1" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-7">
                        <label>advertisement name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Customer name"></asp:TextBox>
                        </div>
                     </div>
                      
                     
                  </div>

                  <div class="row">
                      <div class="col-md-4">
                        <label>Language</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                <asp:ListItem Text="English" Value="English" />
                                <asp:ListItem Text="Sinhala" Value="Sinhala" />
                                <asp:ListItem Text="Tamil" Value="Tamil" />                                
                            </asp:DropDownList>
                        </div>

                        <label>Customer name</label>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox6" class="form-control"
                                runat="server" placeholder="customer"></asp:TextBox>
                            <%--
                            <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                <asp:ListItem Text="custmer1" Value="custmer1" />
                                <asp:ListItem Text="custmer2" Value="custmer2" />
                            </asp:DropDownList>
                        --%>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Starter date</label>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox5"
                                runat="server"  placeholder="date" ReadOnly="True"></asp:TextBox>
                        </div>

                        <label>Expire date</label>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox3"
                                runat="server" placeholder="date" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>show time</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                <asp:ListItem Text="morning" Value="morning" />
                                <asp:ListItem Text="evening" Value="evening" />               
                            </asp:DropDownList>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                    <div class="col-md-4">
                        <label>times to show</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9"
                               runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                      
                     <div class="col-md-4">
                        <label>remianing shows</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10"
                               runat="server" placeholder="" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>cost per advert</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11"
                               runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   
                   
                  <div class="row">
                        
                        <div class="col-md-6">
                            <label>Total fee</label>
                            <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4"
                               runat="server" placeholder="fee" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                   
                   <div class="row">
                       <div class="col">
                        <hr>
                     </div>
                   </div>
                    

                  <div class="row">
                     <div class="col-6 mx-auto">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger"
                            runat="server" Text="update adverticement details" OnClick="Button2_Click" />
                     </div>
                     
                     <div class="col-6 mx-auto">
                         <asp:Button ID="Button3" class="btn btn-lg btn-block btn-success"
                             runat="server" Text="delete adverticement details" OnClick="Button3_Click" />
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
                           <h4>adverticement List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JarvisConnectionString2 %>" SelectCommand="SELECT * FROM [advert_table]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="advert_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="advert_id" HeaderText="advert_id" ReadOnly="True" SortExpression="advert_id" />
                                <asp:BoundField DataField="advert_name" HeaderText="advert_name" SortExpression="advert_name" />
                                <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
                                <asp:BoundField DataField="starter_date" HeaderText="starter_date" SortExpression="starter_date" />
                                <asp:BoundField DataField="expire_date" HeaderText="expire_date" SortExpression="expire_date" />
                                <asp:BoundField DataField="show_time" HeaderText="show_time" SortExpression="show_time" />
                                <asp:BoundField DataField="times_toshow" HeaderText="times_toshow" SortExpression="times_toshow" />
                                <asp:BoundField DataField="remain_shows" HeaderText="remain_shows" SortExpression="remain_shows" />
                                <asp:BoundField DataField="times_showed" HeaderText="times_showed" SortExpression="times_showed" />
                                <asp:BoundField DataField="total_fee" HeaderText="total_fee" SortExpression="total_fee" />
                                <asp:BoundField DataField="posterimg_link" HeaderText="posterimg_link" SortExpression="posterimg_link" />
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
