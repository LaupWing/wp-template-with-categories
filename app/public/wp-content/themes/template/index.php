<?php 
   get_header()
?>
   <div class="min-h-screen-minus-nav flex flex-col bg-accent-1/10 py-6">
      <div class="container mx-auto flex flex-col flex-1">
         <h2 class="text-3xl text-accent-2 font-bold">Portfolio</h2>    
         <div class="grid grid-cols-2 gap-4 my-6">
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
                  <div class="px-4 py-2 flex flex-col">
                     <h2 class="font-bold text-accent-1"><?php the_title() ?></h2>
                     <p class="text-sm">
                        <?php echo wp_trim_words(wp_strip_all_tags(get_the_content()), 20, "..."); ?>
                     </p>
                     <a 
                        href="<?php the_permalink() ?>"
                        class="text-xs uppercase font-bold bg-accent-2 py-1 px-3 rounded text-main mt-6 mr-auto"
                     >
                        Lees Meer
                     </a>
                  </div>
               </div>
            <?php
               }
            ?>
         </div>
         <div class="mt-auto">
            <?php echo paginate_links(); ?>
         </div>
      </div>
   </div>
<?php 
   get_footer()
?> 