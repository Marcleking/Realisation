<!DOCTYPE html>
<html>
	<head>
		<title>Le coureur nordique</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="<?=url?>/../css/foundation.css" />


		<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

		<style>
			#feedback { font-size: 1.4em; }
			.selectable .ui-selecting { background: #FECA40; }
			.selectable .ui-selected { background: #F39814; color: white; }
			.selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
			.selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
			
			.contenu {
				overflow: auto;
			}

			html {
				overflow: scroll;
			}
			
			.off-canvas-list hr {
				display: none;
			}

			td div{	
				width:100%;
				height:10px;}
			.emp1{background:blue;}
			.emp2{background:red;}
			.emp3{background:green;}
			.emp4{background:teal;}
			td, th{
				width:40px;
				margin-bottom:10px;
			}
			tr > td{
				padding-bottom:10px;
			}

			hr {
				margin-top: 10px;
				margin-bottom: 10px;
			}
		</style>
		
		<script src="<?=url?>/../js/vendor/jquery.js"></script>
		<script src="<?=url?>/../js/vendor/jquery.cookie.js"></script>
		<script src="<?=url?>/../js/jquery.js"></script>
		<script src="<?=url?>/../js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="<?=url?>/../js/foundation.min.js"></script>
		<script src="<?=url?>/../js/foundation/foundation.abide.js"></script>
		<script src="<?=url?>/../js/foundation/foundation.joyride.js"></script>
		<script src="<?=url?>/../js/foundation/foundation.alert.js"></script>
	  	
	</head>
	<body>
		<div class="row off-canvas-wrap">
				<?=$entete?>
				  <div class="inner-wrap">

				  	<div class="hide-for-medium-up top-bar">
						<section class="left-small">
				        	<a class="left-off-canvas-toggle menu-icon" ><span></span></a>
				      	</section>
				   	</div>

				    <div class="medium-3 columns">
					    <ul class="show-for-medium-up side-nav">
						  <?=$menu?>
						</ul>
					</div>

				    <!-- Off Canvas Menu -->
				    <div class="left-off-canvas-menu">
							<ul class="off-canvas-list">
							  <?=$menu?>
							</ul>
				    </div>
				    <div class="contenu">
				    	<?=$contenu?>
				    </div>
				  <!-- close the off-canvas menu -->
				  <a class="exit-off-canvas"></a>

				</div>
	  	</div>
		
		<script>
		 	$(document).foundation();
		</script>
		
	</body>
</html>