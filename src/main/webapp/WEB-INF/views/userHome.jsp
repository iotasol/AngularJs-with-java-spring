<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Welcome Page</title>
<link rel="stylesheet"
	href="/resources/scripts/external/bootstrap-3.3.2/css/bootstrap.css" />
<link rel="stylesheet"
	href="/resources/scripts/external/font-awesome-4.2.0/font-awesome-4.2.0/css/font-awesome.css" />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,200'
	rel='stylesheet' type='text/css'>
<style type="text/css">
a {
	cursor: pointer !important;
}

body {
	font-family: 'Raleway', serif;
}

.no-padding {
	padding: 0px;
}

.margin-top-10 {
	margin-top: 10px !important;
}

.margin-top-20 {
	margin-top: 20px !important;
}

.navbar {
	background-color: #2B2B2B;
	border-color: #2B2B2B;
	border-radius: 0px;
}

.navbar li a {
	color: #fff !important;
}

.app_name {
	color: #fff !important;
}

.no-margin-bottom {
	margin-bottom: 0px;
}

.navbar-header {
	padding: 5px;
}

.login-form-container {
	background-color: #f8f8f8;
	padding: 20px;
	min-height: 555px;
	overflow: auto;
	text-align: center;
}

.login-form-inner-container {
	text-align: left;
}

@media screen and (min-width: 375px) {
	.login-form-inner-container {
		display: inline-block;
		width: 350px;
		float: none;
		vertical-align: top;
	}
}

.fotter-container {
	padding: 12px;
	background-color: #2B2B2B;
	color: #fff;
}

.image-containor {
	border-radius: 50%;
	height: 200px;
	padding: 0;
}

.image-circle {
	border: 4px solid #fff;
	border-radius: 50%;
	height: 175px;
	margin: 10px;
	width: 175px;
}

.user-log-name-container {
	text-align: center;
	background-color: #FE6944;
	color: #fff;
	box-shadow: 0 0 8px 0 rgba(50, 50, 50, 0.54);
	color: #fff
}

.user-log-name-container h1 {
	margin: 0px;
	padding-bottom: 10px;
}

.form-signin-container {
	background-color: #fff;
	border: 1px solid #FE6944;
	padding: 10px;
}

.form-signin-container h4 {
	margin-bottom: 5px;
	margin-top: 5px;
}

.form-signin-container .form-control {
	border-radius: 0px;
	height: 40px;
}

.custom-login-btn {
	width: 100%;
	background-color: #FE6944 !important;
	border-color: #FE6944 !important;
	color: #fff !important;
}

.padding-5 {
	padding: 5px;
}

.about-us-text {
	font-size: 17px;
	line-height: 33px;
	text-indent: 50px;
	text-align: justify;
}

.product-from-container {
	border: 1px solid #ddd;
	padding: 0px;
}

.product-listing-container {
	border: 1px solid #ddd;
	padding: 0px;
}

.header-text {
	padding: 10px;
	background-color: #ddd
}

.header-text h4 {
	margin: 0px;
}

.product-from-container .product-from-body {
	padding: 15px;
	height: 470px;
}

.product-from-container .product-from-body .form-control {
	border-radius: 0px;
	height: 40px;
}

.product-listing-container .product-listing-body {
	padding: 15px;
	height: 470px;
}

.error-text {
	color: red;
	font-size: 14px;
}

.bootbox .modal-dialog {
	width: 300px !important;
}

.bootbox .modal-header {
	background-color: #FE6944 !important;
	color: #fff;
	padding: 10px 15px;
}

.bootbox .modal-footer {
	padding: 10px 15px;
}

.no-margin {
	margin: 0px;
}

.pagination {
	margin-top: 10px !important;
	margin-bottom: 0px !important;
}

.table-responsive {
	height: 405px !important;
}
</style>
</head>
<body data-ng-app="common-app">
	<div class="container-fluid no-padding">
		<div class="container-fluid no-padding">
			<div data-nav-bar-directive=""></div>
		</div>
		<div class="clearfix"></div>
		<div class="container-fluid no-padding login-form-container">
			<div data-ng-view=""></div>
		</div>
		<div class="clearfix"></div>
		<div class="container-fluid no-padding fotter-container">
			<div class="col-md-12 no-padding">
				<div class="col-md-5 col-md-offset-1">
					<i class="fa fa-copyright"></i> 2014-2015
				</div>
				<div class="col-md-5 text-right">
					Manage By <a href="">Iotasol Pvt Ltd</a>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="/resources/scripts/external/jQuery/jquery-2.1.1.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/external/bootstrap-3.3.2/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/external/angular-1.3.8/angular.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/external/angular-1.3.8/angular-route.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/external/angular-1.3.8/angular-resource.min.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/external/bootbox/bootbox.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/external/angular-pagination/dirPagination.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/internal/angularjs/common/app/app.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/internal/angularjs/common/controllers/common-controllers.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/internal/angularjs/common/directives/common-directive.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/internal/angularjs/common/filters/common-filter.js"></script>
	<script type="text/javascript"
		src="/resources/scripts/internal/angularjs/common/services/common-services.js"></script>
</body>
</html>
