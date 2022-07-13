<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <meta name="description" content="">
    <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/extra.css">

    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Crimson+Text:wght@700&display=swap" rel="stylesheet">

    <style>
        body{
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        <h1>Welcome To OutfitStudio</h1>
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
         <jsp:include page='layouts/scripts2.jsp'></jsp:include>
            background-image: url("./imgContact/baju.png");
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="aboutus.html">About Us</a></li>
        </ul>
    </nav>

    <div class="row">
        <div class="col-sm-12 col-m-12 col-12 text-center">  
            <div class="contact">
              <p style="text-align:center; margin-top:120px;padding: 10px;">Contact Us</p>
            </div>
        </div>
    </div>

    <div class="row">   
        <div class="col-sm-12 col-m-12 col-12 text-center catalog-subtitle slider-wrapper about-us">
        <div class="card2" style="background-color: #688ea4;">
          <p style="color:white; margin-top: 20px; margin-bottom: -20px;"> For more information ragarding our product
            and product purchases, please visit our social media or contact us on our social media bellow:
          </p>
        </div>
    </div>
  </div>   

<div class="row">
    <div class="col-12 padding-top">
        <div class="row">
            <div class="col-sm-12 col-m-12 col-4 margin-m">
                <div class="card opacity" style="width: 40%;">
                      <div class="container">
                          <p class="creator-title">Instagram</p>
                          <a href="https://instagram.com/"  style="text-decoration:none;">
                            <img src="./imgContact/ig.png"  width="90" height="90"></a>
                      </div>
                </div>
            </div>

            <div class="col-sm-12 col-m-12 col-4 margin-m ">
                <div class="card opacity" style="width: 40%;">
                      <div class="container">
                          <p class="creator-title">Facebook</p>
                          <a href="https://facebook.com/"  style="text-decoration:none;">
                            <img src="./imgContact/fb.png"  width="90" height="90"></a>
                      </div>
                </div>
            </div>

            <div class="col-sm-12 col-m-12 col-4 margin-m">
                <div class="card opacity" style="width: 40%;">
                      <div class="container">
                          <p class="creator-title">WhatsApp</p>
                            <a href="https://web.whatsapp.com/" style="text-decoration: none;">
                            <img src="./imgContact/wa.png"  width="90" height="90"></a>
                      </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
