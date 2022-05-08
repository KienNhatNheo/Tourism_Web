<?php 
	if($result == 1){
		echo '<h2 style="text-align: center;margin-top:40px">Bạn đã thêm tour thành công!</h2>';
	} else {
		echo '<h2 style="text-align: center;margin-top:40px">Bạn đã thêm tour thất bại!</h2>';
	}
?>
<a href="javascript:history.go(-1)" style="margin-left: 15%;margin-top: 15px;"><button style="border-radius: 5px;background-color: green;color: white;padding: 5px 10px;width: 150px;">◀ Quay lại</button></a>