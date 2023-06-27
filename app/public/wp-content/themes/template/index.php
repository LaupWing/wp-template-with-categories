<?php 
   get_header()
?>
   <div class="min-h-screen-minus-nav bg-accent-1/10 py-6">
      <div class="container mx-auto">
         <h2 class="text-3xl text-accent-2 font-bold">Portfolio</h2>    
         <div class="grid grid-cols-2 gap-4 mt-6">
            <?php 
               while(have_posts()){
                  the_post();
            ?>
               <div class="shadow bg-main flex flex-col">
                  <img 
                     class="aspect-video object-cover"
                     src="<?php echo get_the_post_thumbnail_url() ?>" 
                     alt=""
                  >
                  <div class="px-4 py-2">
                     <h2 class="font-bold text-accent-1"><?php the_title() ?></h2>
                  </div>
               </div>
            <?php
               }
            ?>
         </div>
      </div>
   </div>
<?php 
   get_footer()
?> 