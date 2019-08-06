<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="User/session.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>두루마리</title>
    <link rel="apple-touch-icon" sizes="60x60" href="resources/app-assets/images/ico/apple-icon-60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="resources/app-assets/images/ico/apple-icon-76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="resources/app-assets/images/ico/apple-icon-152.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/app-assets/images/ico/favicon.ico">
    <link rel="shortcut icon" type="image/png" href="resources/app-assets/images/ico/favicon-32.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/bootstrap.css">
    <!-- font icons-->
    <link rel="stylesheet" type="text/css" href="resources/app-assets/fonts/icomoon.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/vendors/css/extensions/pace.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/app.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/colors.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/pages/login-register.css">
    <!-- END Page Level CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

    <!-- navbar-fixed-top-->
    <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
      <div class="navbar-wrapper">
        <div class="navbar-header">
          <ul class="nav navbar-nav">
            <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5 font-large-1"></i></a></li>
            <li class="nav-item"><a href="index.html" class="navbar-brand nav-link"><img alt="branding logo" src="resources/app-assets/images/logo/robust-logo-light.png" data-expand="resources/app-assets/images/logo/robust-logo-light.png" data-collapse="resources/app-assets/images/logo/robust-logo-small.png" class="brand-logo"></a></li>
            <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
          </ul>
        </div>
        <div class="navbar-container content container-fluid">
          <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
            <ul class="nav navbar-nav">
              <li class="nav-item hidden-sm-down"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5">         </i></a></li>
              <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-link-expand"><i class="ficon icon-expand2"></i></a></li>
              
            </ul>
            <ul class="nav navbar-nav float-xs-right">
              <li class="dropdown dropdown-notification nav-item"><a href="#" data-toggle="dropdown" class="nav-link nav-link-label"><i class="ficon icon-bell4"></i><span class="tag tag-pill tag-default tag-danger tag-default tag-up">5</span></a>
                <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                  <li class="dropdown-menu-header">
                    <h6 class="dropdown-header m-0"><span class="grey darken-2">Notifications</span><span class="notification-tag tag tag-default tag-danger float-xs-right m-0">5 New</span></h6>
                  </li>
                  <li class="list-group scrollable-container"><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left valign-middle"><i class="icon-cart3 icon-bg-circle bg-cyan"></i></div>
                        <div class="media-body">
                          <h6 class="media-heading">You have new order!</h6>
                          <p class="notification-text font-small-3 text-muted">Lorem ipsum dolor sit amet, consectetuer elit.</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">30 minutes ago</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left valign-middle"><i class="icon-monitor3 icon-bg-circle bg-red bg-darken-1"></i></div>
                        <div class="media-body">
                          <h6 class="media-heading red darken-1">99% Server load</h6>
                          <p class="notification-text font-small-3 text-muted">Aliquam tincidunt mauris eu risus.</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Five hour ago</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left valign-middle"><i class="icon-server2 icon-bg-circle bg-yellow bg-darken-3"></i></div>
                        <div class="media-body">
                          <h6 class="media-heading yellow darken-3">Warning notifixation</h6>
                          <p class="notification-text font-small-3 text-muted">Vestibulum auctor dapibus neque.</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Today</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left valign-middle"><i class="icon-check2 icon-bg-circle bg-green bg-accent-3"></i></div>
                        <div class="media-body">
                          <h6 class="media-heading">Complete the task</h6><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Last week</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left valign-middle"><i class="icon-bar-graph-2 icon-bg-circle bg-teal"></i></div>
                        <div class="media-body">
                          <h6 class="media-heading">Generate monthly report</h6><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Last month</time></small>
                        </div>
                      </div></a></li>
                  <li class="dropdown-menu-footer"><a href="javascript:void(0)" class="dropdown-item text-muted text-xs-center">Read all notifications</a></li>
                </ul>
              </li>
              <li class="dropdown dropdown-notification nav-item"><a href="#" data-toggle="dropdown" class="nav-link nav-link-label"><i class="ficon icon-mail6"></i><span class="tag tag-pill tag-default tag-info tag-default tag-up">8</span></a>
                <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                  <li class="dropdown-menu-header">
                    <h6 class="dropdown-header m-0"><span class="grey darken-2">Messages</span><span class="notification-tag tag tag-default tag-info float-xs-right m-0">4 New</span></h6>
                  </li>
                  <li class="list-group scrollable-container"><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="resources/app-assets/images/portrait/small/avatar-s-1.png" alt="avatar"><i></i></span></div>
                        <div class="media-body">
                          <h6 class="media-heading">Margaret Govan</h6>
                          <p class="notification-text font-small-3 text-muted">I like your portfolio, let's start the project.</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Today</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left"><span class="avatar avatar-sm avatar-busy rounded-circle"><img src="resources/app-assets/images/portrait/small/avatar-s-2.png" alt="avatar"><i></i></span></div>
                        <div class="media-body">
                          <h6 class="media-heading">Bret Lezama</h6>
                          <p class="notification-text font-small-3 text-muted">I have seen your work, there is</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Tuesday</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="resources/app-assets/images/portrait/small/avatar-s-3.png" alt="avatar"><i></i></span></div>
                        <div class="media-body">
                          <h6 class="media-heading">Carie Berra</h6>
                          <p class="notification-text font-small-3 text-muted">Can we have call in this week ?</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Friday</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left"><span class="avatar avatar-sm avatar-away rounded-circle"><img src="resources/app-assets/images/portrait/small/avatar-s-6.png" alt="avatar"><i></i></span></div>
                        <div class="media-body">
                          <h6 class="media-heading">Eric Alsobrook</h6>
                          <p class="notification-text font-small-3 text-muted">We have project party this saturday night.</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">last month</time></small>
                        </div>
                      </div></a></li>
                  <li class="dropdown-menu-footer"><a href="javascript:void(0)" class="dropdown-item text-muted text-xs-center">Read all messages</a></li>
                </ul>
              </li>
              <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online"><img src="resources/app-assets/images/portrait/small/avatar-s-1.png" alt="avatar"><i></i></span><span class="user-name"><%=id %>님</span></a>
                <div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="icon-head"></i>내 정보 수정</a><a href="#" class="dropdown-item"><i class="icon-mail6"></i> My Inbox</a><a href="#" class="dropdown-item"><i class="icon-clipboard2"></i> Task</a><a href="#" class="dropdown-item"><i class="icon-calendar5"></i> Calender</a>
                  <div class="dropdown-divider"></div><a href="/logout.do" class="dropdown-item"><i class="icon-power3"></i>로그아웃</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>

    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <!-- main menu-->
    <div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
      <!-- main menu header-->
      <div class="main-menu-header">
        <input type="text" placeholder="Search" class="menu-search form-control round"/>
      </div>
      <!-- / main menu header-->
      <!-- main menu content-->
      <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
          <li class=" nav-item"><a href="/index.do"><i class="icon-home3"></i><span data-i18n="nav.form_layouts.form_layout_basic" class="menu-title">홈</span></a>
          </li>
          <li class=" nav-item"><a href="table-basic.html"><i class="icon-bullhorn"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">공지사항</span></a>
          </li>
          <li class=" nav-item"><a href="table-basic.html"><i class="icon-mic"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">스피치 연습하기</span></a>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-bar-graph-2"></i><span data-i18n="nav.google_charts.main" class="menu-title">커뮤니티</span></a>
            <ul class="menu-content">
              <li><a href="google-bar-charts.html" data-i18n="nav.google_charts.google_bar_charts" class="menu-item">Bar charts</a>
              </li>
              <li><a href="google-line-charts.html" data-i18n="nav.google_charts.google_line_charts" class="menu-item">Line charts</a>
              </li>
              <li><a href="google-pie-charts.html" data-i18n="nav.google_charts.google_pie_charts" class="menu-item">Pie charts</a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-stats-dots"></i><span data-i18n="nav.chartjs.main" class="menu-title">Chartjs</span></a>
            <ul class="menu-content">
              <li><a href="chartjs-line-charts.html" data-i18n="nav.chartjs.chartjs_line_charts" class="menu-item">Line charts</a>
              </li>
              <li><a href="chartjs-bar-charts.html" data-i18n="nav.chartjs.chartjs_bar_charts" class="menu-item">Bar charts</a>
              </li>
              <li><a href="chartjs-pie-doughnut-charts.html" data-i18n="nav.chartjs.chartjs_pie_doughnut_charts" class="menu-item">Pie &amp; Doughnut charts</a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-pie-graph2"></i><span data-i18n="nav.flot_charts.main" class="menu-title">Flot Charts</span></a>
            <ul class="menu-content">
              <li><a href="flot-line-charts.html" data-i18n="nav.flot_charts.flot_line_charts" class="menu-item">Line charts</a>
              </li>
              <li><a href="flot-bar-charts.html" data-i18n="nav.flot_charts.flot_bar_charts" class="menu-item">Bar charts</a>
              </li>
              <li><a href="flot-pie-charts.html" data-i18n="nav.flot_charts.flot_pie_charts" class="menu-item">Pie charts</a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-map22"></i><span data-i18n="nav.maps.main" class="menu-title">Maps</span></a>
            <ul class="menu-content">
              <li><a href="gmaps-basic-maps.html" data-i18n="nav.maps.google_maps.gmaps_basic_maps" class="menu-item">Maps</a>
              </li>
              <li><a href="vector-maps-jvq.html" data-i18n="nav.maps.vector_maps.vector_maps_jvq" class="menu-item">Vector Maps</a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-paint-format"></i><span data-i18n="nav.color_palette.main" class="menu-title">Color Palette</span></a>
            <ul class="menu-content">
              <li><a href="color-palette-primary.html" data-i18n="nav.color_palette.color_palette_primary" class="menu-item">Primary palette</a>
              </li>
              <li><a href="color-palette-danger.html" data-i18n="nav.color_palette.color_palette_danger" class="menu-item">Danger palette</a>
              </li>
              <li><a href="color-palette-success.html" data-i18n="nav.color_palette.color_palette_success" class="menu-item">Success palette</a>
              </li>
              <li><a href="color-palette-warning.html" data-i18n="nav.color_palette.color_palette_warning" class="menu-item">Warning palette</a>
              </li>
              <li><a href="color-palette-info.html" data-i18n="nav.color_palette.color_palette_info" class="menu-item">Info palette</a>
              </li>
              <li class="navigation-divider"></li>
              <li><a href="color-palette-red.html" data-i18n="nav.color_palette.color_palette_red" class="menu-item">Red palette</a>
              </li>
              <li><a href="color-palette-pink.html" data-i18n="nav.color_palette.color_palette_pink" class="menu-item">Pink palette</a>
              </li>
              <li><a href="color-palette-purple.html" data-i18n="nav.color_palette.color_palette_purple" class="menu-item">Purple palette</a>
              </li>
              <li><a href="color-palette-deep-purple.html" data-i18n="nav.color_palette.color_palette_deep_purple" class="menu-item">Deep Purple palette</a>
              </li>
              <li><a href="color-palette-indigo.html" data-i18n="nav.color_palette.color_palette_indigo" class="menu-item">Indigo palette</a>
              </li>
              <li><a href="color-palette-blue.html" data-i18n="nav.color_palette.color_palette_blue" class="menu-item">Blue palette</a>
              </li>
              <li><a href="color-palette-light-blue.html" data-i18n="nav.color_palette.color_palette_light_blue" class="menu-item">Light Blue palette</a>
              </li>
              <li><a href="color-palette-cyan.html" data-i18n="nav.color_palette.color_palette_cyan" class="menu-item">Cyan palette</a>
              </li>
              <li><a href="color-palette-teal.html" data-i18n="nav.color_palette.color_palette_teal" class="menu-item">Teal palette</a>
              </li>
              <li><a href="color-palette-green.html" data-i18n="nav.color_palette.color_palette_green" class="menu-item">Green palette</a>
              </li>
              <li><a href="color-palette-light-green.html" data-i18n="nav.color_palette.color_palette_light_green" class="menu-item">Light Green palette</a>
              </li>
              <li><a href="color-palette-lime.html" data-i18n="nav.color_palette.color_palette_lime" class="menu-item">Lime palette</a>
              </li>
              <li><a href="color-palette-yellow.html" data-i18n="nav.color_palette.color_palette_yellow" class="menu-item">Yellow palette</a>
              </li>
              <li><a href="color-palette-amber.html" data-i18n="nav.color_palette.color_palette_amber" class="menu-item">Amber palette</a>
              </li>
              <li><a href="color-palette-orange.html" data-i18n="nav.color_palette.color_palette_orange" class="menu-item">Orange palette</a>
              </li>
              <li><a href="color-palette-deep-orange.html" data-i18n="nav.color_palette.color_palette_deep_orange" class="menu-item">Deep Orange palette</a>
              </li>
              <li><a href="color-palette-brown.html" data-i18n="nav.color_palette.color_palette_brown" class="menu-item">Brown palette</a>
              </li>
              <li><a href="color-palette-blue-grey.html" data-i18n="nav.color_palette.color_palette_blue_grey" class="menu-item">Blue Grey palette</a>
              </li>
              <li><a href="color-palette-grey.html" data-i18n="nav.color_palette.color_palette_grey" class="menu-item">Grey palette</a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="changelog.html"><i class="icon-copy"></i><span data-i18n="nav.changelog.main" class="menu-title">Changelog</span><span class="tag tag tag-pill tag-danger float-xs-right">1.0</span></a>
          </li>
          <li class="disabled nav-item"><a href="#"><i class="icon-eye-disabled"></i><span data-i18n="nav.disabled_menu.main" class="menu-title">Disabled Menu</span></a>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-android-funnel"></i><span data-i18n="nav.menu_levels.main" class="menu-title">Menu levels</span></a>
            <ul class="menu-content">
              <li><a href="#" data-i18n="nav.menu_levels.second_level" class="menu-item">Second level</a>
              </li>
              <li><a href="#" data-i18n="nav.menu_levels.second_level_child.main" class="menu-item">Second level child</a>
                <ul class="menu-content">
                  <li><a href="#" data-i18n="nav.menu_levels.second_level_child.third_level" class="menu-item">Third level</a>
                  </li>
                  <li><a href="#" data-i18n="nav.menu_levels.second_level_child.third_level_child.main" class="menu-item">Third level child</a>
                    <ul class="menu-content">
                      <li><a href="#" data-i18n="nav.menu_levels.second_level_child.third_level_child.fourth_level1" class="menu-item">Fourth level</a>
                      </li>
                      <li><a href="#" data-i18n="nav.menu_levels.second_level_child.third_level_child.fourth_level2" class="menu-item">Fourth level</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <li class=" navigation-header"><span data-i18n="nav.category.support">Support</span><i data-toggle="tooltip" data-placement="right" data-original-title="Support" class="icon-ellipsis icon-ellipsis"></i>
          </li>
          <li class=" nav-item"><a href="https://github.com/pixinvent/robust-free-bootstrap-admin-template/issues"><i class="icon-support"></i><span data-i18n="nav.support_raise_support.main" class="menu-title">Raise Support</span></a>
          </li>
          <li class=" nav-item"><a href="https://pixinvent.com/free-bootstrap-template/robust-lite/documentation"><i class="icon-document-text"></i><span data-i18n="nav.support_documentation.main" class="menu-title">Documentation</span></a>
          </li>
        </ul>
      </div>
      <!-- /main menu content-->
      <!-- main menu footer-->
      <!-- include includes/menu-footer-->
      <!-- main menu footer-->
    </div>
    <!-- / main menu-->

    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><!-- stats -->
