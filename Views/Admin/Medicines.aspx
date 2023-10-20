<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Medicines.aspx.cs" Inherits="OnlinePharmacyManagement.Views.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row mt-5">
              <div class="col-md-4">
                        <div class="row mb-3">
                             <div class="col">
                            <input type="text" class="form-control" placeholder="Medicine Code" runat="server" id="MedCodeTb" autocomplete="off">
                          </div> 
                          <div class="col">
                            <input type="text" class="form-control" placeholder="Medicine Name" runat="server" id="MedNameTb" autocomplete="off">
                          </div> 
                          
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                            <input type="text" class="form-control" placeholder="Medicine Price"  runat="server" id="PriceTb" autocomplete="off">
                          </div>
                          <div class="col">
                            <input type="text" class="form-control" placeholder="Medicine Stock"  runat="server" id="QtyTb" autocomplete="off">
                          </div>
                          
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                            <input type="date" class="form-control" placeholder="Expiry Date"  runat="server" id="ExpDate">
                          </div>
                          <div class="col">
                              <asp:DropDownList ID="CatCb" runat="server" CssClass="form-control" placeholder="Medicine Category" >
                                  <asp:ListItem Value="">Medicine Category</asp:ListItem>
                              </asp:DropDownList>
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
                        <h2>Medicines List</h2>
                        <asp:GridView ID="MedicineList" class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MedicineList_SelectedIndexChanged"></asp:GridView>
                 </div>
            </div>
        </div>
</asp:Content>
