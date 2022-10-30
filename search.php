<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/58d7e4d8cc.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="ashe icon/themifyicons.css">
    <link rel="stylesheet" href="ashe css/home.css">
    <link rel="stylesheet" href="ashe css/category.css">
    <title>ASHEBOOK</title>
    <style>
        .new__product-list-search{
            height: 500px;
        }
        .tittle_search{
            text-align: center;
            padding: 46px 0 10px 0;
            font-size: 45px;
            font-family: emoji;
            
        }
        .tittle_border{
            border-bottom: 2px solid #333;
            width: 100px;
            margin: auto;
            margin-bottom: 30px;
        }
        .tittle_result{
            padding: 0 0 12px 56px;
            font-size: 18px;
            font-family:'Times New Roman', Times, serif;
        }
        .tittle_result span{
            font-size: 20px;

            color: red;
        }
        .color{
            background-color: #e2dcde;
        }
        .footer{
            margin-top: 0px !important;
        }
        .loader{
            height: 36px;
            width: 50px;
            border-radius: 50%;
            display: flex;
           margin: auto;
        }
        .circle{
            background-color: #2d6974;
            width: 10px;
            height: 10px;
            margin: 0px 4px;
           
            animation: animate 2s infinite linear;

        }
        .circle:nth-child(1){
            animation-delay: 0.5s;
        }
        .circle:nth-child(2){
            animation-delay: 1s;
        }
        .circle:nth-child(3){
            animation-delay: 5.5s;
        }
        @keyframes animate{
            0%,
            100%{
                opacity:0 ;
            }
            50%{
                opacity: 1;
            }
        }
    </style>
</head>

<body>
    <div id="main">

        <header class="header">
            <div class="header__logo">
                <a href="home.php">

                    <img src="./ashe img/ashebooklogo2.png" alt="Logo" class="header__logo-img">
                    <span class="header__logo-name">COC</span>
                </a>
            </div>
            <div class="header__menu">
                <a href="home.php" class="header__menu-home">
                    <li>Trang chủ</li>
                <a href="product(tieuthuyet).php" class="header__menu-product-tieuthuyet">
                    <li>Tiểu thuyết</li>
                </a>
                <a href="product(ngontinh).php" class="header__menu-product-ngontinh">
                    <li>Ngôn tình</li>
                </a>
                <a href="product(tanvan).php" class="header__menu-product-tanvan">
                    <li>Tản văn</li>
                </a>
                <a href="product(tacphamkinhdien).php" class="header__menu-product-tacphamkinhdien">
                    <li>Tác phẩm kinh điển</li>
                </a>
                <a href="contact.php" class="header__menu-contact">
                    <li>Liên hệ</li>
                </a>

                <?php 
                $sql = "select * from movie";
            
            if(isset($_GET["cat"]))
            {
                $a = $_GET["cat"];
                echo $a;
                $sql = "select * from movie where category LIKE '%$a%'";
            }
            else
               
            ?>

            </div>
            <div class="header__others">
           
                <form action="search.php?product_name=search" method="POST">
                <input type="text" name="search" class="search_input" placeholder="Tìm kiếm">
                <a href="" class="icon"> <i class="fa-solid fa-magnifying-glass"></i></a>
                <a href="sign_in.php"> <i class="fa-solid fa-user"></i></a>
                <a href="cart.php"> <i class="fa-solid fa-cart-shopping"></i></a>
            </form>




            </div>

        </header>

            <div class="color">

<?php
          
          require_once "config.php";
           if(isset($_POST["search"])){
               $str= $_POST["search"];
           }
               $query = mysqli_query($conn,"SELECT * FROM product WHERE  product_name LIKE '%$str%'");
               $count  =mysqli_num_rows($query);
              
           

      
?>


<p class="tittle_search">
<i class="fa-solid fa-arrow-right"></i>
    Tìm Kiếm
<i class="fa-solid fa-arrow-left"></i>
</p>
<p class="tittle_border"></p>
<div class="loader">
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>
</div>
<p class="tittle_result">
<i class="fa-solid fa-check"></i>
    <?php  
    echo "Kết quả tìm kiếm cho ";
    ?>
    <span>

        <?php
    
    echo  " ' ". $str. " ' ";
    ?>
    </span>
    </p>
         <div class="new__product-list-search">

<?php
      $d = 0;
       while ($row = mysqli_fetch_assoc($query)) {
                    ?>
                        <div class="product_thumbnail">

                                <a href="./detail_product.php/?productid=<?= $row['productid']?>">
                                

                                    <img src=' <?php echo $row["thumbnail"]; ?>' class="product_thumbnail-img" /><br />
                                
                                    <!-- <img src=' upload/<?php echo $row["thumbnail"]; ?>' class="product_thumbnail-img" /><br /> -->
                                    
                                    
                                    <p class="product_thumbnail-product-name"><?php echo $row["product_name"]; ?></p>
                                    <p class="product-price">
                                        
                                        <?php echo "Mua kèm deal sốc: " . $row["price"]; ?>
                                        <i class="fa-solid fa-truck-fast" style="margin-left:8px ;"></i>
                                    </p>
                                    
                                </a>
                           



                        </div>

                        
                    <?php 
                    $d++;
                        if ($d == 5) { ?>
                            <div style='clear:both; ' ></div>
                    <?php
                            $d = 0;
                        }
                    
                    }
                   
                    ?>
          
         </div>

         </div>
           
         <div class="main-footer">


<div class="footer">
    <div class="footer-shoplogo">
        <a href="home.php">


            <img src="./ashe img/ashebooklogo2.png" alt="" class="footer-logo">
            <span class="footer-shopname">ASHE</span>
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
            <span class="footer__contact-mail-email">Ashebook@gmail.comv</span>
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

        <a href="https://www.facebook.com/profile.php?id=100009393213605" class="footer__social-facebook">
            <i class="ti-facebook" style="font-size: 24px;"></i>
        </a>
        <a href="hthttps://www.instagram.com/yuer.nh/" class="footer__social-instagram">
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