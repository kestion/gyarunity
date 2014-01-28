<?php 
//var_dump($members);
?>

<div class="breadcrumb">
	<a href='index.php' title="homepage">Homepage</a> >
	<a class="active" href='#' title="<?php echo $_GET['p']; ?>"><?php echo $_GET['p']; ?></a>
</div> 

<?php foreach($members as $k) { 
	if($k['type'] == "N"){?>
<a class="member left" href="index.php?&p=member&id=<?php echo $k['id']; ?>" title="<?php echo $k['pseudo']; ?>">
	<div class="members" style="background-image:url('assets/images/members/<?php echo $k['img']; ?>');">	</div>
	<h2><?php echo $k['pseudo']; ?></h2>
	<?php 
		$time=strtotime($k['date']);
		$month=date("F",$time);
		$year=date("Y",$time);
	?>
	<h3>Member since <?php echo $month.' '.$year; ?></h3>
</a>
<?php }} ?>

<div class="clear"> </div>