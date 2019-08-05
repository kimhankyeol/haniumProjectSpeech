<%@page import="java.util.List"%>
<%@page import="poly.dto.NotiDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<NotiDTO> nList = (List<NotiDTO>)request.getAttribute("nList");
	NotiDTO nDTO = (NotiDTO)request.getAttribute("nDTO");
%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Project Dashboard - Robust Free Bootstrap Admin Template</title>
    <link rel="apple-touch-icon" sizes="60x60" href="/resources/app-assets/images/ico/apple-icon-60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/resources/app-assets/images/ico/apple-icon-76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/resources/app-assets/images/ico/apple-icon-152.png">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/app-assets/images/ico/favicon.ico">
    <link rel="shortcut icon" type="image/png" href="/resources/app-assets/images/ico/favicon-32.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/bootstrap.css">
    <!-- font icons-->
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/fonts/icomoon.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/vendors/css/extensions/pace.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/app.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/colors.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/core/colors/palette-gradient.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css">
    <!-- END Custom CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

    <!-- navbar-fixed-top-->
    <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
      <div class="navbar-wrapper">
        <div class="navbar-header">
          <ul class="nav navbar-nav">
            <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5 font-large-1"></i></a></li>
            <li class="nav-item"><a href="/home.do" class="navbar-brand nav-link"><img alt="branding logo" src="/resources/app-assets/images/logo/robust-logo-light.png" data-expand="/resources/app-assets/images/logo/robust-logo-light.png" data-collapse="/resources/app-assets/images/logo/robust-logo-small.png" class="brand-logo"></a></li>
            <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
          </ul>
        </div>
        <div class="navbar-container content container-fluid">
          <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
            <ul class="nav navbar-nav">
              <li class="nav-item hidden-sm-down"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5">         </i></a></li>
              <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-link-expand"><i class="ficon icon-expand2"></i></a></li>
            </ul>
            
            <!-- 언어 설정 -->
            <ul class="nav navbar-nav float-xs-right">
              <li class="dropdown dropdown-language nav-item"><a id="dropdown-flag" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle nav-link"><i class="flag-icon flag-icon-gb"></i><span class="selected-language">한국어</span></a>
                <div aria-labelledby="dropdown-flag" class="dropdown-menu"><a href="#" class="dropdown-item"><i class="flag-icon flag-icon-gb"></i>한국어</a><a href="#" class="dropdown-item"><i class="flag-icon flag-icon-fr"></i>영어</a></div>
              </li>
              
              <!-- 알림 설정 -->
               <li class="dropdown dropdown-notification nav-item"><a href="#" data-toggle="dropdown" class="nav-link nav-link-label"><i class="ficon icon-bell4"></i><span class="tag tag-pill tag-default tag-danger tag-default tag-up">5</span></a>
                <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                  <li class="dropdown-menu-header">
                    <h6 class="dropdown-header m-0"><span class="grey darken-2">알림창</span><span class="notification-tag tag tag-default tag-danger float-xs-right m-0">5 New</span></h6>
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
                      <li class="dropdown-menu-footer"><a href="javascript:void(0)" class="dropdown-item text-muted text-xs-center">더보기</a></li>
                </ul>
              </li>
              
              <!-- 메일창 설정 -->
              <li class="dropdown dropdown-notification nav-item"><a href="#" data-toggle="dropdown" class="nav-link nav-link-label"><i class="ficon icon-mail6"></i><span class="tag tag-pill tag-default tag-info tag-default tag-up">8</span></a>
                <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                  <li class="dropdown-menu-header">
                    <h6 class="dropdown-header m-0"><span class="grey darken-2">메세지</span><span class="notification-tag tag tag-default tag-info float-xs-right m-0">4 New</span></h6>
                  </li>
                  <li class="list-group scrollable-container"><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="/resources/app-assets/images/portrait/small/avatar-s-1.png" alt="avatar"><i></i></span></div>
                        <div class="media-body">
                          <h6 class="media-heading">김한결</h6>
                          <p class="notification-text font-small-3 text-muted">어디까지 했니?</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">오늘</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left"><span class="avatar avatar-sm avatar-busy rounded-circle"><img src="/resources/app-assets/images/portrait/small/avatar-s-2.png" alt="avatar"><i></i></span></div>
                        <div class="media-body">
                          <h6 class="media-heading">김도우</h6>
                          <p class="notification-text font-small-3 text-muted">프로젝트 시작하자</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">화요일</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="/resources/app-assets/images/portrait/small/avatar-s-3.png" alt="avatar"><i></i></span></div>
                        <div class="media-body">
                          <h6 class="media-heading">노하윤</h6>
                          <p class="notification-text font-small-3 text-muted">이번주에 시간 되시나요?</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">금요일</time></small>
                        </div>
                      </div></a><a href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left"><span class="avatar avatar-sm avatar-away rounded-circle"><img src="/resources/app-assets/images/portrait/small/avatar-s-6.png" alt="avatar"><i></i></span></div>
                        <div class="media-body">
                          <h6 class="media-heading">한상민</h6>
                          <p class="notification-text font-small-3 text-muted">이번주 금요일 괜찮습니다.</p><small>
                            <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">지난주</time></small>
                        </div>
                      </div></a></li>
                  <li class="dropdown-menu-footer"><a href="javascript:void(0)" class="dropdown-item text-muted text-xs-center">더보기</a></li>
                </ul>
              </li>
              
              
              <!-- 사용자 정보관리창 설정 -->
              <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online"><img src="/resources/app-assets/images/portrait/small/avatar-s-1.png" alt="avatar"><i></i></span><span class="user-name">SuperDev</span></a>
                <div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="icon-head"></i>정보 수정</a><a href="#" class="dropdown-item"><i class="icon-mail6"></i>메일함</a><a href="#" class="dropdown-item"><i class="icon-clipboard2"></i>할 일</a><a href="#" class="dropdown-item"><i class="icon-calendar5"></i>캘린더</a>
                  <div class="dropdown-divider"></div><a href="#" class="dropdown-item"><i class="icon-power3"></i>로그아웃</a>
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
      
      
      <!-- 대쉬보드 설정 -->
      <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
          <li class=" nav-item"><a href="/home.do"><i class="icon-home3"></i>홈</a>
          </li>
          <li class="nav-item"><a href="#"><i class="icon-stack-2"></i><span data-i18n="nav.page_layouts.main" class="menu-title">내 정보</span></a>
            <ul class="menu-content">
              <li><a href="layout-1-column.html" data-i18n="nav.page_layouts.1_column" class="menu-item">내 면접 기록</a>
              </li>
              <li><a href="layout-2-columns.html" data-i18n="nav.page_layouts.2_columns" class="menu-item">면접 즐겨찾기</a>
              </li>
              <li><a href="layout-boxed.html" data-i18n="nav.page_layouts.boxed_layout" class="menu-item">향상 그래프</a>
              <ul class="menu-content">
                  <li><a href="error-500.html" data-i18n="nav.error_pages.error_500" class="menu-item">항목별 점수 보기</a>
                  <ul class="menu-content">
                  <li><a href="error-400.html" data-i18n="nav.error_pages.error_400" class="menu-item">발성</a>
                  </li>
                  <li><a href="error-401.html" data-i18n="nav.error_pages.error_401" class="menu-item">속도</a>
                  </li>
                  <li><a href="error-403.html" data-i18n="nav.error_pages.error_403" class="menu-item">발음(명료성)</a>
                  </li>
                </ul>
                  </li>
                </ul>
              </li>
              <li><a href="layout-static.html" data-i18n="nav.page_layouts.static_layout" class="menu-item">개인 정보</a>
              <ul class="menu-content">
                  <li><a href="error-400.html" data-i18n="nav.error_pages.error_400" class="menu-item">개인정보 수정</a>
                  </li>
                  <li><a href="error-401.html" data-i18n="nav.error_pages.error_401" class="menu-item">회원 탈퇴</a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-briefcase4"></i><span data-i18n="nav.project.main" class="menu-title">스피치 연습</span></a>
            <ul class="menu-content">
              <li><a href="invoice-template.html" data-i18n="nav.invoice.invoice_template" class="menu-item">면접 질문 세트 선택</a>
              <ul class="question-set-select">
                  <li><a href="" class="set-popular">인기 세트</a></li>
                  <li><a href="" class="set-recommend">추천 세트</a></li>
                  <li><a href="" class="set-new">신규 세트</a></li>
              </ul>
              </li>
              <li><a href="gallery-grid.html" data-i18n="nav.gallery_pages.gallery_grid" class="menu-item">면접 질문 세트 작성</a>
              </li>
              <li><a href="search-page.html" data-i18n="nav.search_pages.search_page" class="menu-item">모의면접 진행</a>
              </li>
              <li><a href="search-website.html" data-i18n="nav.search_pages.search_website" class="menu-item">모의면접 결과</a>
              <ul class="interview-result">
                  <li><a href="" class="result-summary">분석결과 요약</a></li>
                  <li><a href="" class="result-detail">상세분석 결과</a></li>
                  <li><a href="" class="result-comparativeanalysis">비교분석 결과</a></li>
                  <li><a href="" class="result-sharing">결과 공유</a></li>
              </ul>
              </li>
              <li><a href="login-simple.html" data-i18n="nav.login_register_pages.login_simple" class="menu-item">면접 질문 세트 후기</a>
              <ul class="question-set-review">
                  <li><a href="" class="recommend">추천 누르기</a></li>
                  <li><a href="" class="review-register">리뷰 등록</a></li>
                  <li><a href="" class="review-delete">리뷰 삭제</a></li>
              </ul>
              </li>
              <li><a href="register-simple.html" data-i18n="nav.login_register_pages.register_simple" class="menu-item">면접 질문 세트 신고</a>
              <ul class="question-set-report">
                  <li><a href="" class="report-reason-select">신고 사유 선택</a></li>
              </ul>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-ios-albums-outline"></i><span data-i18n="nav.cards.main" class="menu-title">사용자 커뮤니티</span></a>
            <ul class="menu-content">
              <li><a href="/noti/notiList.do" data-i18n="nav.cards.card_bootstrap" class="menu-item">채용공고 게시판</a>
              </li>
              <li><a href="/resFeedback/resList.do" data-i18n="nav.cards.card_actions" class="menu-item">피드백 게시판</a>
              </li>
              <li><a href="card-actions.html" data-i18n="nav.cards.card_actions" class="menu-item">면접후기 게시판</a>
              </li>
            </ul>
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
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">공지사항 게시판</h2>
          </div>

        </div>
        <div class="content-body"><!-- Basic Tables start -->
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Basic Tables</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
                        <li><a data-action="reload"><i class="icon-reload"></i></a></li>
                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                        <li><a data-action="close"><i class="icon-cross2"></i></a></li>
                    </ul>
                </div>
            </div>
  <div class="card-body collapse in">
     <div class="card-block card-dashboard">
                    
         <div class="table-responsive">
           <form action="/noti/notiModify.do" method="post">
				<input type="hidden" name="seq" value="<%=nDTO.getSeq() %>" />
					<table border="1">
						<col width="100px" />
						<col width="500px" />
							<tr>
								<td align="center">제목</td>
								<td><input type="text" readonly="readonly" name="title" maxlength="100" style="width:450px" value="<%=nDTO.getTitle() %>"/></td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea readonly="readonly" name="contents" style="width:550px; height:400px"><%=nDTO.getContent()%></textarea>
								</td>
							</tr>
		<tr>
			<td align="center" colspan="2">
				<input type="submit" value="수정" />
				<input type="button" onclick="location.href='/noti/notiDelete.do?seq=<%=nDTO.getSeq() %>'" value="삭제" />
				<input type="button" onclick="location.href='/noti/notiList.do'" value="돌아가기" />
			</td>
		</tr>
	</table>
</form>
                    </div>
                </div>
  
    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <footer class="footer footer-static footer-light navbar-border">
      <p class="clearfix text-muted text-sm-center mb-0 px-2"><span class="float-md-left d-xs-block d-md-inline-block">Copyright  &copy; 2019 <a href="https://themeforest.net/user/pixinvent/portfolio?ref=pixinvent" target="_blank" class="text-bold-800 grey darken-2">두루마리</a>, All rights reserved. </span><span class="float-md-right d-xs-block d-md-inline-block">Hand-crafted & Made with <i class="icon-heart5 pink"></i></span></p>
    </footer>

    <!-- BEGIN VENDOR JS-->
    <script src="/resources/app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script src="/resources/app-assets/vendors/js/ui/tether.min.js" type="text/javascript"></script>
    <script src="/resources/app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
    <script src="/resources/app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="/resources/app-assets/vendors/js/ui/unison.min.js" type="text/javascript"></script>
    <script src="/resources/app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
    <script src="/resources/app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
    <script src="/resources/app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
    <script src="/resources/app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="/resources/app-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="/resources/app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="/resources/app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="/resources/app-assets/js/scripts/pages/dashboard-lite.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>
</html>