<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Sellers.aspx.cs" Inherits="OnlinePharmacyManagement.Views.Admin.Sellers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row mt-5">
              <div class="col-md-4">
                        <div class="row mb-3">
                          <div class="col">
                            <input type="text" class="form-control" placeholder="Seller Name" runat="server" id="SNameTb">
                          </div>
                          <div class="col">
                            <input type="text" class="form-control" placeholder="Seller Email" runat="server" id="SEmailTb">
                          </div>
                        </div>
                        <div class="row mb-3">
                          <div class="col">
                              <label class="form-label"></label>
                            <input type="text" class="form-control" placeholder="Seller Password" runat="server" id="PasswordTb">
                          </div>
                          <div class="col">
                            <label class="form-label">Seller DOB</label>
                            <input type="date" class="form-control" runat="server" id="SDOBTb">
                          </div>
                        </div>
                        <div class="row mb-3">
                          <div class="col">
                              <asp:DropDownList ID="GenCb" runat="server" CssClass="form-control" placeholder="Gender" >
                                  <asp:ListItem Value="">Select Your Gender</asp:ListItem>
                                  <asp:ListItem>Male</asp:ListItem>
                                  <asp:ListItem>Female</asp:ListItem>
                              </asp:DropDownList>
                          </div> 
                           <div class="col">
                                <input type="text" class="form-control"  placeholder="Seller Address" id="SAddressTb" runat="server"/>
                            </div>
                        </div>
                        <div class="row">
                            <label id="ErrMsg" class ="text-danger" runat="server"></label>
                          <div class="col d-grid">
                              <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-success btn-block" OnClick="EditBtn_Click" />
                          </div> 
                          <div class="col d-grid">
                              <asp:Button ID="SaveBtn" runat="server" Text="Save" class="btn btn-primary btn-block" OnClick="SaveBtn_Click" />
                          </div> 
                          <div class="col d-grid">
                              <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                          </div> 
                        </div>
                    </div>
                <div class="col-md-8">
                        <h2>Seller List</h2>
                        <asp:GridView ID="SellerList" class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerList_SelectedIndexChanged"></asp:GridView>
                 </div>
            </div>
        </div>
</asp:Content>
