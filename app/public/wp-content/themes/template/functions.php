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



// Add custom metabox for questions
function add_question_metabox() {
   add_meta_box(
       'question_metabox',
       'Question Form Step',
       'render_question_metabox',
       'question_form_step',
       'normal',
       'high'
   );
}
add_action('add_meta_boxes', 'add_question_metabox');

// Render custom metabox for questions
function render_question_metabox($post) {
   // Retrieve existing questions
   $questions = get_post_meta($post->ID, 'questions', true);
   $questions = !empty($questions) ? $questions : array();

   // Display existing questions
   if (!empty($questions)) {
       foreach ($questions as $index => $question) {
           render_question_field($index, $question['question_text']);
       }
   }

   // Display "Add New Question" button
   echo '<button type="button" id="add-new-question">Add New Question</button>';

   // Hidden template for creating new questions
   echo '<div id="new-question-template" style="display: none;">';
   render_question_field('{index}', '');
   echo '</div>';

   // JavaScript for managing the dynamic creation of questions
   ?>
   <script>
       jQuery(document).ready(function($) {
           // Counter for question index
           var questionIndex = <?php echo count($questions); ?>;
            console.log("test")
           // Handle "Add New Question" button click event
           $('#add-new-question').on('click', function() {
               var template = $('#new-question-template').html();
               template = template.replace(/{index}/g, questionIndex);
               $('#question_metabox').append(template);
               questionIndex++;
           });
       });
   </script>
   <?php
}

// Render individual question fields
function render_question_field($index, $questionText) {
   ?>
   <div class="question">
       <label for="question-<?php echo $index; ?>">Question <?php echo $index + 1; ?></label>
       <input type="text" id="question-<?php echo $index; ?>" name="questions[<?php echo $index; ?>][question_text]" value="<?php echo esc_attr($questionText); ?>">
   </div>
   <?php
}

// Save questions when saving the custom post
function save_question_metabox($post_id) {
   if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
       return;
   }

   if (!isset($_POST['questions']) || !is_array($_POST['questions'])) {
       return;
   }

   // Sanitize and save questions
   $questions = array();
   foreach ($_POST['questions'] as $question) {
       $questionText = sanitize_text_field($question['question_text']);
       $questions[] = array('question_text' => $questionText);
   }
   update_post_meta($post_id, 'questions', $questions);
}
add_action('save_post_question_form_step', 'save_question_metabox');
