<?php 
   get_header()
?>
   <div class="min-h-screen-minus-nav bg-accent-1/40">
      <div class="container mx-auto pt-10">
         <h2 class="text-3xl text-accent-1 font-bold">Onze diensten</h2>
         <ul class="mt-6 grid grid-cols-3 gap-10">
            <?php 
               $query = new WP_Query(array(
                  "post_type" => "page",
                  "post_status" => "publish",
                  "posts_per_page" => -1,
                  "post_parent" => 9
               ));

               if($query->have_posts()) {
                  while($query->have_posts()){
                     $query->the_post();
            ?>
               <li class="bg-main aspect-[4/6] rounded-md p-6 flex flex-col">
                  <img 
                     src="<?php echo get_the_post_thumbnail_url() ?>" 
                     alt="<?php the_title() ?> foto"
                     class="aspect-square object-cover"
                  >
                  <h3 class="text-accent-1 mt-2 font-bold">
                     <?php the_title() ?>
                  </h3>
                  <p class="text-xs">
                     <?php echo wp_trim_words(wp_strip_all_tags(get_the_content()), 20, "..."); ?>
                  </p>

                  <a 
                     href="<?php the_permalink() ?>"
                     class="text-xs uppercase font-bold mt-auto bg-accent-2 py-1 px-3 rounded text-main mr-auto"
                  >
                     Lees Meer
                  </a>
               </li>
            <?php
                  }
               }
            ?>
         </ul>
      </div>
   </div>
<?php 
   get_footer()
?>