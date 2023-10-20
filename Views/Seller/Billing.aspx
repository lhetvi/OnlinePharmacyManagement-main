<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="OnlinePharmacyManagement.Views.Seller.Billing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <h4 class="text-success">Online Pharmacy Billing</h4>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="row mb-3">
                    <div class="col">
                        <label class="h6 text-success">Medicine Code</label>
                        <input type="text" class="form-control" placeholder="Medicine code" runat="server" id="MedNameTb" autocomplete="off">
                    </div>
                    <div class="col">
                        <label class="h6 text-success">Medicine Price</label>
                        <input type="text" class="form-control" placeholder="Medicine Price" runat="server" id="MedPriceTb" autocomplete="off">
                    </div>

                </div>
                <div class="row mb-3">
                    <div class="col">
                        <label class="h6 text-success">Medicine Quantity</label>
                        <input type="text" class="form-control" placeholder="Medicine Quantity" runat="server" id="MedQty" autocomplete="off">
                    </div>
                    <div class="col">
                        <label class="h6 text-success">Billing Date</label>
                        <input type="date" class="form-control" runat="server" id="BillingDate">
                    </div>

                </div>
                <div class="row">
                    <label class="text-danger text-center" id="ErrMsg" runat="server"></label>
                    <div class="col d-grid">
                        <asp:Button ID="AddToBillBtn" runat="server" Text="Add To Bill" class="btn btn-success btn-block btn-block" OnClick="AddToBillBtn_Click" />
                    </div> 
                    <div class="col d-grid">
                        <asp:Button ID="ResetBtn" runat="server" Text="Reset" class="btn btn-danger btn-block btn-block" OnClick="ResetBtn_Click"  />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>Categories List</h2>
                        <asp:GridView ID="MedicinesList" class="table table-success" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MedicinesList_SelectedIndexChanged" ></asp:GridView>
                    </div>
                </div>

            </div>
            <div class="col-md-8">
                <h2 class="text-center text-success">Client's Bill</h2>
                <asp:GridView ID="BillGV" class="table table-success" runat="server"></asp:GridView>
                <div class="row">
                    <div class="col-6"></div>
                    <div class="col-6">
                        <label class="h6 text-danger text-center" id="GrdTotTb" runat="server"></label>

                    </div>

                </div>
                <div class="row">
                    <div class="col d-grid">
                        <asp:Button ID="PrintBtn" runat="server" Text="Print" class="btn btn-success btn-block btn-block" OnClick="PrintBtn_Click" />
                    </div>
                    <div class="col d-grid">
                        <asp:Button ID="ClearBtn" runat="server" Text="Clear" class="btn btn-warning btn-block btn-block" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
