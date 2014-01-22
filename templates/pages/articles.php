<?php 
//var_dump($articles);
//var_dump($tags);
?>

<div class="breadcrumb">
	<a href='index.php' title="homepage">Homepage</a> >
	<a href='#' title="<?php echo $_GET['p']; ?>"><?php echo $_GET['p']; ?></a>
</div>

<?php foreach($articles as $k){ ?>
	<img class="left" src="assets/images/articles/<?php echo $k['caption']; ?>" alt="<?php echo $k['caption']; ?>" />
	<div class="articles">
		<h2>
			<?php echo $k['title']; ?>
			<span class="author">
				<?php foreach($members as $v){
					if($v['id'] == $k['id_member'])
						echo 'By '.$v['pseudo'];
				} ?>
			</span>
		</h2>
		<p><?php echo $k['text']; ?></p>
		<p class="moar">En savoir +</p>
	</div>
	<div class="clear"> </div>
<?php } ?>

<div class="clear"> </div>