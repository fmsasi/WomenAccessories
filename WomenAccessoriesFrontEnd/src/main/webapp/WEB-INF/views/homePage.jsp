<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
<link href="<c:url value='/resources/css/registration.css'></c:url>" rel="stylesheet">
</head>
<body>
<div class="container">

<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\1.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>WELCOME TO THE WOMEN COLLECTIONS</h1>
                            <p>Here You Can Browse And Buy Your Wish. Order Now For Your Amazing New Arrivals</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\2.jpg" alt="Second slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>All CASUAL & STYLISH VARIETIES.</h1>
                            <p>online shopping can make your life more easier</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\aa.jpg" alt="Third slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>BRACELETS & CHAINS</h1>
                            <p>Live Stylish and Happily!!</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="img-responsive" src="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\4.jpg" alt="forth slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>VARIETIES OF EARING</h1>
                            <p>Choice is yours!!</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
</div>
<br><br>

	
                  <!--   <img class="img-responsive" src="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\aa.jpg" alt="slide1"> -->
    <div class="container">
    <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\e.jpg" class="img-circle" alt="slide1" style="width:100%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\bb.jpg" class="img-circle" alt="Nature" style="width:100%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\v.jpg" class="img-circle" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
             
<%@ include file="footer.jsp" %>
</body>

</html>
