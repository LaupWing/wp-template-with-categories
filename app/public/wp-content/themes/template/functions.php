<?php

function loadAssets(){
   wp_enqueue_style("mainStyle", get_theme_file_uri("/build/index.css"));
}

add_action("wp_enqueue_scripts", "loadAssets");

function addSupport(){
   register_nav_menu("headerMenuLocation", "Header Menu Location");
   add_theme_support("title-tag");
   add_theme_support("post-thumbnails");
}

add_action("after_setup_theme", "addSupport");


function generatePosts() {
   $categories = array(3, 4, 5, 6);
   $post_count = wp_count_posts()->publish;

   if($post_count === 0){
      for ($i = 1; $i <= 20; $i++){
         $post_title = "Dummy Post {$i}";
         $post_content = "This is the content of Dummy Post {$i}";
         $post_status = "publish";
         $post_category = array($categories[array_rand($categories)]);
         
         $new_post = array(
            "post_title" => $post_title,
            "post_content" => $post_content,
            "post_status" => $post_status,
            "post_category" => $post_category
         );
   
         wp_insert_post($new_post);
         
      }
   }
}

function initialize() {
   registerPostTypes();
}

function registerPostTypes() {
   register_post_type("question_form_step", 
      array(
         "labels" => array(
            "name" => "Question Form Steps",
            "singular_name" => "Question Form Step"
         ),
         "public" => true,
         "has_archive" => false,
         "supports" => array("title", "editor")
      )
   );
}

add_action("init", "initialize");


