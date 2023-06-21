<?php 
   get_header()
?>
   <main>
      <div 
         style="background: url('<?php echo get_theme_file_uri("/images/placeholder_bg.jpg") ?>'); background-size: cover;"
         class="h-screen-minus-nav bg-main w-full flex"
      >
         <div class="container mx-auto flex" id="form-steps"></div>
      </div>
      <div class="bg-accent-1 w-full py-4">
         <div class="container text-center mx-auto text-main divide-x-2 divide-main/30 flex gap-2">
            <div class="flex-1 py-8">
               Hoogste kwaliteit, beste prijs
            </div>
            <div class="flex-1 py-8">
               Hoogste kwaliteit, beste prijs
            </div>
            <div class="flex-1 py-8">
               Hoogste kwaliteit, beste prijs
            </div>
            <div class="flex-1 py-8">
               Hoogste kwaliteit, beste prijs
            </div>
         </div>
      </div>
      <div class="h-screen-minus-nav bg-main flex">
         <div class="container grid gap-6 grid-cols-2 mx-auto pt-10">
            <div class="col-span-1">
               <h1 class="text-3xl text-accent-2 font-bold">
                  <?php the_title() ?>
               </h1>
               <div class="mt-8">
                  <?php the_content() ?>
               </div>
            </div>
            <div class="col-span-1 my-auto">
               <?php the_post_thumbnail(); ?>
            </div>
         </div>
      </div>
      <div class="flex flex-col">
         <div class="container mx-auto flex flex-col">
            <h2 class="text-3xl text-accent-2 font-bold">Recente werk</h2>
            <div class="mt-8 flex flex-col gap-y-10">
               <?php 
                  $counter = 1;
                  $homepagePosts = new WP_Query([
                     "posts_per_page" => 3,
                     "orderby" => "date",
                     "order" => "DESC"
                  ]);

                  while($homepagePosts->have_posts()){
                     $homepagePosts->the_post();
               ?>
                  <div class="grid grid-cols-2">
                     <?php if($counter%2 === 0) {?>
                        <div class="flex flex-col my-auto items-start">
                           <h2 class="text-2xl mb-2 border-b-4 border-accent-1">
                              <?php the_title() ?>
                           </h2>
                           <p>
                           <?php echo wp_trim_words(wp_strip_all_tags(get_the_content()), 50, "..."); ?>
                           </p>
                           <a class="text-xs mt-4 uppercase font-bold tracking-wider text-main px-2 py-1 bg-accent-2 rounded" href="<?php the_permalink() ?>">Lees Meer</a>
                        </div>
                        <div class="p-6">
                           <?php the_post_thumbnail(); ?>
                        </div>
                     <?php } else { ?>

                        <div class="p-6">
                           <?php the_post_thumbnail(); ?>
                        </div>
                        <div class="flex flex-col my-auto items-start">
                           <h2 class="text-2xl mb-2 border-b-4 border-accent-1">
                              <?php the_title() ?>
                           </h2>
                           <p>
                              <?php echo wp_trim_words(wp_strip_all_tags(get_the_content()), 50, "..."); ?>
                           </p>
                           <a class="text-xs mt-4 uppercase font-bold tracking-wider text-main px-2 py-1 bg-accent-2 rounded" href="<?php the_permalink() ?>">Lees Meer</a>
                        </div>
                     <?php } ?>
                  </div>
               <?php 
                  $counter++;
                  } wp_reset_postdata();
               ?>
            </div>
         </div>
      </div>
   </main>
<?php 
   get_footer()
?>