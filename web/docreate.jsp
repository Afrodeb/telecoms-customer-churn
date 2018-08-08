<%@page import="java.util.HashMap"%>
<%@page import="moira.Model"%>
<%
    String name="John Doe";
    String email="";
    String phone="";
    HashMap<String,String> results=new HashMap<String,String>();
    try {
        int vmail = Integer.parseInt(request.getParameter("vmail"));
        int tdmin = Integer.parseInt(request.getParameter("tdmin"));
        int acclen = Integer.parseInt(request.getParameter("acclen"));
        int arcode = Integer.parseInt(request.getParameter("arcode"));
        String phnum = request.getParameter("phnum");;
        String intplan = request.getParameter("intplan");;
        String voice = request.getParameter("voice");;
        int nummailmes = Integer.parseInt(request.getParameter("nummailmes"));
        int tdcal = Integer.parseInt(request.getParameter("tdcal"));
        int tdchar = Integer.parseInt(request.getParameter("tdchar"));
        int temin = Integer.parseInt(request.getParameter("temin"));
        int tecal = Integer.parseInt(request.getParameter("tecal"));
        int tecahr = Integer.parseInt(request.getParameter("tecahr"));
        int tnmin = Integer.parseInt(request.getParameter("tnmin"));
        int tncal = Integer.parseInt(request.getParameter("tncal"));
        int tnchar = Integer.parseInt(request.getParameter("tnchar"));
        int timin = Integer.parseInt(request.getParameter("timin"));
        int tical = Integer.parseInt(request.getParameter("tical"));
        int tichar = Integer.parseInt(request.getParameter("tichar"));
        int label = Integer.parseInt(request.getParameter("label"));
         name = request.getParameter("name");
         email = request.getParameter("email");
         phone = request.getParameter("phone");
        Model model = new Model();
//create arff file first and then return values
        model.createArffFileJava(vmail, tdmin, acclen, arcode, phnum, intplan, voice, nummailmes, tdcal, tdchar, temin, tecal, tecahr, tnmin, tncal, tnchar, timin, tical, tichar, label);
        results = model.test();
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Customer Churn Analysis</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //custom-theme -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome-icons -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    </head>
    <body>
        <!-- banner -->
        <div class="wthree_agile_admin_info">
            <!-- /w3_agileits_top_nav-->
            <!-- /nav-->
            <div class="w3_agileits_top_nav">
                <ul id="gn-menu" class="gn-menu-main">
                    <!-- /nav_agile_w3l -->
                    <li class="gn-trigger">
                        <a class="gn-icon gn-icon-menu"><i class="fa fa-bars" aria-hidden="true"></i><span>Menu</span></a>
                        
                    </li>
                    <!-- //nav_agile_w3l -->
                    <!-- //nav_agile_w3l -->
                    <li class="second logo"><h1><a href="main-page.html"><i class="fa fa-graduation-cap" aria-hidden="true"></i>C.C.A </a></h1></li>
                    <li class="second admin-pic">
                        <ul class="top_dp_agile">
                            <li class="dropdown profile_details_drop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <div class="profile_img">	
                                        <span class="prfil-img"><img src="images/admin.jpg" alt=""> </span> 
                                    </div>	
                                </a>
                                <ul class="dropdown-menu drp-mnu">
                                    <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
                                    <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
                                    <li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="second top_bell_nav">
                        <ul class="top_dp_agile ">
                            <li class="dropdown head-dpdn">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-bell-o" aria-hidden="true"></i> <span class="badge blue">4</span></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="notification_header">
                                            <h3>Your Notifications</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                            <div class="user_img"><img src="images/a3.jpg" alt=""></div>
                                            <div class="notification_desc">
                                                <h6>John Smith</h6>
                                                <p>Lorem ipsum dolor</p>
                                                <p><span>1 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li class="odd"><a href="#">
                                            <div class="user_img"><img src="images/a1.jpg" alt=""></div>
                                            <div class="notification_desc">
                                                <h6>Jasmin Leo</h6>
                                                <p>Lorem ipsum dolor</p>
                                                <p><span>3 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li><a href="#">
                                            <div class="user_img"><img src="images/a2.jpg" alt=""></div>
                                            <div class="notification_desc">
                                                <h6>James Smith</h6>
                                                <p>Lorem ipsum dolor</p>
                                                <p><span>2 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li><a href="#">
                                            <div class="user_img"><img src="images/a4.jpg" alt=""></div>
                                            <div class="notification_desc">
                                                <h6>James Smith</h6>
                                                <p>Lorem ipsum dolor</p>
                                                <p><span>1 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">See all Notifications</a>
                                        </div> 
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="second top_bell_nav">
                        <ul class="top_dp_agile ">
                            <li class="dropdown head-dpdn">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span class="badge blue">3</span></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="notification_header">
                                            <h3>Your Messages</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                            <div class="user_img"><img src="images/a3.jpg" alt=""></div>
                                            <div class="notification_desc">
                                                <h6>John Smith</h6>
                                                <p>Lorem ipsum dolor</p>
                                                <p><span>3 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li class="odd"><a href="#">
                                            <div class="user_img"><img src="images/a1.jpg" alt=""></div>
                                            <div class="notification_desc">
                                                <h6>Jasmin Leo</h6>
                                                <p>Lorem ipsum dolor</p>
                                                <p><span>2 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li><a href="#">
                                            <div class="user_img"><img src="images/a2.jpg" alt=""></div>
                                            <div class="notification_desc">
                                                <h6>James Smith</h6>
                                                <p>Lorem ipsum dolor</p>
                                                <p><span>1 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">See all Messages</a>
                                        </div> 
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="second top_bell_nav">
                        <ul class="top_dp_agile ">
                            <li class="dropdown head-dpdn">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue">9</span></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="notification_header">
                                            <h3>You have 4 Pending tasks</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                            <div class="task-info">
                                                <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                                <div class="clearfix"></div>	
                                            </div>
                                            <div class="progress progress-striped active">
                                                <div class="bar yellow" style="width:40%;"></div>
                                            </div>
                                        </a></li>
                                    <li><a href="#">
                                            <div class="task-info">
                                                <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                                <div class="clearfix"></div>	
                                            </div>
                                            <div class="progress progress-striped active">
                                                <div class="bar green" style="width:90%;"></div>
                                            </div>
                                        </a></li>
                                    <li><a href="#">
                                            <div class="task-info">
                                                <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                                <div class="clearfix"></div>	
                                            </div>
                                            <div class="progress progress-striped active">
                                                <div class="bar red" style="width: 33%;"></div>
                                            </div>
                                        </a></li>
                                    <li><a href="#">
                                            <div class="task-info">
                                                <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                                <div class="clearfix"></div>	
                                            </div>
                                            <div class="progress progress-striped active">
                                                <div class="bar  blue" style="width: 80%;"></div>
                                            </div>
                                        </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">See all pending tasks</a>
                                        </div> 
                                    </li>
                                </ul>
                            </li>	
                        </ul>
                    </li>

                    <li class="second w3l_search">

                        <form action="#" method="post">
                            <input type="search" name="search" placeholder="Search here..." required="">
                            <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>

                    </li>
                    <li class="second full-screen">
                        <section class="full-top">
                            <button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
                        </section>
                    </li>

                </ul>
                <!-- //nav -->

            </div>
            <div class="clearfix"></div>
            <!-- //w3_agileits_top_nav-->

            <!-- /inner_content-->
            <div class="inner_content">
                <!-- /inner_content_w3_agile_info-->

                <!-- breadcrumbs -->
                <div class="w3l_agileits_breadcrumbs">
                    <div class="w3l_agileits_breadcrumbs_inner">
                    </div>
                </div>
                <!-- //breadcrumbs -->

                <div class="inner_content_w3_agile_info two_in">
                    <h2 class="w3_inner_tittle">Customer Profile for 
                        <% 
                        out.println(name); 
                        %></h2>

                    <div class="asked agile_info_shadow">
                        <div class="questions">
                            <h5>Current Phone Number</h5>
                            <p><% out.println(phone); %></p>
                        </div>
                        <div class="questions">
                            <h5>Current Email Address</h5>
                            <p><% out.println(email); %></p>
                        </div>	

                        <div class="questions">
                            <h5>Predictions</h5>
                            <p>
                                <%
        if (results != null) {
            for (String key : results.keySet()) {                
                String lstatus="% likely to churcn.";
                String nlstatus="% not likely to churn.";
                double percentage=Double.parseDouble(results.get(key));
                if(key.contains("False.")){
                out.println(Math.round((percentage*100)) + nlstatus+"<br>");
                }else{
                out.println(Math.round((percentage*100)) + lstatus+"<br>");
                }
            }
        }
                                
                                %>
                            </p>
                        </div>	


                    </div>
                   
                </div>
                <!-- //inner_content_w3_agile_info-->
            </div>
            <!-- //inner_content-->
        </div>
        <!-- banner -->
        <!--copy rights start here-->
        <div class="copyrights">
            <p>© 2017 Moira. All Rights Reserved</p>
        </div>	
        <!--copy rights end here-->
        <!-- js -->

        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/modernizr.custom.js"></script>

        <script src="js/classie.js"></script>
        <script src="js/gnmenu.js"></script>
        <script>
new gnMenu(document.getElementById('gn-menu'));
        </script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>        
        <script type="text/javascript">
google.maps.event.addDomListener(window, 'load', init);
function init() {
    var mapOptions = {
        zoom: 11,
        center: new google.maps.LatLng(40.6700, -73.9400),
        styles: [{"featureType": "all", "elementType": "labels.text.fill", "stylers": [{"saturation": 36}, {"color": "#000000"}, {"lightness": 40}]}, {"featureType": "all", "elementType": "labels.text.stroke", "stylers": [{"visibility": "on"}, {"color": "#000000"}, {"lightness": 16}]}, {"featureType": "all", "elementType": "labels.icon", "stylers": [{"visibility": "off"}]}, {"featureType": "administrative", "elementType": "geometry.fill", "stylers": [{"color": "#000000"}, {"lightness": 20}]}, {"featureType": "administrative", "elementType": "geometry.stroke", "stylers": [{"color": "#000000"}, {"lightness": 17}, {"weight": 1.2}]}, {"featureType": "landscape", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 20}]}, {"featureType": "poi", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 21}]}, {"featureType": "road.highway", "elementType": "geometry.fill", "stylers": [{"color": "#000000"}, {"lightness": 17}]}, {"featureType": "road.highway", "elementType": "geometry.stroke", "stylers": [{"color": "#000000"}, {"lightness": 29}, {"weight": 0.2}]}, {"featureType": "road.arterial", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 18}]}, {"featureType": "road.local", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 16}]}, {"featureType": "transit", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 19}]}, {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 17}]}]
    };
    var mapElement = document.getElementById('map');
    var map = new google.maps.Map(mapElement, mapOptions);
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(40.6700, -73.9400),
        map: map,
    });
}
        </script>
        <script src="js/prettymaps.js"></script>
        <script>

