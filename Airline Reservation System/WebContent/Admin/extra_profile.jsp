<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="images/favicon_1.ico">

        <title>Ubold - Responsive Admin Dashboard Template</title>

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/core.css" rel="stylesheet" type="text/css" />
        <link href="css/components.css" rel="stylesheet" type="text/css" />
        <link href="css/icons.css" rel="stylesheet" type="text/css" />
        <link href="css/pages.css" rel="stylesheet" type="text/css" />
        <link href="css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="js/modernizr.min.js"></script>
<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-69506598-1', 'auto');
          ga('send', 'pageview');
        </script>

        
    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <jsp:include page="Header.jsp"></jsp:include>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->

            <jsp:include page="Sidebar.jsp"></jsp:include>
            <!-- Left Sidebar End --> 



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->                      
            <div class="content-page">
                <!-- Start content -->
                <div class="content">

                    <div class="wraper container">

                        <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="btn-group pull-right m-t-15">
                                <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Settings <span class="m-l-5"><i class="fa fa-cog"></i></span></button>
                                <ul class="dropdown-menu drop-menu-right" role="menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </div>

                            <h4 class="page-title">Profile</h4>
                            <ol class="breadcrumb">
                                <li><a href="#">Ubold</a></li>
                                <li><a href="#">Extras</a></li>
                                <li class="active">Profile</li>
                            </ol>
                        </div>
                    </div>

                        <div class="row">
                            <div class="col-md-4 col-lg-3">
                                <div class="profile-detail card-box">
                                    <div>
                                        <img src="images/avatar-2.jpg" class="img-circle" alt="profile-image">

                                        <ul class="list-inline status-list m-t-20">
                                            <li>
                                                <h3 class="text-primary m-b-5">456</h3>
                                                <p class="text-muted">Followings</p>
                                            </li>

                                            <li>
                                                <h3 class="text-success m-b-5">5864</h3>
                                                <p class="text-muted">Followers</p>
                                            </li>
                                        </ul>

                                        <button type="button" class="btn btn-pink btn-custom btn-rounded waves-effect waves-light">Follow</button>

                                        <hr>
                                        <h4 class="text-uppercase font-600">About Me</h4>
                                        <p class="text-muted font-13 m-b-30">
                                            Hi I'm Johnathn Deo,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.
                                        </p>

                                        <div class="text-left">
                                            <p class="text-muted font-13"><strong>Full Name :</strong> <span class="m-l-15">Johnathan Deo</span></p>

                                            <p class="text-muted font-13"><strong>Mobile :</strong><span class="m-l-15">(123) 123 1234</span></p>

                                            <p class="text-muted font-13"><strong>Email :</strong> <span class="m-l-15">coderthemes@gmail.com</span></p>

                                            <p class="text-muted font-13"><strong>Location :</strong> <span class="m-l-15">USA</span></p>

                                        </div>


                                        <div class="button-list m-t-20">
                                            <button type="button" class="btn btn-facebook waves-effect waves-light">
                                               <i class="fa fa-facebook"></i>
                                            </button>

                                            <button type="button" class="btn btn-twitter waves-effect waves-light">
                                               <i class="fa fa-twitter"></i>
                                            </button>

                                            <button type="button" class="btn btn-linkedin waves-effect waves-light">
                                               <i class="fa fa-linkedin"></i>
                                            </button>

                                            <button type="button" class="btn btn-dribbble waves-effect waves-light">
                                               <i class="fa fa-dribbble"></i>
                                            </button>

                                        </div>
                                    </div>

                                </div>

                                <div class="card-box">
                                    <h4 class="m-t-0 m-b-20 header-title"><b>Friends <span class="text-muted">(154)</span></b></h4>

                                    <div class="friend-list">
                                        <a href="#">
                                            <img src="images/avatar-1.jpg" class="img-circle thumb-md" alt="friend">
                                        </a>

                                        <a href="#">
                                            <img src="images/avatar-2.jpg" class="img-circle thumb-md" alt="friend">
                                        </a>

                                        <a href="#">
                                            <img src="images/avatar-3.jpg" class="img-circle thumb-md" alt="friend">
                                        </a>

                                        <a href="#">
                                            <img src="images/avatar-4.jpg" class="img-circle thumb-md" alt="friend">
                                        </a>

                                        <a href="#">
                                            <img src="images/avatar-5.jpg" class="img-circle thumb-md" alt="friend">
                                        </a>

                                        <a href="#">
                                            <img src="images/avatar-6.jpg" class="img-circle thumb-md" alt="friend">
                                        </a>

                                        <a href="#">
                                            <img src="images/avatar-7.jpg" class="img-circle thumb-md" alt="friend">
                                        </a>

                                        <a href="#" class="text-center">
                                            <span class="extra-number">+89</span>
                                        </a>
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-9 col-md-8">
                                <form method="post" class="well">
                                    <span class="input-icon icon-right">
                                        <textarea rows="2" class="form-control"
                                                  placeholder="Post a new message"></textarea>
                                    </span>
                                    <div class="p-t-10 pull-right">
                                        <a class="btn btn-sm btn-primary waves-effect waves-light">Send</a>
                                    </div>
                                    <ul class="nav nav-pills profile-pills m-t-10">
                                        <li>
                                            <a href="#"><i class="fa fa-user"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-location-arrow"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class=" fa fa-camera"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-smile-o"></i></a>
                                        </li>
                                    </ul>

                                </form>
                                <div class="card-box">
                                    <div class="comment">
                                        <img src="images/avatar-1.jpg" alt="" class="comment-avatar">
                                        <div class="comment-body">
                                            <div class="comment-text">
                                                <div class="comment-header">
                                                    <a href="#" title="">Adam Jansen</a><span>about 2 minuts ago</span>
                                                </div>
                                                Story based around the idea of time lapse, animation to post soon!

                                                <div class="m-t-15">
                                                    <a href="">
                                                        <img src="images/img1.jpg" class="thumb-md">
                                                    </a>
                                                    <a href="">
                                                        <img src="images/img2.jpg" class="thumb-md">
                                                    </a>
                                                    <a href="">
                                                        <img src="images/img3.jpg" class="thumb-md">
                                                    </a>
                                                </div>
                                            </div>

                                            <div class="comment-footer">
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                                <a href="#"><i class="fa fa-thumbs-o-down"></i></a>
                                                <a href="#">Reply</a>
                                            </div>
                                        </div>

                                        <div class="comment">
                                            <img src="images/avatar-2.jpg" alt="" class="comment-avatar">
                                            <div class="comment-body">
                                                <div class="comment-text">
                                                    <div class="comment-header">
                                                        <a href="#" title="">John Smith</a><span>about 1 hour ago</span>
                                                    </div>
                                                    Wow impressive!
                                                </div>
                                                <div class="comment-footer">
                                                    <a href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                                    <a href="#"><i class="fa fa-thumbs-o-down"></i></a>
                                                    <a href="#">Reply</a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="comment">
                                            <img src="images/avatar-3.jpg" alt=""
                                                 class="comment-avatar">
                                            <div class="comment-body">
                                                <div class="comment-text">
                                                    <div class="comment-header">
                                                        <a href="#" title="">Matt
                                                            Cheuvront</a><span>about 2 hours ago</span>
                                                    </div>
                                                    Wow, that is really nice.
                                                </div>
                                                <div class="comment-footer">
                                                    <a href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                                    <a href="#"><i class="fa fa-thumbs-o-down"></i></a>
                                                    <a href="#">Reply</a>
                                                </div>
                                            </div>

                                            <div class="comment">
                                                <img src="images/avatar-4.jpg" alt=""
                                                     class="comment-avatar">
                                                <div class="comment-body">
                                                    <div class="comment-text">
                                                        <div class="comment-header">
                                                            <a href="#" title="">Stephanie
                                                                Walter</a><span>3 hours ago</span>
                                                        </div>
                                                        Nice work, makes me think of The Money Pit.
                                                    </div>
                                                    <div class="comment-footer">
                                                        <a href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                                        <a href="#"><i class="fa fa-thumbs-o-down"></i></a>
                                                        <a href="#">Reply</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="comment">
                                        <img src="images/avatar-1.jpg" alt="" class="comment-avatar">
                                        <div class="comment-body">
                                            <div class="comment-text">
                                                <div class="comment-header">
                                                    <a href="#" title="">Kim Ryder</a><span>about 4 hours ago</span>
                                                </div>
                                                i'm in the middle of a timelapse animation myself! (Very different
                                                though.) Awesome stuff.
                                            </div>
                                            <div class="comment-footer">
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                                <a href="#"><i class="fa fa-thumbs-o-down"></i></a>
                                                <a href="#">Reply</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="comment">
                                        <img src="images/avatar-7.jpg" alt="" class="comment-avatar">
                                        <div class="comment-body">
                                            <div class="comment-text">
                                                <div class="comment-header">
                                                    <a href="#" title="">Nicolai Larson</a><span>10 hours ago</span>
                                                </div>
                                                the parallax is a little odd but O.o that house build is awesome!!
                                            </div>
                                            <div class="comment-footer">
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                                <a href="#"><i class="fa fa-thumbs-o-down"></i></a>
                                                <a href="#">Reply</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="comment">
                                        <img src="images/avatar-1.jpg" alt="" class="comment-avatar">
                                        <div class="comment-body">
                                            <div class="comment-text">
                                                <div class="comment-header">
                                                    <a href="#" title="">Adam Jansen</a><span>about 2 minuts ago</span>
                                                </div>
                                                Story based around the idea of time lapse, animation to post soon!

                                                <div class="m-t-15">
                                                    <a href="">
                                                        <img src="images/img1.jpg" class="thumb-md">
                                                    </a>
                                                    <a href="">
                                                        <img src="images/img2.jpg" class="thumb-md">
                                                    </a>
                                                    <a href="">
                                                        <img src="images/img3.jpg" class="thumb-md">
                                                    </a>
                                                </div>
                                            </div>

                                            <div class="comment-footer">
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                                <a href="#"><i class="fa fa-thumbs-o-down"></i></a>
                                                <a href="#">Reply</a>
                                            </div>
                                        </div>

                                        <div class="comment">
                                            <img src="images/avatar-2.jpg" alt="" class="comment-avatar">
                                            <div class="comment-body">
                                                <div class="comment-text">
                                                    <div class="comment-header">
                                                        <a href="#" title="">John Smith</a><span>about 1 hour ago</span>
                                                    </div>
                                                    Wow impressive!
                                                </div>
                                                <div class="comment-footer">
                                                    <a href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                                    <a href="#"><i class="fa fa-thumbs-o-down"></i></a>
                                                    <a href="#">Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="m-t-30 text-center">
                                        <a href="" class="btn btn-default waves-effect waves-light btn-sm">Load More...</a>
                                    </div>
                                </div>
                            </div>

                        </div>



                    </div> <!-- container -->
                               
                </div> <!-- content -->

                <jsp:include page="Footer.jsp"></jsp:include>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <div class="side-bar right-bar nicescroll">
                <h4 class="text-center">Chat</h4>
                <div class="contact-list nicescroll">
                    <ul class="list-group contacts-list">
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-1.jpg" alt="">
                                </div>
                                <span class="name">Chadengle</span>
                                <i class="fa fa-circle online"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-2.jpg" alt="">
                                </div>
                                <span class="name">Tomaslau</span>
                                <i class="fa fa-circle online"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-3.jpg" alt="">
                                </div>
                                <span class="name">Stillnotdavid</span>
                                <i class="fa fa-circle online"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-4.jpg" alt="">
                                </div>
                                <span class="name">Kurafire</span>
                                <i class="fa fa-circle online"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-5.jpg" alt="">
                                </div>
                                <span class="name">Shahedk</span>
                                <i class="fa fa-circle away"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-6.jpg" alt="">
                                </div>
                                <span class="name">Adhamdannaway</span>
                                <i class="fa fa-circle away"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-7.jpg" alt="">
                                </div>
                                <span class="name">Ok</span>
                                <i class="fa fa-circle away"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-8.jpg" alt="">
                                </div>
                                <span class="name">Arashasghari</span>
                                <i class="fa fa-circle offline"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-9.jpg" alt="">
                                </div>
                                <span class="name">Joshaustin</span>
                                <i class="fa fa-circle offline"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar-10.jpg" alt="">
                                </div>
                                <span class="name">Sortino</span>
                                <i class="fa fa-circle offline"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- /Right-bar -->


        </div>
        <!-- END wrapper -->

        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/detect.js"></script>
        <script src="js/fastclick.js"></script>
        <script src="js/jquery.slimscroll.js"></script>
        <script src="js/jquery.blockUI.js"></script>
        <script src="js/waves.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>


        <script src="js/jquery.core.js"></script>
        <script src="js/jquery.app.js"></script>
	
	</body>
</html>