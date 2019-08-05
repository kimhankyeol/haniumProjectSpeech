<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
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
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="resources/assets/css/style.css">
    <!-- END Custom CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="1-column" class="vertical-layout vertical-menu 1-column  blank-page blank-page">
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="flexbox-container">
    <div class="col-md-4 offset-md-4 col-xs-10 offset-xs-1  box-shadow-2 p-0">
        <div class="card border-grey border-lighten-3 m-0">
            <div class="card-header no-border">
                <div class="card-title text-xs-center">
                    <div class="p-1"><img src="resources/app-assets/images/logo/robust-logo-dark.png" alt="branding logo"></div>
                </div>
                <h6 class="card-subtitle line-on-side text-muted text-xs-center font-small-3 pt-2"><span>두루마리에 로그인</span></h6>
            </div>
            <div class="card-body collapse in">
                <div class="card-block">
                    <form class="form-horizontal form-simple" action="/UserLogin.do" method="POST" name="loginForm">
                        <fieldset class="form-group position-relative has-icon-left mb-0">
                            <input type="text" class="form-control form-control-lg input-lg" id="user-name" placeholder="아이디" name="id" required>
                            <div class="form-control-position">
                                <i class="icon-head"></i>
                            </div>
                        </fieldset>
                        <fieldset class="form-group position-relative has-icon-left">
                            <input type="password" class="form-control form-control-lg input-lg" id="user-password" placeholder="비밀번호" name="passwd" required>
                            <div class="form-control-position">
                                <i class="icon-key3"></i>
                            </div>
                        </fieldset>
                        <fieldset class="form-group row">
                            <div class="col-md-6 col-xs-12 text-xs-center text-md-left">
                                <fieldset>
                                    <input type="checkbox" id="remember-me" class="chk-remember">
                                    <label for="remember-me"> 아이디 저장</label>
                                </fieldset>
                            </div>
                            <div class="col-md-6 col-xs-12 text-xs-center text-md-right"><a href="FindUserID.do" class="card-link">아이디 찾기</a></div>
                        </fieldset>
                        <button type="submit" class="btn btn-primary btn-lg btn-block"><i class="icon-unlock2"></i> 로그인</button>
                    </form>
                </div>
            </div>
            <div class="card-footer">
                <div class="">
                    <p class="float-sm-left text-xs-center m-0"><a href="FindUserPw.do" class="card-link">암호 찾기</a></p>
                    <p class="float-sm-right text-xs-center m-0">회원이 아니신가요? <a href="UserReg.do" class="card-link">회원가입</a></p>
                </div>
            </div>
        </div>
    </div>
</section>

        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->

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
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="resources/app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="resources/app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <!-- END PAGE LEVEL JS-->
  </body>
</html>
