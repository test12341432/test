<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8" />
        <!-- ----- Do not think this part ----- -->
        <meta name="title" content="ssodal Source" />
        <meta name="subject" content="ssodal Source" />
        <meta name="keywords" content="ssodal,Design,Develope,Code" />
        <meta name="description" content="ssodal Source" />
        <meta name="publisher" content="ssodal" />
        <meta name="author" content="FreshSJ" />
        <meta name="other agent" content="FreshSJ" />
        <meta name="distribution" content="FreshSJ" />
        <meta name="copyright" content="ssodal" />
        <meta name="reply-to(email)" content="help@ssodal.com" />
        <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1, initial-scale=1, user-scalable=no" />
        <!-- ----- Do not think this part ----- -->
        
    <!-- ----- CSS ----- -->
        <!-- ----- common ----- -->
        <link type="text/css" rel="stylesheet" href="./bundle/css/common.css" />
        <!-- ----- header ----- -->
        <link type="text/css" rel="stylesheet" href="./bundle/css/header/header_main.css" />
        <link type="text/css" rel="stylesheet" href="./bundle/css/detail/seat.css" />
        <!-- ----- footer ----- -->
        <link type="text/css" rel="stylesheet" href="./bundle/css/footer/footer_main.css" />
        
    <!-- ----- Javascript ----- -->
        <!-- ----- JQuery ----- -->
        <script type="text/javascript" src="./bundle/js/jquery-1.11.1.js"></script>
        <!-- ----- header ----- -->
        <script type="text/javascript" src="./bundle/js/header/header.js"></script>
        <!-- ----- seat ----- -->
        <script type="text/javascript" src="./bundle/js/seat/seat.js"></script>
        <title>SsoDal</title>
    </head>
    <body>
        <div id="wrapper">
            
            <!-- ------------------------------ start of header ------------------------------ -->
            <header id="header">
                
                <!-- ----- start of wrapper_logo ----- -->
                <div id="wrapper_logo">
                    <hgroup>
                        <h3>
                            <a href="#">
                                <div id="logo"></div>
                            </a>
                        </h3>
                    </hgroup>
                </div>
                <!-- ----- end of wrapper_logo ----- -->
                
                <!-- ----- start of nav ----- -->
                <nav id="nav">
                    <ul>
                        <a href="#"><li>Reserve</li></a>
                        <li class="bar_vertical">&#124;</li>
                        <a href="#"><li>Auction</li></a>
                        <li class="bar_vertical">&#124;</li>
                        <a href="#"><li>Board</li></a>
                        <li class="bar_vertical">&#124;</li>
                        <a href="#"><li>Contact</li></a>
                        <li class="bar_vertical">&#124;</li>
                        <a href="#"><li>Intro</li></a>
                    </ul>
                </nav>
                <!-- ----- end of nav ----- -->
                
                <!-- ----- start of wrapper_search ----- -->
                <div id="wrapper_search">
                    <form method="post" action="#" onsubmit="#">
                        <input type="search" placeholder="Search" size="27" name="search" id="search" />
                        <input type="submit" name="search_submit" value="search" id="search_submit" />
                        <label for="search_submit" onclick></label>
                    </form>
                </div>
                <!-- ----- end of wrapper_search ----- -->
                
                <!-- ----- start of wrapper_member ----- -->
                <div id="wrapper_member">
                    <input type="button" name="sign_name" id="sign_name" value="User001" />
                    <div id="profile_img" style="background-image:url('../../images/member/profile/default.png')"></div>
                </div>
                <!-- ----- end of wrapper_member ----- -->
                
            </header>
            <!-- ------------------------------ end of header ------------------------------ -->
        </div>
    <div class="clear"></div>