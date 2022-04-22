<div style="display: flex;justify-content: center;">
	<table style="margin-top: 40px; border-collapse: collapse;" border="1">
	<tr style="padding:5px">
		<th style="padding:5px">Tên Người Dùng</th>
		<th style="padding:5px">Họ Tên</th>
		<th style="padding:5px">Email</th>
		<th style="padding:5px">Số Điện Thoại</th>
		<th style="padding:5px">Tên Chuyến đi</th>
		<th style="padding:5px">Lộ trình</th>
		<th style="padding:5px">Thời gian xuất phát</th>
		<th style="padding:5px">Thời gian đăng ký</th>
	</tr>
	<?php
	foreach($history as $item){
		echo '
			<tr>
				<td style="padding:5px">'.$item->username.'</td>
				<td style="padding:5px">'.$item->fullname.'</td>
				<td style="padding:5px">'.$item->email.'</td>
				<td style="padding:5px">'.$item->phone.'</td>
				<td style="padding:5px">'.$item->tour_name.'</td>
				<td style="padding:5px">'.$item->tour_route.'</td>
				<td style="padding:5px">'.$item->tour_startday.'</td>
				<td style="padding:5px">'.$item->order_time.'</td>
			</tr>';
	}
	?>
</table>
</div>
