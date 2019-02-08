<?php
if (page()->form_name) {
  $form = $forms->render(page()->form_name);
  setting(["head_script" => setting("head_script") . $form->styles]);
  setting(["foot_script" => setting("foot_script") . $form->scripts]);
  echo "<div class='form'>" . $form . "</div>";
}