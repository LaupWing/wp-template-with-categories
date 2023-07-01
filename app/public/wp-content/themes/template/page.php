<?php 
   get_header()
?>
   <div class="min-h-screen-minus-nav flex flex-col">
      <div 
         style="background: url('<?php echo get_the_post_thumbnail_url() ?>'); background-size: cover;"
         class="h-full bg-orange-50 flex-1 max-h-[300px] flex items-center justify-center"
      >
         <h2 class="text-3xl text-accent-2 font-bold bg-main/60 p-4 backdrop-blur rounded"><?php the_title() ?></h2>    
      </div>
      <div class="container px-4 mx-auto mt-6">
         <?php the_content() ?>
      </div>
   </div>
<?php 
   get_footer()
?>