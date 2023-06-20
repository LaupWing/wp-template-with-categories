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
               <h2 class="text-3xl">Binnen 1 minuut uw project berekenen?</h2>
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
               class="p-4 pt-6 flex-1 flex flex-col"
            >
               <div class="flex flex-1">
                  <div class="flex-1 flex items-center flex-col">
                     <h3 class="text-2xl">Betreft het nieuwbouw of een renovatie woning?</h3>
                     <div class="flex-1 flex mt-6 gap-2">
                        <div class="w-48 h-48 bg-accent-1/10 border-[4px] border-accent-1 flex flex-col items-center justify-center">
                           <img 
                              src="<?php echo get_theme_file_uri("/images/placeholder_image.png") ?>" 
                              alt="Nieuwbouw"
                              class="w-full"
                           >
                           <p class="text-lg">Nieuwbouw</p>
                        </div>
                        <div class="w-48 h-48 bg-gray-100 border-[4px] border-gray-200 flex flex-col items-center justify-center opacity-50">
                           <img 
                              src="<?php echo get_theme_file_uri("/images/placeholder_image.png") ?>" 
                              alt="Nieuwbouw"
                              class="w-full"
                           >
                           <p class="text-lg">Nieuwbouw</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="mt-auto mx-auto flex gap-2">
                  <button class="w-24 py-1 ml-4 font-bold rounded border-2 text-accent-2 border-accent-2">
                     Vorige
                  </button>
                  <button class="w-24 py-1 ml-4 font-bold rounded bg-accent-2 text-main">
                     Volgende
                  </button>
               </div>
            </form>
         </section>
      </div>
   </main>
<?php 
   get_footer()
?>