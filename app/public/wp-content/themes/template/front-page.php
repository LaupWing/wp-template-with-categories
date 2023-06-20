<?php 
   get_header()
?>
   <main>
      <div 
         style="background: url('<?php echo get_theme_file_uri("/images/placeholder_bg.jpg") ?>'); background-size: cover;"
         class="h-screen-minus-nav bg-main w-full flex"
      >
         <section class="container mx-auto flex-1 flex flex-col bg-main my-10 rounded shadow p-10">
            <div class="mb-4">
               <h2 class="text-2xl">Binnen 1 minuut uw project berekenen?</h2>
            </div>
            <div class="flex w-full gap-2">
               <div class="h-2 bg-accent-1 flex-1"></div>
               <div class="h-2 bg-gray-300 flex-1"></div>
               <div class="h-2 bg-gray-300 flex-1"></div>
               <div class="h-2 bg-gray-300 flex-1"></div>
               <div class="h-2 bg-gray-300 flex-1"></div>
               <div class="h-2 bg-gray-300 flex-1"></div>
               <div class="h-2 bg-gray-300 flex-1"></div>
            </div>
            <form 
               action=""
               class="p-4 flex-1 flex"
            >
               <div class="flex-1">

               </div>
            </form>
         </section>
      </div>
   </main>
<?php 
   get_footer()
?>