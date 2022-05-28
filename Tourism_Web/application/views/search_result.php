<head>
    <title>Tourism_Web</title>
</head>
<div style="margin-left: 12.5%;margin-bottom: 3rem;margin-top: 2rem; display: flex;">
   <div class="container">
      <div class="row featured__filter">
        <?php 
         if($place == NULL){
            
             echo '<h3 style="color:blue">Không có kết quả nào!</h3>'; 
         } else {
            
            foreach($place as $item){
              if($item->tour_display == 1){
               echo'<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                  <div class="featured__item">
                  <div style="background-color:rgb(216,216,216); padding-bottom:10px; border:1px gray solid;">
                      <div class="featured__item__pic set-bg">
                          <img style="height:250px; border-bottom:1px gray solid;" src='.$item->tour_image.'>
                        
                      </div>
                      <div class="featured__item__text">
                          <h6><b><a href="../user_controller/tour_detail/'.$item->tour_id.'">'.$item->tour_name.'</a></b></h6>
                          <h5 style="color:red">'.$item->tour_price.' VNĐ</h5>
                          <h5>Đánh giá: '.round($item->tour_rate,1).'/5</h5>
                      </div>
                  </div>    
                  </div>
               </div>';
              }
            }
         }
         error_reporting(0);
         ?>
      </div>
   </div>
</div>
<?php include_once('footer.php'); ?>