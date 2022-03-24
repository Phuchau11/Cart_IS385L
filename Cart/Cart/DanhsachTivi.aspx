<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhsachTivi.aspx.cs" Inherits="Cart.WebDienThoai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="CSS/Styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <a class="navbar-brand pl-3" href="/tongquan">
                <img src="Images/logo.png" /></a>
            <div class="collapse navbar-collapse pl-5" id="navbarSupportedContent">
                <!-- Propeller Dropdown -->
                <div class="dropdown pmd-dropdown ">
                    <button class="btn pmd-ripple-effect btn-primary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">Danh mục sản phẩm</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DanhsachTivi.aspx">TiVi</a>
                        <a class="dropdown-item" href="/DanhSachDienThoai.aspx">Điện thoạt</a>
                        <a class="dropdown-item" href="/DanhSachLaptops.aspx">lapTop</a>
                    </div>
                </div>
                <div class="form-inline my-2 my-lg-0 pl-3">
                    <asp:TextBox ID="txtSearch" class="form-control" placeholder="Thông tin tìm kiếm" aria-label="Search" runat="server" Width="500px"></asp:TextBox>
                    <asp:Button ID="btnSearch" class="btn btn-primary" runat="server" Text="Tìm kiếm" Height="38px" Width="120px" />
                </div>
                <div class="form-inline my-2 my-lg-0 pl-5">
                    <i class="fa-regular fa-circle-user fa-2xl"></i>
                    <asp:Label ID="user" Class="pl-3" runat="server"></asp:Label>
                </div>
                <div class="form-inline my-2 my-lg-0 pl-5">
                    <button type="button" class="btn btn-primary">
                        <i class="fa-solid fa-cart-shopping fa-xl pr-2"></i>
                        Giỏ Hàng</button>
                </div>
            </div>
        </nav>
        <div class="container-fluid" style="width: 95%; margin-top: 2%">
            <div class=" justify-content-right text-left">
                <div class="contents pt-3">
                    <div class="contents pt-0-5">
                        <img src="Images/Content/dmxd-1200x90.png" style="width: 1336px; height: 100px" />
                    </div>
                    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2" BorderRadius="15px" BackColor="#EB018A" BorderColor="#EB018A" BorderWidth="2px" CellPadding="6" CellSpacing="6" RepeatColumns="6" RepeatDirection="Horizontal" Width="1150px" OnItemCommand="SelectedIndex" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <div class="card-deck">
                                <div class="card zoom" style="height: 300px">
                                    <div class="imgs pt-3">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="redirect" Height="130px" Width="208px" ImageUrl='<%# Eval("HinhAnh") %>' />
                                    </div>
                                    <div class="card-body" style="font-size: 11px">
                                        Tensp:
                                        <asp:Label ID="TenspLabel" runat="server" Text='<%# Eval("Tensp") %>' />
                                        <br />
                                        Dongia:
                                        <asp:Label ID="DongiaLabel" runat="server" Text='<%# Eval("Dongia") %>' />
                                        <br />
                                        Kichthuoc:
                                        <asp:Label ID="KichthuocLabel" runat="server" Text='<%# Eval("Kichthuoc") %>' />
                                        <br />
                                    </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Tensp], [Dongia], [Kichthuoc], [HinhAnh] FROM [TiVi] WHERE DEALS = 'DEALS'"></asp:SqlDataSource>
                    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                </div>
            </div>
            <div class=" justify-content-right text-left">
                <div class="contents pt-3">
                    <div class="contents pt-0-5">
                        <h2 class="pt-3">TIVI NỔI BẬT NHẤT
                        </h2>
                    </div>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BorderRadius="15px" BackColor="#EB018A" BorderColor="#EB018A" BorderWidth="2px" CellPadding="6" CellSpacing="6" RepeatColumns="6" RepeatDirection="Horizontal" Width="1150px" OnItemCommand="SelectedIndex" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <div class="card-deck">
                                <div class="card zoom" style="height: 300px">
                                    <div class="imgs pt-3">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="redirect" Height="130px" Width="208px" ImageUrl='<%# Eval("HinhAnh") %>' />
                                    </div>
                                    <div class="card-body" style="font-size: 11px">
                                        Tensp:
                                        <asp:Label ID="TenspLabel" runat="server" Text='<%# Eval("Tensp") %>' />
                                        <br />
                                        Dongia:
                                        <asp:Label ID="DongiaLabel" runat="server" Text='<%# Eval("Dongia") %>' />
                                        <br />
                                        Kichthuoc:
                                        <asp:Label ID="KichthuocLabel" runat="server" Text='<%# Eval("Kichthuoc") %>' />
                                        <br />
                                    </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Tensp], [Dongia], [Kichthuoc], [HinhAnh] FROM [TiVi] WHERE NOIBAT = 'NOIBAT'"></asp:SqlDataSource>
                    <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/45128a02cf.js" crossorigin="anonymous"></script>
</body>
</html>

