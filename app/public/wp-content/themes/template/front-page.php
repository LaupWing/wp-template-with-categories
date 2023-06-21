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
         <div class="container grid grid-cols-2 mx-auto pt-10">
            <div class="col-span-1">
               <h1 class="text-4xl">
                  <?php the_title() ?>
               </h1>
            </div>
            <div class="col-span-1 my-auto">
               <?php the_post_thumbnail(); ?>
            </div>
         </div>
      </div>
   </main>
<?php 
   get_footer()
?>