<div class="row">
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            <h3 class="pink">278</h3>
                            <span>New Projects</span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-bag2 pink font-large-2 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            <h3 class="teal">156</h3>
                            <span>New Clients</span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-user1 teal font-large-2 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            <h3 class="deep-orange">64.89 %</h3>
                            <span>Conversion Rate</span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-diagram deep-orange font-large-2 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            <h3 class="cyan">423</h3>
                            <span>Support Tickets</span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-ios-help-outline cyan font-large-2 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ stats -->
<!--/ project charts -->
<div class="row">
    <div class="col-xl-8 col-lg-12">
        <div class="card">
            <div class="card-body">
                <ul class="list-inline text-xs-center pt-2 m-0">
                    <li class="mr-1">
                        <h6><i class="icon-circle warning"></i> <span class="grey darken-1">Remaining</span></h6>
                    </li>
                    <li class="mr-1">
                        <h6><i class="icon-circle success"></i> <span class="grey darken-1">Completed</span></h6>
                    </li>
                </ul>
                <div class="chartjs height-250">
                    <canvas id="line-stacked-area" height="250"></canvas>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-xs-3 text-xs-center">
                        <span class="text-muted">Total Projects</span>
                        <h2 class="block font-weight-normal">18</h2>
                        <progress class="progress progress-xs mt-2 progress-success" value="70" max="100"></progress>
                    </div>
                    <div class="col-xs-3 text-xs-center">
                        <span class="text-muted">Total Task</span>
                        <h2 class="block font-weight-normal">125</h2>
                        <progress class="progress progress-xs mt-2 progress-success" value="40" max="100"></progress>
                    </div>
                    <div class="col-xs-3 text-xs-center">
                        <span class="text-muted">Completed Task</span>
                        <h2 class="block font-weight-normal">242</h2>
                        <progress class="progress progress-xs mt-2 progress-success" value="60" max="100"></progress>
                    </div>
                    <div class="col-xs-3 text-xs-center">
                        <span class="text-muted">Total Revenue</span>
                        <h2 class="block font-weight-normal">$11,582</h2>
                        <progress class="progress progress-xs mt-2 progress-success" value="90" max="100"></progress>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-lg-12">
        <div class="card card-inverse bg-info">
            <div class="card-body">
                <div class="position-relative">
                    <div class="chart-title position-absolute mt-2 ml-2 white">
                        <h1 class="display-4">84%</h1>
                        <span>Employees Satisfied</span>
                    </div>
                    <canvas id="emp-satisfaction" class="height-400 block"></canvas>
                    <div class="chart-stats position-absolute position-bottom-0 position-right-0 mb-2 mr-3 white">
                        <a href="#" class="btn bg-info bg-darken-3 mr-1 white">Statistics <i class="icon-stats-bars"></i></a> for the last year.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ project charts -->
