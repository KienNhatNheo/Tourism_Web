<div style="margin-left: 12.5%;margin-bottom: 3rem;margin-top: 2rem;">
	 <table border="1" style="width:500px;background-color: rgb(216, 216, 216);">
                    <tr>
                        <th style="padding:10px">Tên chuyến đi</th>
                        <th style="padding:10px">Thời gian bắt đầu</th>
                        <th style="padding:10px">Lộ trình</th>
                        <th style="padding:10px"></th>
                    </tr>
                    <?php foreach($place as $item){ ?>
                    <tr>
                       <td style="padding:10px"><?php echo $item->tour_name; ?></td>
                       <td style="padding:10px"><?php echo $item->tour_startday;?></td>
                       <td style="padding:10px"><?php echo $item->tour_route;?></td>
                       <td style="padding:10px"><a href="../user_controller/tour_detail/<?php echo $item->tour_id;?>">Xem chi tiết</a></td>
                    </tr>
                    <?php } 
        error_reporting(0);
       ?> 
                </table>
</div>
<?php include_once('footer.php'); ?>