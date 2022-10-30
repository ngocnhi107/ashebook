<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="ashe_icon/themifyicons.css">

    <title>Chi tiết sản phẩm</title>


    <script src="https://kit.fontawesome.com/58d7e4d8cc.js" crossorigin="anonymous"></script>
    <style>
    <?php include "ashe_css/home.css"?><?php include "ashe_icon/themifyicons.css"?>
    <?php include "ashe_css/detail_product.css"?>
    .footer{
        margin-top: 0px !important;
    }
    </style>
</head>



<body>

    <header class="header">
        <div class="header__logo">
            <a href="home.php">

                <img src="http://localhost:1129/ashebook/ashe_img/ashebooklogo2.png" alt="Logo" class="header__logo-img">
                <span class="header__logo-name">ASHEBOOK</span>
            </a>
        </div>
        <div class="header__menu">
            <a href="http://localhost:1129/ashebook/home.php" class="header__menu-home">
                <li>Trang chủ</li>
            </a>
            <a href="http://localhost:1129/ashebook/product(tieuthuyet).php" class="header__menu-product-tieuthuyet">
                <li>Tiểu thuyết</li>
            </a>
            <a href="http://localhost:1129/ashebook/product(ngontinh).php" class="header__menu-product-ngontinh">
                <li>Ngôn tình</li>
            </a>
            <a href="http://localhost:1129/ashebook/product(tanvan).php" class="header__menu-product-tanvan">
                <li>Tản văn</li>
            </a>
            <a href="http://localhost:1129/ashebook/product(tacphamkinhdien).php" class="header__menu-product-tacphamkinhdien">
                <li>Tác phẩm kinh điển</li>
            </a>
            <a href="http://localhost:1129/ashebook/contact.php" class="header__menu-contact">
                <li>Liên hệ</li>
            </a>




        </div>
        <div class="header__others">

            <?php
                include "config.php";
                if(isset($_POST["search"])){
                    $str= $_POST["search"];
                }

            ?>
            <form action="search.php?product_name=search" method="post">
                <input type="text" name="search" class="search_input" placeholder="Tìm kiếm">
                <a href="" class="icon"> <i class="fa-solid fa-magnifying-glass"></i></a>


                <a href="http://localhost:1129/ashebook/sign_in.php"> <i class="fa-solid fa-user"></i></a>
                <a href="http://localhost:1129/ashebook/cart.php"> <i class="fa-solid fa-cart-shopping"></i></a>
            </form>




        </div>

    </header>




    <?php
    require_once "config.php";
    $result = mysqli_query($conn, "select * from product where productid = " . $_GET['productid']);
    $product = mysqli_fetch_assoc($result);
    $product_thumbnail = mysqli_query($conn, "select * from galery where product_id = " . $_GET['productid']);
    $galery = mysqli_fetch_all($product_thumbnail, MYSQLI_ASSOC);
    
    ?>
    <!--        product             -->
    <section class="product">
        <div class="container">
            <div class="product-content row">
                <div class="product-content-left row">
                    <div class="product-content-left-big-img">
                        <img src="<?= $product['thumbnail'] ?>" alt="">
                    </div>
                    <?php
                    if (!empty($galery)) {

                    ?>
                    <div class="product-content-left-small-img">
                        <?php
                            foreach ($galery as $img) {
                                
                                
                                ?>
                        <img src="<?=$img['thumbnail_sub']?>" alt="">
                        <?php    } ?>
                        
                        
                    </div>
                    <?php    } ?>
                    
                </div>
                <div class="product-content-right">
                    <div class="product-content-right-product-name">
                        <h1><?= $product['product_name'] ?></h1>
                        
                    </div>
                    <div class="product-content-right-product-price">
                        <p><?= number_format($product['price'], 0, ",", ".") ?> <sup>đ</sup></p>
                    </div>
                    
                    <div class="quantity">
                        <p style="font-weight: bold;">Số lượng:</p>
                        <input type="text" min="0" value="1"><br />
                    </div>
                    
                    <div class="product-content-right-product-button">
                        <a href="pay_check.php">
                            
                            <button>
                                <i class="fa-solid fa-cart-shopping" style="line-height: 40px; left:16px;"></i>
                                <p>MUA HÀNG</p>
                            </button>
                        </a>
                       

                        <a href="cart.php">
                             <button class="cart-btn">
                            
                           
                                <i class="fa-solid fa-cart-shopping" style="line-height: 40px;"></i> 
                               <span>THÊM VÀO GIỎ HÀNG</span> 
                               </button>
                       
                            </a>
                     
                       
                    </div>
                </div>
            </div>
        </div>
    </section>




    <!--           footer                -->
    <div class="main-footer">


        <div class="footer">
            <div class="footer-shoplogo">
                <a href="home.php">


                    <img src="http://localhost:1129/ashebook/ash_img/ashebooklogo2.png" alt="Logo" class="footer-logo">
                    <span class="footer-shopname">ASHEBOOK</span>
                </a>
            </div>
            <div class="footer__contact">
                <div class="footer__contact-name">Thông tin liên hệ</div>
                <div class="footer-contact-name-border"></div>

                <div class="footer__contact-address">
                    <i class="ti-location-pin"></i>
                    <span class="footer__contact-address-address">56 Hoàng Diệu 2, Linh Chiểu, Thủ Đức, TPHCM</span>
                </div>
                <div class="footer__contact-phone">
                    <i class="ti-mobile"></i>
                    <span class="footer__contact-phone-number">0978624197</span>
                </div>
                <div class="footer__contact-mail">
                    <i class="ti-email"></i>
                    <span class="footer__contact-mail-email">Ashebook@gmail.com</span>
                </div>
            </div>

            <div class="footer-description">
                <p class="footer-description-about">Về ASHE</p>
                <div class="footer-description-about-border"></div>
                Ashe-book có hàng hóa đa dạng với các loại truyện tiểu thuyết...
            <p>sẵn sàng phục vụ quý khách nhanh chóng thông qua việc bán tại cửa hàng và đặt hàng online trên website.</p>
            </div>
            <div class="footer__social">
                <p class="footer__social-name">Social media</p>
                <div class="footer-social-name-border"></div>

                <a href="" class="footer__social-facebook">
                    <i class="ti-facebook" style="font-size: 24px;"></i>
                </a>
                <a href="" class="footer__social-instagram">
                    <i class="ti-instagram" style="font-size: 24px;"></i>
                </a>
                <a href="" class="footer__social-twitter">
                    <i class="ti-twitter" style="font-size: 24px;"></i>
                </a>
            </div>
        </div>


        <div class="footer__border"></div>
        <div class="footer-license">
            @Bản quyền thuộc về ASHE team
        </div>
    </div>

    </div>

</body>

</html>