<!-- Recent invoice with Statistics -->
<div class="row match-height">
    <div class="col-xl-4 col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <div class="p-2 text-xs-center bg-deep-orange media-left media-middle">
                        <i class="icon-user1 font-large-2 white"></i>
                    </div>
                    <div class="p-2 media-body">
                        <h5 class="deep-orange">New Users</h5>
                        <h5 class="text-bold-400">1,22,356</h5>
                        <progress class="progress progress-sm progress-deep-orange mt-1 mb-0" value="45" max="100"></progress>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <div class="p-2 text-xs-center bg-cyan media-left media-middle">
                        <i class="icon-camera7 font-large-2 white"></i>
                    </div>
                    <div class="p-2 media-body">
                        <h5>New Products</h5>
                        <h5 class="text-bold-400">28</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <div class="p-2 media-body text-xs-left">
                        <h5>New Users</h5>
                        <h5 class="text-bold-400">1,22,356</h5>
                    </div>
                    <div class="p-2 text-xs-center bg-teal media-right media-middle">
                        <i class="icon-user1 font-large-2 white"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-8 col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Recent Invoices</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="reload"><i class="icon-reload"></i></a></li>
                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="card-body">
                <div class="card-block">
                    <p>Total paid invoices 240, unpaid 150. <span class="float-xs-right"><a href="#">Invoice Summary <i class="icon-arrow-right2"></i></a></span></p>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover mb-0">
                        <thead>
                            <tr>
                                <th>Invoice#</th>
                                <th>Customer Name</th>
                                <th>Status</th>
                                <th>Due</th>
                                <th>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-truncate"><a href="#">INV-001001</a></td>
                                <td class="text-truncate">Elizabeth W.</td>
                                <td class="text-truncate"><span class="tag tag-default tag-success">Paid</span></td>
                                <td class="text-truncate">10/05/2016</td>
                                <td class="text-truncate">$ 1200.00</td>
                            </tr>
                            <tr>
                                <td class="text-truncate"><a href="#">INV-001012</a></td>
                                <td class="text-truncate">Andrew D.</td>
                                <td class="text-truncate"><span class="tag tag-default tag-success">Paid</span></td>
                                <td class="text-truncate">20/07/2016</td>
                                <td class="text-truncate">$ 152.00</td>
                            </tr>
                            <tr>
                                <td class="text-truncate"><a href="#">INV-001401</a></td>
                                <td class="text-truncate">Megan S.</td>
                                <td class="text-truncate"><span class="tag tag-default tag-success">Paid</span></td>
                                <td class="text-truncate">16/11/2016</td>
                                <td class="text-truncate">$ 1450.00</td>
                            </tr>
                            <tr>
                                <td class="text-truncate"><a href="#">INV-01112</a></td>
                                <td class="text-truncate">Doris R.</td>
                                <td class="text-truncate"><span class="tag tag-default tag-warning">Overdue</span></td>
                                <td class="text-truncate">11/12/2016</td>
                                <td class="text-truncate">$ 5685.00</td>
                            </tr>
                            <tr>
                                <td class="text-truncate"><a href="#">INV-008101</a></td>
                                <td class="text-truncate">Walter R.</td>
                                <td class="text-truncate"><span class="tag tag-default tag-warning">Overdue</span></td>
                                <td class="text-truncate">18/05/2016</td>
                                <td class="text-truncate">$ 685.00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Recent invoice with Statistics -->
