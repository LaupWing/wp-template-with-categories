<?php 
   get_header()
?>
   <div 
      style="background: url('<?php echo get_the_post_thumbnail_url() ?>'); background-size: cover;"
      class="h-[50vh] bg-main w-full flex"
   >
      <div class="container mx-auto flex items-center justify-center">
         <h2 class="text-2xl backdrop-blur bg-main/60 font-bold px-2 py-1 rounded text-accent-2"><?php the_title() ?></h2>
      </div>
   </div>
<?php 
   get_footer()
?>