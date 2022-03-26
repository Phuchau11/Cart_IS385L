<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Cart.Home" %>

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
                    <a href="/GioHang.aspx">
                        <button type="button" class="btn btn-primary">
                            <i class="fa-solid fa-cart-shopping fa-xl pr-2"></i>
                            Giỏ hàng</button>
                    </a>
                </div>
            </div>
        </nav>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="Images/Content/content.jpg" alt="First slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Images/Content/content1.jpg" alt="Second slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Images/Content/content2.jpg" alt="Third slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Images/Content/content3.jpg" alt="Third slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Images/Content/content4.jpg" alt="Third slide" />
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
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
                    <asp:DataList ID="DataList1" BorderRadius="15px" runat="server" BackColor="#023f88" BorderColor="#023f88" BorderWidth="2px" CellPadding="6" CellSpacing="6" DataSourceID="PRODUCTS" RepeatColumns="6" RepeatDirection="Horizontal" Width="1150px" OnItemCommand="SelectedIndex" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <div class="card-deck">
                                <div class="card zoom" style="height: 300px">
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
                                        PIN
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Pin") %>' />
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="PRODUCTS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TENSP], [ANHSP], [DONGIA], [MANHINH], [CPU], [VGA], [PIN] FROM [LapTopsDeals]"></asp:SqlDataSource>
                    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                </div>
                <div class=" justify-content-right text-left">
                    <div class="contents pt-5">
                        <div class="contents pt-0-5">
                            <img src="Images/Content/dessss-1200x90.png" style="width: 1336px; height: 100px" />
                        </div>
                        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" BorderRadius="15px" BackColor="#FFBF00" BorderColor="#FFBF00" BorderWidth="2px" CellPadding="6" CellSpacing="6" RepeatColumns="6" RepeatDirection="Horizontal" Width="1150px" OnItemCommand="SelectedIndex" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                            <ItemTemplate>
                                <div class="card-deck">
                                    <div class="card zoom" style="height: 300px">
                                        <div class="imgs pt-3">
                                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="redirect" Height="208px" Width="208px" ImageUrl='<%# Eval("HinhAnh") %>' />
                                        </div>
                                        <div class="card-body" style="font-size: 11px">
                                            Tensp:
                                            <asp:Label ID="TenspLabel" runat="server" Text='<%# Eval("Tensp") %>' />
                                            <br />
                                            DonGia:
                                            <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Tensp], [HinhAnh], [DonGia] FROM [DienThoai] WHERE DEALS = 'DEALS'"></asp:SqlDataSource>
                    </div>
                </div>
                <div class=" justify-content-right text-left">
                    <div class="contents pt-5">
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
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <div class="pt-5">
            <footer class="bg-dark text-center text-white pt-3">
                <!-- Grid container -->
                <div class="container p-4">
                    <!-- Section: Social media -->
                    <section class="mb-4 bg-dark p-4">
                        <!-- Facebook -->
                        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>

                        <!-- Twitter -->
                        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-twitter"></i></a>

                        <!-- Google -->
                        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-google"></i></a>

                        <!-- Instagram -->
                        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-instagram"></i></a>

                        <!-- Linkedin -->
                        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>

                        <!-- Github -->
                        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-github"></i></a>
                    </section>
                    <!-- Section: Social media -->

                    <!-- Section: Form -->
                    <section class="">
                        <form action="">
                            <!--Grid row-->
                            <div class="row d-flex justify-content-center">
                                <!--Grid column-->
                                <div class="col-auto">
                                    <p class="pt-2">
                                        <strong>Sign up for our newsletter</strong>
                                    </p>
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-5 col-12">
                                    <!-- Email input -->
                                    <div class="form-outline form-white mb-4">
                                        <input type="email" id="form5Example21" class="form-control" />
                                        <label class="form-label" for="form5Example21">Email address</label>
                                    </div>
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-auto">
                                    <!-- Submit button -->
                                    <button type="submit" class="btn btn-outline-light mb-4">
                                        Subscribe
                                    </button>
                                </div>
                                <!--Grid column-->
                            </div>
                            <!--Grid row-->
                        </form>
                    </section>
                    <!-- Section: Form -->

                    <!-- Section: Text -->
                    <section class="mb-4">
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
        eum harum corrupti dicta, aliquam sequi voluptate quas.
                        </p>
                    </section>
                    <!-- Section: Text -->

                    <!-- Section: Links -->
                    <section class="">
                        <!--Grid row-->
                        <div class="row">
                            <!--Grid column-->
                            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Links</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#!" class="text-white">Link 1</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 2</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 3</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 4</a>
                                    </li>
                                </ul>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Links</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#!" class="text-white">Link 1</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 2</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 3</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 4</a>
                                    </li>
                                </ul>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Links</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#!" class="text-white">Link 1</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 2</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 3</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 4</a>
                                    </li>
                                </ul>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Links</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#!" class="text-white">Link 1</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 2</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 3</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Link 4</a>
                                    </li>
                                </ul>
                            </div>
                            <!--Grid column-->
                        </div>
                        <!--Grid row-->
                    </section>
                    <!-- Section: Links -->
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    © 2020 Copyright:
    <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
                </div>
                <!-- Copyright -->
            </footer>
            <!-- Footer -->
        </div>
        </div>
        <script src="bootstrap/jquery-3.6.0.min.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
        <script src="https://kit.fontawesome.com/45128a02cf.js" crossorigin="anonymous"></script>
    </form>
</body>
</html>
