<div style="margin-left: 350px;">
	<table style="margin-top: 40px; border-collapse: collapse;width: 50%;" border="1">
	<tr style="padding:5px">
		<th style="padding:5px">Tên Người Dùng</th>
		<th style="padding:5px">Họ Tên</th>
		<th style="padding:5px">Đóng góp</th>
		<th style="padding:5px">Thời gian đóng góp</th>
	</tr>
	<?php
	foreach($contribution as $item){
		echo '
			<tr>
				<td style="padding:5px">'.$item->username.'</td>
				<td style="padding:5px">'.$item->fullname.'</td>
				<td style="padding:5px">'.$item->content.'</td>
				<td style="padding:5px">'.$item->content_time.'</td>
			</tr>';
	}
	?>
</table>
</div>
