<?php 
//var_dump($members);
?>

<div class="breadcrumb">
	<a href='index.php' title="homepage">Homepage</a> >
	<a href='index.php?&p=members' title="members">Members</a> >
	<a class="active" href='#' title="<?php echo $_GET['p']; ?>"><?php echo $_GET['p']; ?></a>
</div> 

<div id="member">
	<?php foreach($members as $k) { 
		if($k['id'] == $_GET['id']){?>
		<div class="left">
			<h1><?php echo $k['pseudo']; ?></h1>
			<img src="assets/images/members/<?php echo $k['img']; ?>" alt="<?php echo $k['img']; ?>" />
			<ul>
				<li><?php echo $k['status']; ?></li>
				<li>&nbsp;</li>
				<li><a href="#" title="#"><?php echo $k['social']; ?></a></li>
				<li>&nbsp;</li>
				<?php 
					$time=strtotime($k['date']);
					$month=date("F",$time);
					$year=date("Y",$time);
				?>
				<li><?php echo $month.' '.$year; ?></li>
				<li>&nbsp;</li>
				<li><?php echo $k['love']; ?></li>
				<li><?php echo $k['hate']; ?></li>
				<li><?php echo $k['style']; ?></li>
				<li><?php echo $k['astro']; ?></li>
			</ul>
		</div>
		<div class="right">
			<h2 class="left"><?php echo $k['presentation']; ?></h2>
			<a href="index.php?p=gallery&id=<?php echo $k['id_gallery']; ?>" class="button right" alt="gallery">Gallery</a>
			<div class="clear"> </div>
			<p><?php echo $k['description']; ?></p>
		</div>
		<div class="clear"> </div>
	<?php }} ?>
</div>
<div class="clear"> </div>