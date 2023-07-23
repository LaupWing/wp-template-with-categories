      </main>
      <footer class="py-16 bg-accent-1 mt-auto">
         <div class="custom-container flex flex-col gap-1 sm:flex-row justify-between text-main text-2xl">
            <p class="font-bold text-main/40">Geïnteresseerd?</p>
            <a 
               class="text-main uppercase flex items-center gap-2 text-sm font-bold tracking-wider" 
               href="tel: 0851300479"
            >
               contacteer ons 
               <?php get_template_part(
                  "templates/icons/arrowRightCircle",
                  null,
                  array(
                     "custom_class" => "mr-4 w-5 h-5 fill-current"
                  )
               ) ?>
            </a>
         </div>
         <div class="custom-container flex flex-col gap-10 sm:flex-row justify-between text-main mt-10">
            <nav class="flex flex-col">
               <h2 class="font-bold text-xl mb-4">Menu</h2>
               <?php
                  wp_nav_menu([
                     "theme_location" => "headerMenuLocation"
                  ]);
               ?>
            </nav>
            <div id="socials"></div>
         </div>
      </footer>
      <?php wp_footer(); ?>
   </body>
</html>