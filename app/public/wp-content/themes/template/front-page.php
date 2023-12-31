<?php 
   get_header()
?>
   <main class="bg-accent-1/10">
      <div class="fixed bottom-3 text-white flex justify-center items-center w-12 h-12 rounded-full left-3 bg-accent-1 z-[100] shadow">
         <a href="tel:+31640719058">
            <?php get_template_part(
               "templates/icons/whatsapp",
               null,
               array(
                  "custom_class" => "w-7 h-7 fill-current"
               )
            ) ?>
         </a>
      </div>
      <div 
         style="background: url('<?php echo get_theme_file_uri("/images/placeholder_bg.jpg") ?>'); background-size: cover;"
         class="min-h-screen-minus-nav bg-main w-full flex px-4"
      >
         <div class="container mx-auto flex" id="form-steps"></div>
      </div>
      <div class="bg-accent-1 w-full">
         <div class="container flex-col sm:flex-row text-center mx-auto text-main divide-y-2 sm:divide-y-0 sm:divide-x-2 divide-main/30 flex">
            <div class="flex-1 flex items-center justify-center py-4 sm:py-8">
               Hoogste kwaliteit, beste prijs
               <?php get_template_part(
                  "templates/icons/ribbon",
                  null,
                  array(
                     "custom_class" => "ml-2 w-5 h-5 fill-current"
                  )
               ) ?>
            </div>
            <div class="flex-1 flex items-center justify-center py-4 sm:py-8">
               Vakmanschap Gegarandeerd
               <?php get_template_part(
                  "templates/icons/checkmarkCircle",
                  null,
                  array(
                     "custom_class" => "ml-2 w-5 h-5 fill-current"
                  )
               ) ?>
            </div>
            <div class="flex-1 flex items-center justify-center py-4 sm:py-8">
               Kies Voor Perfectie
               <?php get_template_part(
                  "templates/icons/star",
                  null,
                  array(
                     "custom_class" => "ml-2 w-5 h-5 fill-current"
                  )
               ) ?>
            </div>
            <div class="flex-1 flex items-center justify-center py-4 sm:py-8">
               Oog voor Detail 
               <?php get_template_part(
                  "templates/icons/eye",
                  null,
                  array(
                     "custom_class" => "ml-2 w-5 h-5 fill-current"
                  )
               ) ?>
            </div>
         </div>
      </div>
      
      <div class="flex flex-col py-10 bg-main">
         <div class="custom-container flex flex-col">
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
                  <div class="grid grid-cols-2 relative">
                     <?php if($counter%2 === 0) {?>
                        <div class="flex flex-col my-auto items-start z-50 bg-main/80 backdrop-blur rounded sm:shadow-none shadow p-2 sm:p-0">
                           <h2 class="sm:text-2xl text-xl mb-2 border-b-4 border-accent-1">
                              <?php the_title() ?>
                           </h2>
                           <p class="text-xs sm:text-base">
                              <?php echo wp_trim_words(wp_strip_all_tags(get_the_content()), 50, "..."); ?>
                           </p>
                           <a 
                              class="text-xs mt-4 uppercase font-bold tracking-wider text-main px-2 py-1 bg-accent-2 rounded" 
                              href="<?php the_permalink() ?>"
                           >
                              Lees Meer
                           </a>
                        </div>
                        <div class="m-6 sm:relative absolute right-0 w-2/3">
                           <?php the_post_thumbnail(); ?>
                           <span class="absolute bottom-2 sm:left-2 sm:right-auto right-2 bg-main/70 backdrop-blur-sm text-accent-2 px-2 uppercase text-sm rounded font-bold">
                              <?php echo get_the_date() ?>
                           </span>
                        </div>
                     <?php } else { ?>
                        <div class="sm:hidden"></div>
                        <div class="m-6 sm:relative absolute left-0 w-2/3 max-h-[80%] overflow-hidden">
                           <?php the_post_thumbnail(); ?>
                           <span class="absolute bottom-2 sm:right-2 sm:left-auto left-2 bg-main/70 backdrop-blur-sm text-accent-2 px-2 uppercase text-sm rounded font-bold">
                              <?php echo get_the_date() ?>
                           </span>
                        </div>
                        <div class="flex flex-col my-auto items-start z-50 bg-main/80 backdrop-blur rounded sm:shadow-none shadow p-2 sm:p-0">
                           <h2 class="sm:text-2xl text-xl mb-2 border-b-4 border-accent-1">
                              <?php the_title() ?>
                           </h2>
                           <p class="text-xs sm:text-base">
                              <?php echo wp_trim_words(wp_strip_all_tags(get_the_content()), 50, "..."); ?>
                           </p>
                           <a 
                              class="text-xs mt-4 uppercase font-bold tracking-wider text-main px-2 py-1 bg-accent-2 rounded" 
                              href="<?php the_permalink() ?>"
                           >
                              Lees Meer
                           </a>
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
      <div class="min-h-screen-minus-nav flex">
         <div class="custom-container grid gap-6 grid-cols-2 pt-10">
            <div class="sm:col-span-1 col-span-2">
               <h1 class="text-3xl text-accent-2 font-bold">
                  <?php the_title() ?>
               </h1>
               <div class="mt-8">
                  <?php the_content() ?>
               </div>
            </div>
            <div class="col-span-2 sm:col-span-1 my-auto">
               <?php the_post_thumbnail(); ?>
            </div>
         </div>
      </div>
<?php 
   get_footer()
?>