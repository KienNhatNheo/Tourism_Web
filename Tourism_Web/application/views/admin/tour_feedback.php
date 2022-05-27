<div style="margin-left: 10%;margin-top: 15px;"><a  href="javascript:history.go(-1)"><button style="background-color: green;color: white;">Quay lại</button></a></div>
<div style="display: flex;justify-content: center;">
	
	<div>
	<h1><?php
	foreach($tour_feedback as $item){
		echo 'Đánh giá về tour : '.$item->tour_name.'<br>';
	}
	?></h1>
	<table style="margin-top: 40px; border-collapse: collapse;" border="1">
	<tr style="padding:5px">
		<th style="padding:5px">Tên Người Dùng</th>
		<th style="padding:5px">Họ Tên</th>
		<th style="padding:5px">Số điểm đánh giá</th>
		<th style="padding:5px">Đánh giá</th>
	</tr>
	<?php
	foreach($tour_feedback as $item){
		echo '
			<tr>
				<td style="padding:5px">'.$item->username.'</td>
				<td style="padding:5px">'.$item->fullname.'</td>
				<td style="padding:5px">'.$item->rating.'</td>
				<td style="padding:5px">'.$item->feedback.'</td>
			</tr>';
	}
	?>
</table>
</div>
</div>
