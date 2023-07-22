<!DOCTYPE html>
<html <?php language_attributes() ?>>
<head>
   <meta charset="<?php bloginfo("charset") ?>">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <?php wp_head() ?>
</head>
<body <?php body_class() ?>>
   <header class="items-center h-nav bg-main flex sticky top-0 z-[100]">
      <div class="container flex justify-between items-center mx-auto">
         <h1 class="font-bold mr-8 text-xl font-cursive">
            <a href="<?php echo home_url() ?>">
               <img 
                  src="<?php echo get_theme_file_uri("/images/logo.png") ?>" 
                  alt="logo"
                  class="w-56"
               >
            </a>
         </h1>
         <div id="menu" class="flex sm:hidden">
            <?php get_template_part(
               "templates/icons/bars",
               null,
               array(
                  "custom_class" => "mr-4 w-6 h-6"
               )
            ) ?>
         </div>
         <div class="sm:flex items-center hidden">
            <nav id="desktop">
               <?php
                  wp_nav_menu([
                     "theme_location" => "headerMenuLocation"
                  ]);
               ?>
            </nav>
         </div>
      </div>
   </header>
   <nav 
      id="mobile" 
      class="fixed inset-0 p-6 sm:hidden bg-main z-[100] duration-300"
      data-open="false"
      style="transform: translateX(-100%);"
   >
      <header class="flex items-center justify-between">
         <h1 class="font-bold mr-8 text-xl font-cursive">
            <img 
               src="<?php echo get_theme_file_uri("/images/logo.png") ?>" 
               alt="logo"
               class="w-44"
            >
         </h1>
         <div id="close">
            <?php get_template_part(
               "templates/icons/close",
               null,
               array(
                  "custom_class" => "mr-4 w-6 h-6"
               )
            ) ?>
         </div>
      </header>
      <?php
         wp_nav_menu([
            "theme_location" => "headerMenuLocation"
         ]);
      ?>
   </nav>
   <main>