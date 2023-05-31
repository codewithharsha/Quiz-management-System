<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lbrcequiz.in</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="ind_style.css">
</head>

<body>
    <%
    String name=(String)session.getAttribute("username"); 
    if(name != null)
    {%>
        <jsp:forward page="index2.jsp"/>
        <%
    }%>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top p-2">
        <div class="container">
            <a class="navbar-brand" href="#">lbrcequiz.in</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="login.html">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="login.html">Host A Quiz</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="login.html">Join A Quiz</a>
                    </li>
                </ul>
                <div class="form-inline my-2 my-lg-0">
                    <button class="btn btn-success my-2 my-sm-0 mr-1"><a href="login.html" style="text-decoration: None; color: white;">Log In</a></button>
                    <button class="btn btn-success my-2 my-sm-0"><a href="signin.html" style="text-decoration: None; color: white;">Sign In</a></button>
                </divs>
            </div>
        </div>
    </nav>
    <!-- carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://i.ibb.co/qJjNr67/lbrcequiz-in-1.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://i.ibb.co/48J725c/lbrcequiz-in.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://i.ibb.co/GnSFX5Q/lbrcequiz-in-2.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- our features -->
    <div class="ourfet">
        <div class="container w-100">
            <div class="wch-banner pt-5 pb-5">
                <div class="container">
                    <div class="row">
                        <div class="col-12 p-3">
                            <h1 class="wch-banner-title">Our Features</h1>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3">
                                <img src="https://p.kindpng.com/picc/s/20-204238_internet-icon-internet-access-web-browser-icono-de.png"
                                    height="150px" width="150px" />
                                <h1>Fully Online</h1>
                                <p>Experience fine dining at the comfort of your home. All our orders
                                    are carefully
                                    packed
                                    and arranged to give
                                    you the nothing less than perfect.</p>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://static.vecteezy.com/system/resources/thumbnails/000/534/837/small/gdpr_line_solid-13.jpg"
                                    height="150px" width="150px" />
                                <h1>Collabrative</h1>
                                <p>The Fresh Food group provides fresh-cut fruits and vegetables
                                    directly picked from
                                    our
                                    partner farms and farm houses so that you always get them tree to plate.</p>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://static.vecteezy.com/system/resources/previews/002/552/511/original/delivery-cargo-service-logistic-stopwatch-time-fast-line-style-icon-free-vector.jpg"
                                    height="150px" width="150px" />
                                <h1>Fast</h1>
                                <p>The Fresh Food group provides fresh-cut fruits and vegetables
                                    directly picked from
                                    our
                                    partner farms and farm houses so that you always get them tree to plate.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3">
                                <img src="https://cdn-icons-png.flaticon.com/512/2020/2020773.png" height="150px"
                                    width="150px" />
                                <h1>Chat Support</h1>
                                <p>Experience fine dining at the comfort of your home. All our orders
                                    are carefully
                                    packed
                                    and arranged to give
                                    you the nothing less than perfect.</p>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://img.freepik.com/free-icon/shield_318-865989.jpg" height="150px"
                                    width="150px" />
                                <h1>Secure</h1>
                                <p>The Fresh Food group provides fresh-cut fruits and vegetables
                                    directly picked from
                                    our
                                    partner farms and farm houses so that you always get them tree to plate.</p>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://cdn-icons-png.flaticon.com/512/5622/5622465.png" height="150px"
                                    width="150px" />
                                <h1>Easy to Use</h1>
                                <p>The Fresh Food group provides fresh-cut fruits and vegetables
                                    directly picked from
                                    our
                                    partner farms and farm houses so that you always get them tree to plate.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- our clients -->
    <div class="container">
        <h1>Join our loyal clients</h1>
        <div class="d-flex flex-row">
            <div class="row col-6">
                <div class="contact p-5 d-flex flex-column justify-content-center">
                    <form>
                        <Input type="text" placeholder="Enter your mail" class="ipfield"><br><br>
                        <input type="submit" value="submit" class="btn btn-success ipbtn">
                    </form>

                </div>
            </div>
            <div class="row col-6 d-flex flex-column">
                <div class="contact  d-flex flex-row">
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://lbrce.ac.in/images/LBRCE-Logo-Png.png" height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://media.licdn.com/dms/image/C560BAQFwfHrZeegGeg/company-logo_200_200/0/1594803105055?e=2147483647&v=beta&t=DBsrgOyUl8LNfkNcqrVzHFPgX2ZcsfOASwwyhJ5f3GA"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://universitykart.b-cdn.net//Content/upload/admin/fklc04gm.dz4.jpg"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6DwDkpnSE2OYmmy8VH8ry2jjS65oxqO_vhl4PMIM4qiseiJrglWf0mBROIcNGHXbCZkc&usqp=CAU"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>

                </div>
                <div class="contact  d-flex flex-row">
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgLZdTfENXw1P2gXoJ0JN-SSDMK8u4B2HlXk4Csm90AXD9u_6t_tV9HRt3WAQMT67E3gs&usqp=CAU"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/Indian_Institute_of_Technology_Bombay_Logo.svg/640px-Indian_Institute_of_Technology_Bombay_Logo.svg.png"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://upload.wikimedia.org/wikipedia/en/thumb/6/69/IIT_Madras_Logo.svg/1200px-IIT_Madras_Logo.svg.png"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://upload.wikimedia.org/wikipedia/en/thumb/f/fd/Indian_Institute_of_Technology_Delhi_Logo.svg/1200px-Indian_Institute_of_Technology_Delhi_Logo.svg.png"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>

                </div>
                <div class="contact  d-flex flex-row">
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://www.lawctopus.com/wp-content/uploads/2018/02/NPTEL-Patent-Drafting-Course-Beginners.png"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://img.freepik.com/free-psd/google-icon-isolated-3d-render-illustration_47987-9777.jpg?w=2000"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://static.vecteezy.com/system/resources/previews/019/017/460/original/microsoft-transparent-logo-free-png.png"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="text-center p-3 wch-card ">
                                <img src="https://img.etimg.com/thumb/msid-59738992,width-640,resizemode-4,imgsize-25499/amazon.jpg"
                                    height="100px" width="100px" />
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
    <div class="d-flex flex-row justify-content-around pt-5 bg-secondary">
        <div class="d-flex flex-column justify-content-start">
            <h4>Contac Us</h4>
            <p>lbrcequiz.in office,<br>Mylavaram<br>NTR District<br>Vijayawada<br>Andhra Pradesh<br>India.</p>
        </div>
        <div class="d-flex flex-column justify-content-start">
            <h4>Quick Links</h4>
            <a>Home</a>
            <a>Sign In</a>
            <a>Login</a>
        </div>
        <div class="d-flex flex-column justify-content-start">
            <h4>Quick Links</h4>
            <a>Facebook</a>
            <a>Instagram</a>
            <a>Twitter</a>
            <a>LinkedIn</a>
        </div>

    </div>
    <div class="d-flex flex-row justify-content-center bg-secondary">
        <h4>Created by <img src="https://www.freepnglogos.com/uploads/copyright/copyright-symbol-intellectual-vector-graphic-pixabay-34.png" height="25px" width="25px"/> <a href="https://www.linkedin.com/in/harsha-vardhan-reddy-munnangi-378879230" style="text-decoration: none;">M.Harsha Vardhan Reddy</a></h4>
    </div>

</body>

</html>