$(function () {
//default
    $('.map-canvas').prettyMaps({
        address: 'Melbourne, Australia',
        image: 'map-icon.png',
        hue: '#FF0000',
        saturation: -20
    });

//red map example
    $('#default-map-btn').on('click', function () {
        $('.map-canvas').prettyMaps();
    });

//green map example
    $('#green-map-btn').on('click', function () {
        $('.map-canvas').prettyMaps({
            address: 'Melbourne, Australia',
            image: 'map-icon.png',
            hue: '#00FF55',
            saturation: -30
        });
    });

//blue map example
    $('#blue-map-btn').on('click', function () {
        $('.map-canvas').prettyMaps({
            address: 'Melbourne, Australia',
            image: 'map-icon.png',
            hue: '#0073FF',
            saturation: -30,
            zoom: 16,
            panControl: true,
            zoomControl: true,
            mapTypeControl: true,
            scaleControl: true,
            streetViewControl: true,
            overviewMapControl: true,
            scrollwheel: false,
        });
    });

//grey map example
    $('#grey-map-btn').on('click', function () {
        $('.map-canvas').prettyMaps({
            address: 'Melbourne, Australia',
            image: 'map-icon.png',
            saturation: -100,
            lightness: 10
        });
    });
});

        </script>
        <!-- //js -->
        <script src="js/screenfull.js"></script>
        <script>
$(function () {
    $('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

    if (!screenfull.enabled) {
        return false;
    }



    $('#toggle').click(function () {
        screenfull.toggle($('#container')[0]);
    });
});
        </script>
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>

        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


    </body>
</html>