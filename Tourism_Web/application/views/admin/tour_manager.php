<div>
	<table style="margin-top: 40px; border-collapse: collapse;" border="1">
	<tr style="padding:5px">
		<th style="padding:5px">Tên Tour</th>
		<th style="padding:5px">Tuyến Đường</th>
		<th style="padding:5px">Giá cả</th>
		<th style="padding:5px">Chi Tiết</th>
		<th style="padding:5px">Độ Dài Tour</th>
		<th style="padding:5px">Loại Tour</th>
		<th style="padding:5px">Ngày Bắt Đầu</th>
		<th style="padding:5px">Ẩn/Hiện</th>
		<th style="padding:5px">Xem phản hồi</th>

	</tr>
	<?php
	foreach($tour_info as $item){
		if($item->tour_display == 1){
			echo '
			<tr>
				<td style="padding:5px">'.$item->tour_name.'</td>
				<td style="padding:5px">'.$item->tour_route.'</td>
				<td style="padding:5px">'.$item->tour_price.'VNĐ</td>
				<td style="padding:5px">'.$item->tour_detail.'</td>
				<td style="padding:5px">'.$item->tour_length.'</td>
				<td style="padding:5px">'.$item->tour_type.'</td>
				<td style="padding:5px">'.$item->tour_startday.'</td>
				<td style="padding:5px"><a style="text-decoration:none" href= "../admin_controller/tour_disable/'.$item->tour_id.'">Ẩn</a></td>
				<td style="padding:5px"><a style="text-decoration:none" href= "../admin_controller/tour_feedback/'.$item->tour_id.'">Xem</a></td>
			</tr>';
		}
		if($item->tour_display == 0){
			echo '
			<tr>
				<td style="padding:5px">'.$item->tour_name.'</td>
				<td style="padding:5px">'.$item->tour_route.'</td>
				<td style="padding:5px">'.$item->tour_price.'VNĐ</td>
				<td style="padding:5px">'.$item->tour_detail.'</td>
				<td style="padding:5px">'.$item->tour_length.'</td>
				<td style="padding:5px">'.$item->tour_type.'</td>
				<td style="padding:5px">'.$item->tour_startday.'</td>
				<td style="padding:5px"><a style="text-decoration:none" href= "../admin_controller/tour_active/'.$item->tour_id.'">Hiện</a></td>
				<td style="padding:5px"><a style="text-decoration:none" href= "../admin_controller/tour_feedback/'.$item->tour_id.'">Xem</a></td>
			</tr>';
		}
	}
	?>
</table>
</div>
