<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlinePharmacyManagement.Views.Admin.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        * {
            font-family: Poppins;
        }
        body{
            background-color:rgba(173, 216, 230, 0.7);
        }
        .btn{
            background-color: #202A44;
            color:aliceblue;
        }
        .link{
            color:#202A44;
        }
        .img{
            justify-items:center;
            margin-left:150px;
        }
    </style>
</head>
<body class="">
    <div class="container-fluid">
        <div class="mb-3"></div>
        <div class="row mt-5 mb-3">
            <div class="col-md-4"></div>
            <div class="col-md-4 bg-white">
                <h5 class="text-center">Pharmacy Management System</h5>
                <div class="justify-content-center">
                    <img class="img" src="../../Assets/Images/home.png" height="90px" />
                </div>
                <form runat="server">
                    <div class="mb-3">
                        <label for="txtEmail" class="form-label">Email address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                        <div class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="txtPassword" class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                    </div>
                    <div class="d-grid mb-3">
                        <asp:Label ID="ErrMsg" runat="server" CssClass="text-danger" />
                        <a  class="link" href="../Seller/Login.aspx" class="text-success">Seller</a>
                        <asp:Button ID="LoginBtn" runat="server" Text="Login" CssClass="btn btn-block" OnClick="LoginBtn_Click" />
                    </div>

                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</body>
</html>
