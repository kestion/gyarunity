<?php 
//var_dump($gallery_link);
//var_dump($images);
?>

<div class="breadcrumb">
	<a href='index.php' title="homepage">Homepage</a> >
	<a class="active" href='#' title="<?php echo $_GET['p']; ?>"><?php echo $_GET['p']; ?></a>
</div> 

<?php foreach($gallery_link as $k){
	if($k['gallery_id'] == $_GET['id']){
		foreach($images as $v){
			if($v['id'] == $k['image_id']){ ?>

				<img src="assets/images/img/<?php echo $v['path']; ?>" />
<?php }}}} ?>

<div class="clear"> </div>