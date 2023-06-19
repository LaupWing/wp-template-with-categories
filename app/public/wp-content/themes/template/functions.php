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
   
   print_r($questions[0]["options"]);
   ?>
      <div>
         <select name="type" id="type">
            <option value="text">Text</option>
            <option value="checkbox">Checkbox</option>
         </select>
         <button type='button' id='add-new-question'>Add New Question</button>
      </div>
   <?php

   // Hidden template for creating new questions
   echo "<div id='new-question-template' style='display: none;'>";
   render_question_field("{index}", "");
   echo "</div>";

   echo "<div id='new-question-checkbox-template' style='display: none;'>";
   render_question_checkbox_field("{index}", "");
   echo "</div>";
   ?>
   <script>
      document.addEventListener("DOMContentLoaded", () => {
         document.querySelector("#add-new-question").addEventListener("click", () => {
            const questionCount = document.querySelectorAll("#question_metabox > .question").length
            
            const choice = document.querySelector("#type").value
            if (choice === "text") {
               let template = document.querySelector("#new-question-template").innerHTML
               template = template.replace(/{index}/g, questionCount)
               document.querySelector("#question_metabox").insertAdjacentHTML("beforeend", template)
            }
            if (choice === "checkbox") {
               const wrapper = document.createElement("div")
               let template = document.querySelector("#new-question-checkbox-template").innerHTML
               template = template.replace(/{index}/g, questionCount) 
               wrapper.innerHTML = template
               
               wrapper.firstElementChild.querySelector("button.add").addEventListener("click", (e) => {
                  const container = e.target.closest(".question") 
            
                  const value = container.querySelector(".add-option input").value
                  const li = `
                     <li>
                        <input type="text" name="questions[${questionCount}][options][]" value="${value}">
                        <button type="button">Delete</button>
                     </li>
                  `
                  container.querySelector("ul.options").insertAdjacentHTML("beforeend", li)
               })
               document.querySelector("#question_metabox").insertAdjacentElement("beforeend", wrapper.firstElementChild)
            }
         })
      })
   </script>
   <?php
}

function render_question_field($index, $questionText) {
   ?>
      <div class="question">
         <input 
            type="hidden" 
            name="questions[<?php echo $index; ?>][type]"
            value="text"
         >
         <label 
            for="question-<?php echo $index; ?>"
         >
            Question <?php echo is_string($index) ? $index : $index  + 1; ?>
         </label>
         <input 
            type="text" 
            id="question-<?php echo $index; ?>" 
            name="questions[<?php echo $index; ?>][question_text]" 
            value="<?php echo esc_attr($questionText); ?>"
         >
      </div>
   <?php
}

function render_question_checkbox_field($index, $questionText) {
   ?>
      <div class="question">
         <label 
            for="question-<?php echo $index; ?>"
         >
            Question Checkbox <?php echo is_string($index) ? $index : $index  + 1; ?>
         </label>
         <input 
            type="hidden" 
            name="questions[<?php echo $index; ?>][type]"
            value="checkbox"
         >
         <input 
            type="text" 
            id="question-<?php echo $index; ?>" 
            name="questions[<?php echo $index; ?>][question_text]" 
            value="<?php echo esc_attr($questionText); ?>"
         >
         <div class="options-container">
            <div class="add-option">
               <input type="text" placeholder="option">
               <button type="button" class="add">Add option</button>
            </div>
            <ul class="options">
               
            </ul>
         </div>
      </div>
   <?php
}

add_action("add_meta_boxes", "addMetaBoxes");

function saveQuestionMetabox($post_id) {
   if (isset($_POST['questions'])) {
      $questions = $_POST['questions'];

      $formattedQuestions = array();
      foreach ($questions as $question) {
         $questionType = $question['type'];
         $questionText = $question['question_text'];

         if ($questionType === 'text') {
            // Text question
            $formattedQuestions[] = array(
               'type' => 'text',
               'question_text' => $questionText
            );
         } elseif ($questionType === 'checkbox') {
            // Checkbox question
            $options = isset($question['options']) ? $question['options'] : array();
            $formattedQuestions[] = array(
               'type' => 'checkbox',
               'question_text' => $questionText,
               'options' => $options
            );
         }
      }

      update_field('questions', $formattedQuestions, $post_id); // Assuming 'questions' is the ACF field key
   }
}

add_action("save_post_question_form_step", "saveQuestionMetabox");