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

function addMetaBoxes(){
   add_meta_box(
      "question_metabox",
      "Question Form Step",
      "renderQuestionMetabox",
      "question_form_step",
      "normal",
      "high"
   );
}

function renderQuestionMetabox($post) {
   $questions = get_post_meta($post->ID, "questions", true);
   $questions = !empty($questions) ? $questions : array();
   print_r($questions);

   echo "<button type='button' id='add-new-question'>Add New Question</button>";

   // Hidden template for creating new questions
   echo "<div id='new-question-template' style='display: none;'>";
   render_question_field("{index}", "");
   echo "</div>";
   ?>
   <script>
      document.addEventListener("DOMContentLoaded", () => {
         document.querySelector("#add-new-question").addEventListener("click", () => {
            let template = document.querySelector("#new-question-template").innerHTML
            template = template.replace(/{index}/g, <?php  echo count($questions); ?> ) 
            document.querySelector("#question_metabox").insertAdjacentHTML("beforeend", template)
         })
      })
   </script>
   <?php
}

function render_question_field($index, $questionText) {
   ?>
      <div class="question">
         <label for="question-<?php echo $index; ?>">Question <?php echo is_string($index) ? $index : $index  + 1; ?></label>
         <input type="text" id="question-<?php echo $index; ?>" name="questions[<?php echo $index; ?>][question_text]" value="<?php echo esc_attr($questionText); ?>">
      </div>
   <?php
}

add_action("add_meta_boxes", "addMetaBoxes");


