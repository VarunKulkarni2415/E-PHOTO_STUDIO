<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Home.css" />
        <link rel="stylesheet" href="StyleSheet2.css" />

</head>
<body>
     <form id="form1" runat="server">
        <div>
            <div id="box">
                <ul>
                    <li><a href="#home"><i class="fa fa-home"></i>Home</a></li>
                    <li><a href="#about"><i class="fa fa-book">about</i></a></li>
                    <li><a href="#portfolio"><i class="fa fa-cog">portfolio</i></a></li>
                    <li><a href="#services"><i class="fa fa-folder">services</i></a></li>
                    <li><a href="#contact"><i class="fa fa-envelope">contact</i></a></li>
                </ul>

                <div id="home" >

                    <section class="content">
                        <h1>DIGITAL ADVENTURES
                        </h1>
                        <div class="button">
                             <a href="SignUp.aspx" class="btn">Register</a>
                            <a href="Login2.aspx" class="btn">Login</a>  
                        </div>
                    </section>
                </div>

                <div id="about">
                    <section class="content">
                        <h1 style="text-align: left">Hi I'm Uday!</br>
I'm A Professional 
Photographer
                        </h1>

                    </section>
                </div>

                <div id="portfolio">
                    <section class="content">

                        <h1>PORTFOLIO</h1>

                        <div class="button">
                            <a href="Portfolio.aspx" class="btn">View</a>

                        </div>
                    </section>
                </div>


                <div id="services">
                    <section class="Packages" id="Packages">
                        <h1 class="heading">
                            <span>P</span>
                            <span>A</span>
                            <span>C</span>
                            <span>K</span>
                            <span>A</span>
                            <span>G</span>
                            <span>E</span>
                            <span>S</span>

                        </h1>
                        <div class="box-container">
                            <div class="box">
                                <img src="img/6.jpg" alt="">
                                <div class="content1">
                                    <h3><i class="fas fa-map-marker-alt"></i>BRONZE </h3>
                                    </br>
               <h4>
                   <p>
                   Traditional Photography.</br>
                   Traditional 4K Videography.</br>
                   Edited Wedding Video.</br>
                   20 Pages Wedding Photobook Album.</h4>
                                    </p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                                    </br>
                </br>
              <h3>
                  <div class="price">Rs 32,000/- </div>
              </h3>

                                </div>
                            </div>

                            <div class="box">
                                <img src="img/4.jpg" alt="">
                                <div class="content1">
                                    <h3><i class="fas fa-map-marker-alt"></i>SILVER </h3>
                                    </br>
              <h4>
                  <p>
                      Traditional Photography.</br>
                    Traditional 4K Videography.</br>
                    Candid Photography.</br>
                    Edited Wedding Video With Separate Wedding Highlights Videos.</br>
                    25 pages Wedding Photobook Album With Box & Bag.

                  </p>
              </h4>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    </br>
             <h3>
                 <div class="price">Rs 45,000/- </div>
             </h3>

                                </div>
                            </div>

                            <div class="box">
                                <img src="img/3.jpg" alt="">
                                <div class="content1">
                                    <h3><i class="fas fa-map-marker-alt"></i>GOLD </h3>
                                    </br>
              <h4>
                  <p>
                      Traditional Photography.</br>
                    Traditional 4K Videography.</br>
                    Candid Photography.</br>
                    Cinematic Wedding Film Of 6-8 mins.</br>
                    Edited Wedding Video With Separate Wedding Highlights Videos.</br>
                    25 pages Wedding Photobook Album With Box & Bag.
                  </p>
              </h4>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    </br>
              <h3>
                  <div class="price">Rs 65,000/-  </div>
              </h3>

                                </div>
                            </div>
                        </div>
                        <section class="content">
                            <div class="button">
                                </br></br></br></br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br>
         </br> </br> </br> </br> </br> </br> </br> </br>  </br>  </br>  </br>  </br>  </br>
     <a href="SignUp.aspx" class="btn" style="">Book Now</a>
                            </div>
                        </section>

                    </section>
                </div>

       <div id="contact">
                    <section class="content">
                        <h1>Contact Us 
        </br></br></br>
          <a href="https://www.instagram.com/digital_adventures_photography/?igshid=YmMyMTA2M2Y=">
              <img src="img/instas.jpg"></a>
                            <a href="https://www.facebook.com/uday.valasange">
                                <img src="img/facebook1.jpg"></a>

                            </br>
        DIGITALADVENTURE@GMAIL.COM
</br>
+91 8007414005
</br>
                          Shop No.4, TakliKar Mangal Karyalay, Vijapur Road, Jule Sola[
                        </h1>
                    </section>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
