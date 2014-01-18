<!DOCTYPE html>

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Gyarunity</title>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
	</head>

	<body>

		<?php include 'header.php'; ?>
		<div id="content">
			<?php
			if(isset($_GET['p']))
				include 'pages/'.$_GET['p'].'.php';
			else
				include 'pages/home.php'; ?>
		</div>
		<?php include 'footer.php'; ?>

	</body>

</html>