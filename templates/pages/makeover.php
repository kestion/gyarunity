<?php 
//var_dump($makeovers);
?>

<div class="breadcrumb">
	<a href='index.php' title="homepage">Homepage</a> >
	<a href='index.php?&p=makeovers' title="makeovers">Makeovers</a> >
<?php foreach($makeovers as $k){
if($k['id'] == $_GET['id']){
 	foreach($members as $v){ 
		if($v['id'] == $k['id_member_changed'])
			$newbie = $v['pseudo'];
		if($v['id'] == $k['id_member'])
			$oldie = $v['pseudo'];
	}
 ?>
	<a class="active" href='#' title="<?php echo $_GET['p']; ?>"><?php echo $newbie; ?></a>
</div>
	<img class="left" src="assets/images/makeovers/<?php echo $k['before']; ?>" alt="<?php echo $k['before']; ?>" />
	<p class="left"> >>> </p>
	<img class="left" src="assets/images/makeovers/<?php echo $k['after']; ?>" alt="<?php echo $k['after']; ?>" />
	<div class="clear"> </div>
	<p><?php echo $k['text']; ?></p>
	<a href="index.php?&p=gallery&id=<?php echo $k['id_gallery']; ?>" class="button left" alt="gallery">Gallery</a>
	<p class="right"><?php echo $oldie; ?></p>
	<div class="clear"> </div>
<?php }} ?>

<div class="clear"> </div>