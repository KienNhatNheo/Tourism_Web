<div style="display: flex;justify-content: center;"> 
	<table style="margin-top: 40px; border-collapse: collapse;" border="1">
	<tr style="padding:5px">
		<th style="padding:5px">Tên Tài Khoản</th>
		<th style="padding:5px">Tên Người Dùng</th>
		<th style="padding:5px">Email</th>
		<th style="padding:5px">Số Điện Thoại</th>
		<th style="padding:5px">Khóa/Kích Hoạt</th>

	</tr>
	<?php
	foreach($user_info as $item){
		if($item->user_enable == 1){
			echo '
			<tr>
				<td style="padding:5px">'.$item->username.'</td>
				<td style="padding:5px">'.$item->fullname.'</td>
				<td style="padding:5px">'.$item->email.'VNĐ</td>
				<td style="padding:5px">'.$item->phone.'</td>
				<td style="padding:5px"><a style="text-decoration:none" href= "../admin_controller/user_disable/'.$item->user_id.'">Khóa</a></td>
			</tr>';
		}
		if($item->user_enable == 0){
			echo '
			<tr>
				<td style="padding:5px">'.$item->username.'</td>
				<td style="padding:5px">'.$item->fullname.'</td>
				<td style="padding:5px">'.$item->email.'VNĐ</td>
				<td style="padding:5px">'.$item->phone.'</td>
				<td style="padding:5px"><a style="text-decoration:none" href= "../admin_controller/user_enable/'.$item->user_id.'">Kích hoạt</a></td>
			</tr>';
		}
	}
	?>
</table>
</div>
