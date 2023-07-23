<?php 
   get_header()
?>
   <div class="min-h-screen-minus-nav flex flex-col">
      <div 
         style="background: url('<?php echo get_the_post_thumbnail_url() ?>'); background-size: cover;"
         class="h-[50vh] flex-shrink-0 flex items-center justify-center min-h-0"
      >
         <h2 class="text-3xl text-accent-2 font-bold bg-main/60 p-4 backdrop-blur rounded"><?php the_title() ?></h2>    
      </div>
      <div class="custom-container my-6">
         <?php the_content() ?>
      </div>
   </div>
<?php 
   get_footer()
?>