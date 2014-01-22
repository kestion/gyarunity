<?php 
//var_dump($menu);
?>

<div id="welcome">
	<h1><?php echo $description[0]['welcome']; ?></h1>
	<p><?php echo $description[0]['message']; ?></p>
</div>

<?php foreach($menu as $k) { ?>
<a href="index.php?&p=<?php echo $k['label']; ?>" title="<?php echo $k['label']; ?>">
	<div class="categories left" style="background-image:url('assets/images/<?php echo $k['img']; ?>');">
		<h2><?php echo $k['label']; ?></h2>
	</div>
</a>
<?php } ?>
 
<div class="clear"> </div>
