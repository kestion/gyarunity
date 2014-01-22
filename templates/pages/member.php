<?php 
//var_dump($members);
?>

<div class="breadcrumb">
	<a href='index.php' title="homepage">Homepage</a> >
	<a href='index.php?&p=members' title="members">Members</a> >
	<a class="active" href='#' title="<?php echo $_GET['p']; ?>"><?php echo $_GET['p']; ?></a>
</div> 

<?php foreach($members as $k) { 
	if($k['id'] == $_GET['id']){?>
	<div class="left">
		<h1><?php echo $k['pseudo']; ?></h1>
		<img src="assets/images/members/<?php echo $k['img']; ?>" alt="<?php echo $k['img']; ?>" />
		<ul>
			<li><?php echo $k['status']; ?></li>
			<li><a href="#" title="#"><?php echo $k['twitter']; ?></a></li>
			<li><a href="#" title="#"><?php echo $k['youtube']; ?></a></li>
			<li><a href="#" title="#"><?php echo $k['instagram']; ?></a></li>
			<li><a href="#" title="#"><?php echo $k['tumblr']; ?></a></li>
			<?php 
				$time=strtotime($k['date']);
				$month=date("F",$time);
				$year=date("Y",$time);
			?>
			<li><?php echo $month.' '.$year; ?></li>
			<li><?php echo $k['love']; ?></li>
			<li><?php echo $k['hate']; ?></li>
			<li><?php echo $k['model']; ?></li>
			<li><?php echo $k['style']; ?></li>
		</ul>
	</div>
	<div class="right">
		<h2 class="left"><?php echo $k['presentation']; ?></h2>
		<a href="<?php echo $k['id_gallery']; ?>" alt="gallery">
			<input type="button" class="right" value="gallery" name="gallery" />
		</a>
		<div class="clear"> </div>
		<p><?php echo $k['text']; ?></p>
	</div>
	<div class="clear"> </div>
<?php }} ?>

<div class="clear"> </div>