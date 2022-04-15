<div>
	<table style="margin-left: 12.5%;margin-top: 1rem;margin-bottom: 1rem">
	<?php 
	foreach($cmt as $item){
		echo'
			<tr>
				<th>'.$item->username.'</th>
				<td>&ensp;&ensp;'.$item->comment.'</td>
			</tr>
		';	
	}
	?>
	</table>
</div>
<style type="text/css">
	th {
		margin-right: 1rem;
	} 
</style>
<?php include_once('footer.php'); ?>
