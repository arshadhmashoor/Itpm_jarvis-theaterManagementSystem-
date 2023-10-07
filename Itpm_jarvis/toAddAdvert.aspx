<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="toAddAdvert.aspx.cs" Inherits="Itpm_jarvis.toAddAdvert" %>
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
                        <label>advertise ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="advert ID"></asp:TextBox>
                              
                           </div>
                        </div>
                     </div>
                     <div class="col-md-7">
                        <label>advertisement name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="adverticement name"></asp:TextBox>
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
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="customer name"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Starter date</label>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox5"
                                runat="server" placeholder="date" TextMode="Date"></asp:TextBox>
                        </div>

                        <label>Expire date</label>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox3"
                                runat="server" placeholder="date" TextMode="Date"></asp:TextBox>
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
                               runat="server" placeholder="Province" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                      <%--
                     <div class="col-md-4">
                        <label>remianing shows</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10"
                               runat="server" placeholder="city" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>times showed</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11"
                               runat="server" placeholder="city_code" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>--%>
                  </div>
                   
                   <%--
                  <div class="row">
                        
                        <div class="col-md-6">
                            <label>Total fee</label>
                            <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4"
                               runat="server" placeholder="fee" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                   --%>
                    

                  <div class="row">
                     <div class="col-8 mx-auto">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success"
                            runat="server" Text="send adverticement details" OnClick="Button2_Click" />
                     </div>
                     
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
          <%--
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
                  
               </div>
            </div>
         </div>
          --%>
      </div>
   </div>

</asp:Content>
