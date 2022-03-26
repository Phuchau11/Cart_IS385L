﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSachLapTops.aspx.cs" Inherits="Cart.DanhSachLapTops" %>

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

            <!-- <div class="col-md-2 justify-content-right text-left">
                    <div class="menulist" style="border: 50px">
                        <div class="nav flex-column nav-pills zoom" id="v-pills-tab" role="tablist" aria-orientation="vertical" style="background-color: darkblue; border-radius: 5px; position: relative;">
                            <div class="text-center" style="background-color: red; height: 40px; border-radius: 5px;"><b>Danh mục sản phẩm </b></div>
                            <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Danh Mục</a>
                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Laptop</a>
                            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Tivi</a>
                            <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Điện thoại</a>
                        </div>
                    </div>
                </div> -->
            <div class=" justify-content-right text-left ">
                <div class="contents pt-2">
                    <div class="contents pt-0-5">
                        <img src="Images/Content/Taglinedealsoc-1920x144-1.png" style="width: 1336px; height: 100px" />
                    </div>
                    <asp:DataList ID="DataList1" BorderRadius="15px" runat="server" BackColor="#023f88" BorderColor="#023f88" BorderWidth="2px" CellPadding="6" CellSpacing="6" DataSourceID="PRODUCTS" RepeatColumns="6" RepeatDirection="Horizontal" Width="1150px" OnItemCommand="SelectedIndex1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <div class="card-deck">
                                <div class="card zoom" style="height: 350px">
                                    <div class="imgs pt-3">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="redirect" Height="139px" Width="208px" ImageUrl='<%# Eval("ANHSP") %>' />
                                    </div>
                                    <div class="card-body" style="font-size: 11px">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENSP") %>' />
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DONGIA") %>' />
                                        <br />
                                        M.HÌNH
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("MANHINH") %>' />
                                        <br />
                                        CHIP
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CPU") %>' />
                                        <br />
                                        CARD 
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("VGA") %>' />
                                        <br />

                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="PRODUCTS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TENSP], [ANHSP], [DONGIA], [MANHINH], [CPU], [VGA] FROM [LapTops] WHERE DEALS = 'DEALS'"></asp:SqlDataSource>
                    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                </div>
                <div class=" justify-content-right text-left">
                    <div class="contents pt-3">
                        <div class="contents pt-0-5">
                            <h2 class="pt-3">LAPTOP NỔI BẬT NHẤT</h2>
                        </div>
                        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" DataKeyField="Masp" BorderRadius="15px" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="6" CellSpacing="6" RepeatColumns="6" RepeatDirection="Horizontal" Width="1150px" OnItemCommand="SelectedIndex2" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                            <ItemTemplate>
                                <div class="card-deck">
                                    <div class="card zoom" style="height: 300px">
                                        <div class="imgs pt-3">
                                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="redirect" Height="139px" Width="208px" ImageUrl='<%# Eval("ANHSP") %>' />
                                        </div>
                                        <div class="card-body" style="font-size: 11px">
                                            <asp:Label ID="TenspLabel" runat="server" Text='<%# Eval("TENSP") %>' />
                                            <br />
                                            Giá:
                                            <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DONGIA") %>' />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MASP], [TENSP], [ANHSP], [DONGIA] FROM [Laptops] WHERE NOIBAT='NOIBAT'"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="contents pt-3">
                    <div class="contents pt-0-5">
                        <h2 class="pt-3">LAPTOP NỔI BẬT NHẤT</h2>
                    </div>
                    <asp:DataList ID="DataList3" runat="server" DataKeyField="MASP" DataSourceID="SqlDataSource4" BorderRadius="15px" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="6" CellSpacing="6" RepeatColumns="6" RepeatDirection="Horizontal" Width="1150px">
                        <ItemTemplate>
                            <div class="card-deck">
                                <div class="card zoom" style="height: 350px">
                                    <div class="imgs pt-3">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="redirect" Height="139px" Width="208px" ImageUrl='<%# Eval("ANHSP") %>' />
                                    </div>
                                    <div class="card-body" style="font-size: 11px">
                                        <asp:Label ID="TENSPLabel" runat="server" Text='<%# Eval("TENSP") %>' />
                                        <br />
                                        Giá:
                                        <asp:Label ID="DONGIALabel" runat="server" Text='<%# Eval("DONGIA") %>' />
                                        <br />
                                        CPU: 
                                        <asp:Label ID="CPULabel" runat="server" Text='<%# Eval("CPU") %>' />
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MASP], [TENSP], [ANHSP], [DONGIA], [MANHINH], [CPU], [RAM], [OCUNG], [VGA] FROM [LapTops]"></asp:SqlDataSource>

                </div>
            </div>
    </form>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/45128a02cf.js" crossorigin="anonymous"></script>
</body>
</html>