<div class="row match-height">
    <div class="col-xl-4 col-md-6 col-sm-12">
        <div class="card" style="height: 440px;">
            <div class="card-body">
                <img class="card-img-top img-fluid" src="resources/app-assets/images/carousel/05.jpg" alt="Card image cap">
                <div class="card-block">
                    <h4 class="card-title">Basic</h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-outline-pink">Go somewhere</a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-6 col-sm-12">
        <div class="card" style="height: 440px;">
            <div class="card-body">
                <div class="card-block">
                    <h4 class="card-title">List Group</h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <span class="tag tag-default tag-pill bg-primary float-xs-right">4</span> Cras justo odio
                    </li>
                    <li class="list-group-item">
                        <span class="tag tag-default tag-pill bg-info float-xs-right">2</span> Dapibus ac facilisis in
                    </li>
                    <li class="list-group-item">
                        <span class="tag tag-default tag-pill bg-warning float-xs-right">1</span> Morbi leo risus
                    </li>
                    <li class="list-group-item">
                        <span class="tag tag-default tag-pill bg-success float-xs-right">3</span> Porta ac consectetur ac
                    </li>
                    <li class="list-group-item">
                        <span class="tag tag-default tag-pill bg-danger float-xs-right">8</span> Vestibulum at eros
                    </li>
                </ul>
                <div class="card-block">
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-12 col-sm-12">
        <div class="card" style="height: 440px;">
            <div class="card-body">
                <div class="card-block">
                    <h4 class="card-title">Carousel</h4>
                    <h6 class="card-subtitle text-muted">Support card subtitle</h6>
                </div>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item">
                            <img src="resources/app-assets/images/carousel/02.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item active">
                            <img src="resources/app-assets/images/carousel/03.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img src="resources/app-assets/images/carousel/01.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="icon-prev" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="icon-next" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <div class="card-block">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
        </div>
    </div>
</div>

        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <footer class="footer footer-static footer-light navbar-border">
      <p class="clearfix text-muted text-sm-center mb-0 px-2"><span class="float-md-left d-xs-block d-md-inline-block">Copyright  &copy; 2017 <a href="https://themeforest.net/user/pixinvent/portfolio?ref=pixinvent" target="_blank" class="text-bold-800 grey darken-2">PIXINVENT </a>, All rights reserved. </span><span class="float-md-right d-xs-block d-md-inline-block">Hand-crafted & Made with <i class="icon-heart5 pink"></i></span></p>
    </footer>

    <!-- BEGIN VENDOR JS-->
    <script src="resources/app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/tether.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/unison.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="resources/app-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="resources/app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="resources/app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="resources/app-assets/js/scripts/pages/dashboard-lite.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>