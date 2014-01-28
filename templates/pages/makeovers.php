<?php 
//var_dump($makeovers);
?>

<div class="breadcrumb">
	<a href='index.php' title="homepage">Homepage</a> >
	<a class="active" href='#' title="<?php echo $_GET['p']; ?>"><?php echo $_GET['p']; ?></a>
</div>

<?php foreach($makeovers as $k){?>
	<?php foreach($members as $v){ 
		if($v['id'] == $k['id_member_changed']){ ?>
			<a href="index.php?&p=makeover&id=<?php echo $k['id']; ?>" title="<?php echo $v['pseudo']; ?>">
				<div class="categories" style="background-image:url('assets/images/makeovers/<?php echo $k['after']; ?>');">
					<h2><?php echo $v['pseudo']; ?></h2>
				</div>
			</a>
			<div class="clear"> </div>
<?php }}} ?>

<div class="clear"> </div>