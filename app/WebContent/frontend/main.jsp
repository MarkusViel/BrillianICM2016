<%@ page import="org.dhbw.imbit11.ApplicationConstants" %>
<!DOCTYPE html>
<html>
<head>
	<title><%=ApplicationConstants.PAGETITLE_MAIN%></title>	
	<meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" sizes="57x57" href="images/favicons/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/favicons/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/favicons/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="144x144" href="images/favicons/apple-touch-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="60x60" href="images/favicons/apple-touch-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="120x120" href="images/favicons/apple-touch-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="76x76" href="images/favicons/apple-touch-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="152x152" href="images/favicons/apple-touch-icon-152x152.png">
	<link rel="icon" type="image/png" href="images/favicons/favicon-196x196.png" sizes="196x196">
	<link rel="icon" type="image/png" href="images/favicons/favicon-160x160.png" sizes="160x160">
	<link rel="icon" type="image/png" href="images/favicons/favicon-96x96.png" sizes="96x96">
	<link rel="icon" type="image/png" href="images/favicons/favicon-16x16.png" sizes="16x16">
	<link rel="icon" type="image/png" href="images/favicons/favicon-32x32.png" sizes="32x32">
	<meta name="msapplication-TileColor" content="#da532c">
	<meta name="msapplication-TileImage" content="images/favicons/mstile-144x144.png">
	<link type="text/css" rel="stylesheet" href="css/jquery.easyui.css" />
	<link type="text/css" rel="stylesheet" href="css/jquery.easyui.icon.css" />
	<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css?v=2.1.5" media="screen" />
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/master.css" />	
	<script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox.pack.js?v=2.1.5"></script>
	<script type="text/javascript">	
		userid = '${userid}';
	</script>
	
   <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/grayscale.css" rel="stylesheet">

		
	<script type="text/javascript" src="js/master.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	
	<!--Framework changes -->
    <link href="css/bootstrap-changes.css" rel="stylesheet">
    <!-- Overwriting Font -->
    <link href="css/font.css" rel="stylesheet">
	
</head>
<body class="easyui-layout" data-options="fit:true">
    <div id="container header-navbar" class="navbar-custom" data-options="region:'north'" style="height:70px;">
      <nav class="navbar navbar-center container">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
					<a class="player">
                      <div style="width:120px"> <img src="img/logo_klein.png" alt="" style="width:100%">  </img></div>
					</a>
			</div>
    <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse center container" id="navbarCollapse">
       
            <ul class="nav navbar-nav">
               
                <li><a href="#" id="help"  data-options="plain:true"><%=ApplicationConstants.HELP_BUTTON_TEXT%></a></li>
                <!--<li><a href="#" id="imprint" data-options="plain:true"><%=ApplicationConstants.IMPRINT_BUTTON_TEXT%></a></li>-->
                <li><a href="#"  class=" mainMailButton"  data-options="plain:true"><%=ApplicationConstants.LAPTOP_NAME%></a></li>
                <li><a href="#" id="logout"  data-options="plain:true"><%=ApplicationConstants.LOGOUT_BUTTON_TEXT%></a></li>
            </ul> 
            <ul class="nav navbar-nav second-button">
                 <li><a href="#" id="account" onclick="window.location.assign('<%out.print(application.getContextPath());%>/StudentHomepage','_blank')"  data-options="plain:true"></a></li>   
			</ul>
			
        </div>
        </div>
	   </nav>
	</div>
	<div  class="center mainWindow clearfix" data-options="region:'center'">
	
	
	<!--	<p class="bubble left" style="margin: 70px auto;">BrillianICM Rocks!</p>
		<p class="bubble right" style="margin: 30px auto;">BrillianICM Rocks!</p> -->
			
			<!--		<div class="mainLocationButton easyui-linkbutton" id="4" >START</div>	 -->
		<div class="mainEventContainer" data-options="inline:true, center:true, fit:true" ></div>
		<!--<div class="mainEventContainerLaptop easyui-window" data-options="closed:true,width:863,height:576"></div> -->
		<div class="mainEventContainerImprint easyui-window" data-options="closed:true,width:800,height:500"></div>
		<div class="mainEventContainerResult easyui-window" data-options="closed:true,maximized:true,noheader:true"></div>
		<div class="loadingScreen easyui-window" data-options="closed:true,maximized:true,noheader:true">
		<div class="loadingScreenImageContainer easyui-panel" data-options="fit:true,border:false"></div>
		</div>
		<div class="transitionScreen easyui-window" data-options="closed:true,noheader:true,width:800,height:500">
			<div class="transitionScreenImageContainer">
				<div class="transitionScreenTextContainer"></div>
				<div class="buttonContainer">
					<div id="continueButton" class="easyui-linkbutton transitionContinueButton">Next</div>
				</div>
			</div>			
		
		</div>
	</div>
	<div class=" footer container text-center" data-options="region:'south'" style="height:45px; overflow:hidden;">
		<footer>
        <div class=" text-center">
            <p>Copyright &copy; brillianICM 2015</p>
        </div>
        </footer>
	</div>
</body>
</html>
