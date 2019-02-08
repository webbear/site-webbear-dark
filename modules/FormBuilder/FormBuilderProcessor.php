<?php

/**
 * ProcessWire Inputfield Form Processor
 *
 * Handles the rendering and processing of forms for Form Builder.
 *
 * Copyright (C) 2018 by Ryan Cramer Design, LLC
 *
 * PLEASE DO NOT DISTRIBUTE
 *
 * @todo: Add a unique "id" attribute to the <form> tag and make the "action" attribute reference it. 
 * <form action='./#my-form'>
 *
 * @property FormBuilder $forms FormBuilder API variable
 * @property int $id Form ID number
 * @property int $saveFlags Flags for saving form submission (default: self::saveFlagsDB)
 * @property bool $skipSessionKey Require a unique session key for each form submission (for security)
 * @property string $formName name of the form
 * @property string $submitText text that appears on the submit button
 * @property string $honeypot name of field that, when populated, invalidates the form submission
 * @property array $turingTest array containing list of field names and required answers
 * @property string $emailTo email address to send form submissions to, may also be multiple (1 per line) or conditional (1 condition per line)
 * @property string $emailFrom email address (or field name where it resides) to make email from
 * @property string $emailFrom2 email "From:" address, if different from $emailFrom (which becomes a reply-to when this is used).
 * @property string $emailSubject subject of email that gets sent
 * @property bool $emailFiles Whether or not to use file attachments in email
 * @property string $responderTo field name (not email address) that WILL contain the submittor's email address (where the responder should be sent). CSV string for multiple.
 * @property string $responderFrom Email address that the responder email should be from
 * @property string $responderSubject Subject line for the responder email
 * @property string $responderBody Body for the responder email
 * @property string $successUrl URL to redirect to on successful form submission
 * @property string $successMessage message to display on successful form submission, assuming no successUrl was set
 * @property string $errorMessage message to display when a form error occurred
 * @property string $action2 URL to send duplicate submission to
 * @property array $action2_add array of name=value to add to duplicate submission
 * @property array $action2_remove array of field names to remove from duplicate submission
 * @property array $action2_rename array of field names rename before duplicate submission
 * @property string $akismet CSV string containing field names of: "name,email,content" (in that order)
 * @property bool $allowPreset allow form field values to be pre-set from GET variables?
 *
 * Settings specific to saving pages from submitted forms:
 * @property string $savePageParent path to parent page
 * @property string $savePageTemplate name of template
 * @property array $savePageFields array of 'processwire_field_id' => 'form_field_name'
 * @property int $savePageStatus status of saved page (0 = don't save page now)
 * @property bool|int $savePageAdjustName Adjust page name as needed to ensure it is unique? (default=true)
 * @property string $framework form framework, if in use
 * @property FormBuilderForm $fbForm
 * @property FormBuilderRender $fbRender
 * 
 * HOOKABLE METHODS
 * ================
 * @method InputfieldForm populate(array $data, $entryID) Populate $this->form with the [name=>value] data from the given associative array.
 * @method string render($id = 0) Render the form output, or follow-up success message. If $id is populated, it is the id of existing form entry.
 * @method string renderReady(InputfieldForm $form, $formFile = '', array $vars = array()) Called when ready to render, and returns rendered output. Note the $formFile and $vars arguments are only populated in embed method D. 
 * @method bool processInput($id = 0) Process input for submitted form. If $id is populated, it is the id of existing form entry. 
 * @method void processInputReady(InputfieldForm $form) Called right before $form->processInput() is called.
 * @method void processInputDone(InputfieldForm $form) Called after $form->processInput() and spam filtering is completed. 
 * @method int|bool saveForm(InputfieldForm $form, $id = 0) Save the form to the database entry, page, or email(s) per form action settings. If $id is populated, it is the id of an existing entry being saved.
 * @method int saveEntry(array $data) Save a form entry where $data is the given entry. Existing entry should have populated id property. Returns id of saved entry.
 * @method Page|null savePage(array $data, int $status = null, array $onlyFields = null) Save given entry $data to a Page. See method comments for additional details.
 * @method bool savePageCheckName(Page $page) Hook called before $page->save() to validate that page name is allowed. Returns false if save should be aborted. 
 * @method bool allowSavePageField(Page $page, $pageFieldName, $formFieldName, $value, array $entry) Allow the given field info to be saved in Page?
 * @method bool savePageField(Page $page, $name, $value, $entry) Deprecated, use allowSavePageField() hook above instead.
 * @method savePageReady(Page $page, array $data) Hook called right before Page is about to be saved
 * @method array savePageDone(Page $page, array $data, $isNew, array $onlyFields = null) Hook called after a page has been saved. 
 * @method bool emailForm(InputfieldForm $form, array $data) Email the form result to the administrator(s). Returns true on success, false on fail.
 * @method void emailFormReady(InputfieldForm $form, FormBuilderEmail $email) Called when $email object is ready, but message not yet sent. 
 * @method bool emailFormResponder(InputfieldForm $form, array $data) Send auto-responder email. Returns true on success, false on fail.
 * @method void emailFormResponderReady(InputfieldForm $form, FormBuilderEmail $email) Called when $email object ready, but message not yet sent.
 * @method void emailFormPopulateSkipFields(FormBuilderEmail $email, InputfieldForm $form) Called for all emails to specify field names to skip sending in email, i.e. `$email->setSkipFieldName($name);`
 * @method bool postAction2(array $data) Sends data to external URL specified in action2_* form settings. 
 * @method bool|string postAction2Ready($http, array $data, $method, $url, array $headers) Called when ready to send to external URL. Returns response string or boolean false on fail.
 * @method formSubmitSuccess(InputfieldForm $form) Called when form has been successfully submitted and saved. 
 * @method formSubmitError(InputfieldForm $form, array $errors) Called when there were errors that prevented successful submission of form. 
 * @method string renderSuccess($message) Render the given success message or success action string. 
 * @method string renderSuccessMessage($message, $markupTemplate = '') Render succcess message string only (called by renderSuccess). 
 * @method string renderSuccessRedirect($url) Render or execute a redirect to given $url (called by renderSuccess). 
 * @method string renderErrors() Render error messages. 
 * @method array renderErrorsReady(array $errors) Called when errors ready to render, hooks can optionally modify $event->return array of errors.
 * @method string renderError($error, $errorTemplate = '') Render single error message into markup.
 * @method string wrapOutput($out) Wraps all FormBuilder output
 *
 */

class FormBuilderProcessor extends WireData {

	/**
	 * These flags control what actions occur when a form is submitted. 
	 *
	 */
	const saveFlagDB = 1;		// save entry to database
	const saveFlagEmail = 2; 	// Send entries to email
	const saveFlagAction2 = 4; 	// Send entries to action2 (3rd party service)
	const saveFlagPage = 8; 	// Send entries to new pages
	const saveFlagExternal = 16; 	// Submit the form somewhere else (rendering all other options invalid)
	const saveFlagFilterSpam = 32; 	// Filter for spam
	const saveFlagResponder = 64; 	// Send an auto-responder email

	/**
	 * Instance of InputfieldForm created by this class
 	 *
	 */
	protected $form; 

	/**
	 * Form array that was passed to the constructor
	 *
	 */
	protected $formArray; 

	/**
	 * Keeps track of whether or not the form was successfully submitted (see isSubmitted method)
	 *
	 */
	protected $submitted = false; 

	/**
	 * Cache of our submitKey so we don't ever generate more than one per request
	 *
	 */
	protected $submitKey = '';

	/**
	 * Error messages generated from FormBuilderProcessor
	 *
	 */
	protected $errors = array();

	/**
	 * ID of inserted entry, if entry was saved to entries DB
	 *
	 */
	protected $entryID = 0;

	/**
	 * Construct the FormBuilderProcessor
	 *
	 * @param int $id
	 * @param array $formArray Array that defines the fields for this form, see examples.
	 *
	 */
	public function __construct($id, array $formArray) { 
		// form ID number
		$this->set('id', (int) $id);
		$this->formArray = $formArray; 
		$this->init();
		$this->form = $this->arrayToInputfields($formArray); 
	}

	/**
	 * Initialize the FormBilderProcessor's configuration variables
	 *
	 */
	protected function init() {

		// flags that indicate what actions should occur at form save time
		$this->set('saveFlags', self::saveFlagDB);

		// require a unique session key for each form submission (for security)
		$this->set('skipSessionKey', false); 

		// name of the form, used for auto generated email subject if needed
		$this->set('formName', ''); 

		// text that appears on the submit button
		$this->set('submitText', 'Submit');

		// name of field that, when populated, invalidates the form submission
		$this->set('honeypot', '');

		// array containing list of field names and required answers
		$this->set('turingTest', array()); 

		// email address to send form submissions to, may also be multiple (1 per line) or conditional (1 condition per line)
		$this->set('emailTo', ''); 		

		// email address (or field name where it resides) to use as the "reply-to" address
		$this->set('emailFrom', '');

		// The email "from" address
		$this->set('emailFrom2', ''); 

		// subject of email that gets sent
		$this->set('emailSubject', 'Form Submission'); 
	
		// use file attachments rather than links in email?
		$this->set('emailFiles', false);

		// field name (not email address) that WILL contain the submittor's email address (where the responder should be sent)
		$this->set('responderTo', '');

		// Email address that the responder email should be from
		$this->set('responderFrom', '');

		// Subject line for the responder email
		$this->set('responderSubject', '');

		// Body for the responder email
		$this->set('responderBody', '');

		// URL to redirect to on successful form submission
		$this->set('successUrl', ''); 

		// message to display on successful form submission, assuming no successUrl was set
		$this->set('successMessage', 'Thank you, your form has been submitted.'); 

		// message to display when a form error occurred
		$this->set('errorMessage', 'One or more errors prevented submission of the form. Please correct and try again.'); 

		// URL to send duplicate submission to
		$this->set('action2', '');

		// array of name=value to add to duplicate submission
		$this->set('action2_add', array()); 

		// array of field names to remove from duplicate submission
		$this->set('action2_remove', array()); 

		// array of field names rename before duplicate submission
		$this->set('action2_rename', array()); 

		// CSV string containing field names of: "name,email,content" (in that order)
		$this->set('akismet', '');

		// allow form field values to be pre-set from GET variables?
		$this->set('allowPreset', false); 

		// settings specific to saving pages from submitted forms
		$this->set('savePageParent', ''); 	// path to parent page
		$this->set('savePageTemplate', ''); 	// name of template
		$this->set('savePageFields', array()); 	// array of 'pw_field_id' => 'form_field_name'
		$this->set('savePageStatus', 0); 	// status of saved page (0 = don't save page now)
		$this->set('savePageAdjustName', true); // adjust page name as needed to make it unique?
	
		// form framework, if in use
		$this->set('framework', ''); 
	
		// FormBuilerForm object, if set
		$this->set('fbForm', null);
		
		// FormBuilderRender object, if set
		$this->set('fbRender', null);

	}
	
	public function setFbForm(FormBuilderForm $fbForm) {
		$this->set('fbForm', $fbForm);
	}
	
	public function setFbRender(FormBuilderRender $renderer) {
		$this->set('fbRender', $renderer);
	}

	/**
	 * Populate the form with the key=value data given in the array
	 * 
	 * @param array $data key=value associative array
	 * @param int $entryID The id of the entry the data is from
	 * @return InputfieldForm Form that was populated
	 *
	 */
	public function ___populate(array $data, $entryID) {

		$entryID = (int) $entryID; 
		$this->wire('session')->set('FormBuilderEntryID', $entryID);

		foreach($data as $key => $value) {

			$field = $this->form->getChildByName($key);
			if(!$field || !$field instanceof Inputfield) continue; 
			$field->attr('value', $value);

			if($field instanceof InputfieldFormBuilderInterface) {
				// populate extra values for InputfieldFormBuilder derived Inputfields
				/** @var Inputfield $field */
				if($entryID) $field->set('entryID', $entryID);
				$field->set('formID', $this->id);
			}
		}	
	
		// ensure the _savePage value is retained, but not manipulatable	
		if(isset($data['_savePage'])) {
			$field = $this->wire('modules')->get('InputfieldHidden');
			$field->attr('name', '_savePage'); 
			$field->attr('value', (int) $data['_savePage']); 
			$field->collapsed = Inputfield::collapsedHidden; // makes it non-manipulatable
			$this->form->prepend($field);
		}

		return $this->form;
	}

	/**
	 * Return the rendered form output, whether an actual form or the success message after submitted.
	 *
	 * @param int $id Optional ID of entry, if it already exists
	 * @return string
	 *
	 */
	public function ___render($id = 0) {

		$input = $this->wire('input');
		$config = $this->wire('config');
		$form = $this->wire('forms')->get((int) $this->id);
		
		if(!$form->hasPermission('form-submit')) {
			return $this->wrapOutput($this->_('This form is not available at your access level.'));
		}
		
		$preview = ($input->get('preview') || $input->post('FormBuilderPreview')) && $this->wire('user')->hasPermission('form-builder');
		$admin = $this->wire('page')->template == 'admin';
		$formFile = $config->paths->templates . "FormBuilder/form-$this->formName.php";
		
		if($preview || $admin || !is_file($formFile)) $formFile = null;

		$this->errors = array(); // ensure errors are clear
		$this->wire('session')->set('FormBuilderFormID', $this->id);

		if($this->skipSessionKey) $this->form->protectCSRF = false;

		// copyright header precedes output
		$copyright = "\n<!-- " . FormBuilderMain::RCD . " -->\n"; 
		$out = $formFile ? '' : $copyright;

		// check for valid license key
		if(!$this->forms->isValidLicense()) {
			return $this->wrapOutput("<p>Product key not detected for " . htmlentities($config->httpHost) . "</p>");
		}
		
		// load the framework used for this form
		if($this->framework) $form->framework = $this->framework;
		$framework = $this->forms->getFramework($form);
		if($framework) {
			$framework->ready();
			$framework->load();
			$this->form->addClass($framework->className());
		}

		// test if this is the form that was submitted	
		$submitKey = $this->input->post('_submitKey');
		$submitted = false;
		if($submitKey && strpos($submitKey, ":$this->formName:") !== false) {
			// JS looks for this landmark to know when to scroll the parent in an iframe to the form
			$out .= "<div id='FormBuilderSubmitted' data-name='$this->formName'></div>\n";
			// if submission was successful, return with success message
			if($this->processInput($id)) {
				$submitted = true; 
				if($formFile) {
					// control will be passed to the formFile
				} else {
					return $this->wrapOutput($out . $this->renderSuccess($this->successMessage));
				}
			}
		}

		// check if there were any errors produced by processInput or the form
		$errors = $this->getErrors();
		if(count($errors) && !$formFile) $out .= $this->renderErrors();

		// give the form a unique & predictable ID attribute
		$this->form->attr('id', 'FormBuilder_' . $this->form->name);
		$this->form->addClass('FormBuilder'); 
		$this->form->addClass('InputfieldNoFocus');

		if($this->input->get('export_d') && $this->wire('user')->hasPermission('form-builder')) {
			// generate the embed method D file
			$formFile = null;
			$texts = array('labels' => array(), 'descriptions' => array(), 'notes' => array());	
			foreach($this->form->getAll() as $inputfield) {
				$texts['labels'][$inputfield->name] = $inputfield->label;
				$texts['descriptions'][$inputfield->name] = $inputfield->description;
				$texts['notes'][$inputfield->name] = $inputfield->notes;	
				if($inputfield->label) $inputfield->label = "{pwfb:labels:$inputfield->name}";
				if($inputfield->description) $inputfield->description = "{pwfb:descriptions:$inputfield->name}";
				if($inputfield->notes) $inputfield->notes = "{pwfb:notes:$inputfield->name}";
				if($inputfield->className() == 'InputfieldSubmit') {
					$texts['labels'][$inputfield->name] = $inputfield->attr('value');
					$inputfield->attr('value', "{pwfb:labels:$inputfield->name}");
				}
			}
			$out .= $this->renderReady($this->form); 
			include_once(__DIR__ . '/FormBuilderMarkup.php');
			$m = new FormBuilderMarkup($out, $this->form, $framework, $texts);
			$cachePath = $config->paths->cache . 'FormBuilder/';
			$exportFile = $cachePath . "form-$this->formName.php";
			$m->saveTo($exportFile);
			$out = 
				"<div style='text-align:center;font-family:sans-serif;'>" . 	
					"<h3>" . $this->_('Form Markup Exported:') . "</h3>" . 
					"<p>$exportFile</p>" . 
					"<p><small>" . $this->_('You may close this window.') . "</small></p>" . 
				"</div>";
			unset($m);

		} else if(($this->input->get('preview') || $this->input->post('FormBuilderPreview')) && $this->wire('page')->editable()) {
			// we are in preview mode 
			$out .= $this->renderReady($this->form); 
			// add a hidden input for JS detection to add edit links to form fields
			$p = $this->wire('pages')->get("template=admin, name=" . FormBuilderMain::name); 
			if($p->id) $out = str_replace(
				"</form>", 
				"<input type='hidden' name='FormBuilderPreview' id='FormBuilderPreview' value='{$p->url}editField/?id={$this->id}&name=' />" . 
				"\n</form>", $out);
			
		} else if($formFile) {
			// we are rendering from a custom markup file in /site/templates/FormBuilder/	
			foreach($errors as $key => $error) {
				$errors[$key] = $this->wire('sanitizer')->entities($error);
			}
			
			$values = array();
			$labels = array();
			$descriptions = array();
			$notes = array();
			$sanitizer = $this->wire('sanitizer');
			
			foreach($this->form->getAll() as $inputfield) {
				$name = $inputfield->attr('name');
				$value = $inputfield->attr('value');
				if(is_object($value)) $value = (string) $value; 
				$values[$name] = $value;
				$labels[$name] = $sanitizer->entities($inputfield->label);
				$descriptions[$name] = $sanitizer->entities($inputfield->description);
				$notes[$name] = $sanitizer->entities($inputfield->notes);
				if($inputfield->className() == 'InputfieldSubmit') $labels[$name] = $sanitizer->entities($value);
			}
			
			$out .= $this->renderReady($this->form, $formFile, array(
				'submitted' => $submitted, 
				'errors' => $errors, 
				'values' => $values, 
				'labels' => $labels,
				'descriptions' => $descriptions,
				'notes' => $notes,
				'form' => $this->form, 
				'fbForm' => $this->fbForm, 
				'fbRender' => $this->fbRender, 
				'processor' => $this, 
				'framework' => $framework, 
				'successMessage' => $submitted ? $sanitizer->entities($this->successMessage) : '', 
			));
			
		} else {
			// normal form render
			$out .= $this->renderReady($this->form);
		}

		// insert the submitKey at the end of the form
		$out = str_replace('</form>', "\n\t" . $this->renderSubmitKey() . "\n</form>", $out);

		// if honeypot is here, give its wrapper a special class that hides it
		if($this->honeypot) $out = str_replace("wrap_Inputfield_{$this->honeypot}'", "wrap_Inputfield-'", $out);

		return $this->wrapOutput($out); 
	}

	/**
	 * Wraps all FormBuilder output 
	 * 
	 * @param string $out Output to wrap
	 * @return string
	 * 
	 */
	protected function ___wrapOutput($out) {
		return "<div class='FormBuilder FormBuilder-$this->formName'>\n$out\n</div><!--/.FormBuilder-->";
	}
	
	/**
	 * Hook called for render ready, returns the output of $form->render();
	 * 
	 * NOTE: the $formFile and $vars arguments are only populated when using embed method D (custom form file). 
	 * 
	 * @param InputfieldForm $form
	 * @param string $formFile Only present in embed method D
	 * @param array $vars Only present in embed method D
	 * @return string
	 * 
	 */
	protected function ___renderReady($form, $formFile = '', array $vars = array()) { 
		// render the form
		if($formFile) {
			return wireRenderFile($formFile, $vars);
		} 
		
		$form->columnWidthSpacing = (int) $this->wire('config')->inputfieldColumnWidthSpacing; 
		
		if(!$form->hasClass('InputfieldFormNoWidths')) {
			$classes = InputfieldWrapper::getClasses();
			$classes = explode(' ', $classes['form']);
			if(!in_array('InputfieldFormNoWidths', $classes)) $form->addClass('InputfieldFormWidths'); 
		}	
		
		return $form->render();
	}

	/** 
	 * Create a new submitKey containing number of fields, random component and session key
	 *
	 * @return string
	 *
	 */
	public function makeSubmitKey() {
		if($this->submitKey) return $this->submitKey;
		$numFields = count($this->form->children); 
		if(!$this->skipSessionKey) {
			// if we're also using a sessionKey, then append it to the submitKey and remember in session
			$sessionKey = md5(mt_rand() . microtime() . mt_rand()); 
			$this->session->set('FormBuilderSessionKey_' . $this->formName, $sessionKey);
		} else {
			$this->form->protectCSRF = false;
			$sessionKey = '0';
		}
		$submitKey = $numFields . ':' . $this->formName . ':' . $sessionKey; 
		$this->submitKey = $submitKey;
		return $submitKey;
	}

	/** 
	 * Render the submitKey in a hidden form field, ready to be output
	 *
	 * @param string $submitKey Supply existing submitKey to only render the input for it
	 * @return string
	 *
	 */
	public function renderSubmitKey($submitKey = '') {
		if(empty($submitKey)) $submitKey = $this->makeSubmitKey();
		return "<input type='hidden' name='_submitKey' value='$submitKey' />";
	}

	/** 
	 * check whether or not the form is submitted and if it's valid
	 *
	 * @param bool $testOnly Only tests the formName portion of the submitKey. 
	 * @return string|bool Returns the submitKey if valid, or boolean false if not.
	 *	Returns boolean true if valid in $testOnly mode. 
	 *
	 */
	public function validSubmitKey($testOnly = false) {

		// first check if form posted
		$submitKey = $this->input->post('_submitKey'); 
		if(empty($submitKey)) return false; 

		// extract the submitKey to the individual parts
		$parts = explode(':', $submitKey); 
		if(count($parts) !== 3) return false;
		list($numFields, $formName, $sessionKey) = $parts;
		$numFields = (int) $numFields;

		// if formName doesn't match up, it's not valid
		if($formName !== $this->formName) return false;

		// if we're only testing for a valid form name, we can exit now
		if($testOnly) return true; 

		// if session key is required, check that it is also correct
		if(!$this->skipSessionKey) {
			// if number of fields doesn't match up, it's not valid
			if($numFields != count($this->form->children)) return false; 
			$session = $this->wire('session');

			$sessionKeyName = 'FormBuilderSessionKey_' . $this->formName;
			$sessionKey2 = $session->get($sessionKeyName);
			if($sessionKey !== $sessionKey2) {
				// session key is invalid, making the form submission invalid
				// check if its a previous submit key, perhaps they just double submitted? 
				if($sessionKey === $session->get('FormBuilderSessionKeyLast')) {
					// if so, we'll acknowledge it
					$this->errors[] = $this->_('This form was already submitted.'); 
				}
				return false; 
			}
			$session->remove($sessionKeyName);
			$session->set('FormBuilderSessionKeyLast', $sessionKey2); 
		} else {
			if($sessionKey != "0") return false;
			$this->form->protectCSRF = false;
		}

		// reconstruct the submitKey just for added measure
		$submitKey = "$numFields:{$this->formName}:$sessionKey";
		return $submitKey; 
	}


	/**
	 * Process the input for a submitted form
	 *
	 * @param int $id Optional id of entry, if it already exists
	 * @return bool Whether the submission was successful
	 *
	 */
	protected function ___processInput($id = 0) {

		// determine if valid form was submitted and return if not
		if($this->validSubmitKey() === false) {
			if($this->input->post('_submitKey') && !count($this->errors)) $this->errors[] = $this->_('Invalid form submission');
			return false;
		}

		$filterSpam = $this->saveFlags & self::saveFlagFilterSpam;

		// if honeypot was populated, then do nothing but pretend it was successful
		if($filterSpam && $this->honeypot && strlen($this->input->post($this->honeypot))) return true; 

		// let the form process itself
		$this->processInputReady($this->form); 
		$this->form->processInput($this->input->post);

		if($filterSpam) {
			// perform optional turing test
			$this->processInputTuringTest();

			// perform optional Akismet spam filtering
			$this->processInputAkismet();
		}

		$this->processInputDone($this->form);
		
		// if errors occurred then trigger error hooks and return
		$errors = $this->getErrors(); 
		if(count($errors)) {
			$this->formSubmitError($this->form, $errors);
			return false;
		}

		$entryID = $this->saveForm($this->form, $id);
		if(is_int($entryID)) $this->entryID = $entryID;

		// one more check for errors after saveForm()
		$errors = $this->getErrors(); 
		if(count($errors)) {
			$this->formSubmitError($this->form, $errors);
			return false;
		}

		// trigger the success hook
		$this->formSubmitSuccess($this->form); 

		// if there is a success URL, redirect to it (not typically used)
		if($this->successUrl) $this->session->redirect($this->successUrl);

		return true; 
	}

	/**
	 * Hook called right before input is processed
	 * 
	 * @param InputfieldForm $form
	 * 
	 */
	protected function ___processInputReady(InputfieldForm $form) { }

	/**
	 * Hook called immediately after input is processed 
	 * 
	 * @param InputfieldForm $form
	 * 
	 */	
	protected function ___processInputDone(InputfieldForm $form) { }
	

	/**
	 * Check the submission against a turing test, when enabled
	 *
	 */
	protected function processInputTuringTest() {
		if(empty($this->turingTest)) return;

		foreach($this->turingTest as $fieldName => $answer) {
			$field = $this->form->get($fieldName); 				
			if(!$field || !$field instanceof Inputfield) continue; 
			if($field->attr('value') != $answer) $field->error($this->_('Incorrect answer')); 
		}
	}

	/**
	 * Check the submission against Akismet, when enabled
	 *
	 * Akismet check is not performed if other errors have already occurred.
	 *
	 */
	protected function processInputAkismet() {

		if(!$this->akismet || count($this->form->getErrors())) return;

		list($author, $email, $content) = explode(',', $this->akismet);

		$author = $this->form->get($author)->attr('value');
		$email = $this->form->get($email)->attr('value');
		$content = $this->form->get($content)->attr('value');

		require_once(dirname(__FILE__) . '/FormBuilderAkismet.php'); 	
		$akismet = new FormBuilderAkismet($this->wire('modules')->get('FormBuilder')->akismetKey); 

		if($akismet->isSpam($author, $email, $content)) {
			$this->errors[] = $this->_('Spam filter has been triggered'); 
		}
	}

	/**
	 * Save the form to the database entry, page, or email(s) per form action settings
	 *
	 * @param InputfieldForm $form
	 * @param int $id Optional id of entry, if it already exists
	 * @return int ID of inserted entry (if saving to entries database) or boolean true if not.
	 *
	 */
	protected function ___saveForm(InputfieldForm $form, $id = 0) {

		$data = array();
		$entryID = 0; 

		// prepare a $data array that is used by DB or action2 saves
		foreach($form->getAll() as $f) {
			if($f instanceof InputfieldWrapper) continue; 
			$value = $f->attr('value');
			if(is_object($value)) $value = (string) $value; 
			$name = $f->name; 
			$data[$name] = $value; 
		}

		// save the form to a page	
		if($this->saveFlags & self::saveFlagPage) {
			$data['_savePage'] = (int) ((string) $this->savePage($data));
			if($data['_savePage']) $data['_savePageTime'] = time();
		}

		// save the form to the DB
		if($this->saveFlags & self::saveFlagDB) {
			$data['id'] = $id; 
			$entryID = $this->saveEntry($data);
		}
		
		$data['entryID'] = $entryID; 

		// Email the form to recipient(s) if applicable
		if($this->saveFlags & self::saveFlagEmail) {
			if(!$this->emailForm($form, $data)) {
				$this->errors[] = $this->_('Unable to verify successful email delivery of this form submission.');
			}
		}			

		// Send an auto-responder if applicable
		if($this->saveFlags & self::saveFlagResponder) $this->emailFormResponder($form, $data);
	
		// if there is a secondary action, then initiate a duplicate post
		if(($this->saveFlags & self::saveFlagAction2) && $this->action2) $this->postAction2($data); 

		return $entryID;
	}

	/**
	 * Save form entry
	 * 
	 * Note: if it is an existing entry, a non-zero "id" property will appear in the given $data.
	 * 
	 * @param array $data Entry data
	 * @return int Entry ID
	 * 
	 */
	public function ___saveEntry(array $data) {
		require_once(dirname(__FILE__) . '/FormBuilderEntries.php');
		$entries = new FormBuilderEntries($this->id, $this->wire('database'));
		$entryID = (int) $entries->save($data); // returns entry ID
		return $entryID;
	}
	
	/**
	 * Save the form entry to a Page
	 * 
	 * - If saving an existing page, the ID of that page will be in `$data['_savePage']`
	 * - If `$status` omitted or null, it is determined automatically from form settings (most common call). 
	 * - If `$onlyFields` is an array, only the field names specified will be saved. 
	 *
	 * @param array $data Form data to send to page
	 * @param int $status Status of created pages
	 * @param array|null $onlyFields Save field names present in this array. If omitted, save all field names. Names are form field names.
	 * @return Page|null Created page or null on failure
	 *
	 */
	public function ___savePage(array $data, $status = null, $onlyFields = null) {

		// auto-detect status if not specified
		if(is_null($status)) $status = (int) $this->savePageStatus; 
		
		// if no template or parent specified in form settings, do not save page
		if(!$this->savePageTemplate || !$this->savePageParent) return null; 

		// if there is no status setting and this is not an existing page, then do not save it
		// if savePage contains a value, then proceed with save in order to update the page, regardless of status
		if(!$status && empty($data['_savePage'])) return null;

		$template = $this->wire('templates')->get($this->savePageTemplate); 
		$parent = $this->wire('pages')->get((int) $this->savePageParent);
		$page = null;
		$of = false;
	
		// if template or parent doesn't resolve to expected objects, do not proceed
		if(!$template || !$parent->id) return null;

		// check if we should send to existing page
		if(!empty($data['_savePage'])) { 
			$page = $this->wire('pages')->get((int) $data['_savePage']); 
			if($page->id) {
				// if existing page doesn't have same template/parent, then we don't use it
				if($page->template !== $template || $page->parent->id !== $parent->id) $page = null;
			} else {
				// can't find existing page that was previously exported with entry, so create new page
				$page = null;
				// if no status defined and page didn't exist, don't create a new one
				// if(!$this->savePageStatus) return null;
			}
		}
	
		// create a new page	
		if(is_null($page)) { 	
			$page = new Page();
			$page->parent = $parent;
			$page->template = $template; 
			$page->status = $status; 
			$isNew = true; 
		} else {
			$isNew = false;
			$of = $page->of();
			if($of) $page->of(false);
		}

		// fields that must be populated after first save
		$fileFields = array();

		// populate field values to the page
		foreach($this->savePageFields as $field_id => $formFieldName) {
		
			if(empty($formFieldName)) continue; 
		
			// if onlyFields argument specified, limit saved fields to those present in it
			if(is_array($onlyFields) && !in_array($formFieldName, $onlyFields)) continue; 

			// determine what kind of field we are saving based on type of $field_id
			if(ctype_digit("$field_id")) { 
				// custom field identified by field ID
				$field = $this->wire('fields')->get((int) $field_id); 
				if(!$field) continue; 
				$pageFieldName = $field->name; 

				// files must be handled after initial save
				if($field->type instanceof FieldtypeFile) {
					if($this->allowSavePageField($page, $pageFieldName, $formFieldName, $data[$formFieldName], $data)) {
						$fileFields[] = array($formFieldName, $pageFieldName);
					}
					continue; 
				}

			} else if($field_id === 'name') {
				// allowed native field
				$pageFieldName = $field_id; 

			} else {
				// unknown or invalid field
				continue;
			}

			$value = isset($data[$formFieldName]) ? $data[$formFieldName] : null;
			
			if($pageFieldName === 'name') {
				$value = $this->wire('sanitizer')->pageName($value, true);
			}
			$allowField = $this->allowSavePageField($page, $pageFieldName, $formFieldName, $value, $data); 
			if($allowField) {
				$oldValue = $page->get($pageFieldName); 
				if(is_object($oldValue)) {
					if($oldValue instanceof WireArray) $oldValue->removeAll();
				}
				$page->set($pageFieldName, $value); 
			}
		}

		// if there is no title, make sure one is populated
		if(!strlen($page->title)) $page->title = date('Y-m-d H:i:s');
		
		// make sure the page's name is allowed
		if(!$this->savePageCheckName($page)) return null;

		try {
			$this->savePageReady($page, $data);
			$page->save();
			
		} catch(Exception $e) {
			if($this->wire('config')->debug || $this->wire('user')->isSuperuser()) $this->error($e->getMessage()); 
		}

		// process any fields that can only be set for a page that exists (like file fields)
		if($page->id && count($fileFields)) {
			foreach($fileFields as $item) {
				list($formFieldName, $pageFieldName) = $item;
				$value = isset($data[$formFieldName]) ? $data[$formFieldName] : null;
				if(empty($value)) continue; 
				$pageField = $this->wire('fields')->get($pageFieldName); 
				$pageValue = $page->get($pageFieldName);
				if($pageField->maxFiles == 1 && count($pageValue)) $pageValue->removeAll(); // replace single files
				if(is_array($value)) foreach($value as $file) {
					try {
						$pageValue->add($file);
					} catch(Exception $e) {
						if($this->wire('config')->debug || $this->wire('user')->isSuperuser()) $this->error($e->getMessage()); 
					}
				}
				$page->set($pageFieldName, $pageValue);
			}
			try {
				$page->save();
			} catch(Exception $e) {
				if($this->wire('config')->debug || $this->wire('user')->isSuperuser()) $this->error($e->getMessage()); 
			}
		}

		if($page->id) $this->savePageDone($page, $data, $isNew, $onlyFields); 
		if($of) $page->of(true);

		return $page; 
	}

	/**
	 * Check and update page name as needed for uniqueness
	 * 
	 * @param Page $page
	 * @return bool Return true on success, or false if save should be aborted
	 * 
	 */
	protected function ___savePageCheckName(Page $page) {
		
		if(!strlen($page->name)) {
			$page->name = microtime();
		}
		
		$pageName = $page->name;
		$cnt = 0;
		
		do {
			$qty = $this->wire('pages')->count("parent_id=$page->parent_id, name=$page->name, id!=$page->id, include=all");
			if(!$qty || !$this->savePageAdjustName) break;
			$page->name = $pageName . '-' . (++$cnt);
		} while($qty);

		if($qty) {
			$this->error(
				sprintf(
					$this->_('Save page refused because name “%s” is already taken and unique names required.'), 
					$pageName
				)
			);
			return false;
		}
		
		if($page->name != $pageName) {
			$this->warning(
				sprintf(
					$this->_('Incremented page name to “%s” because requested name was already in use'),
					$page->name
				) . " ($pageName)"
			);
		}
		
		return true;
	}
	
	/**
	 * Returns true if given value should be saved, false if not
	 *
	 * @param Page $page Page being saved
	 * @param string $pageFieldName Name of Page field being saved
	 * @param string $formFieldName Name of form field the value came from
	 * @param string $value Value of field
	 * @param array $entry The entire original entry data (in case you need anything from it)
	 * @return bool
	 *
	 */
	protected function ___allowSavePageField(Page $page, $pageFieldName, $formFieldName, $value, $entry) {
		// support deprecated call for now
		if($this->savePageField($page, $pageFieldName, $value, $entry) === false) return false;
		return true;
	}

	/**
	 * Returns true if given value should be saved, false if not
	 * 
	 * @param Page $page
	 * @param string $name
	 * @param string $value
	 * @param array $entry The entire entry (in case you need anything from it)
	 * @return bool
	 * @deprecated Hook into allowSavePageField instead
	 *
	 */
	protected function ___savePageField(Page $page, $name, $value, $entry) { return true; }
	
	/**
	 * Hook called right before a Page is about to be saved
	 * 
	 * The given $data array is for convenience, but cannot be modified. You can modify $page though. 
	 * 
	 * @param Page $page
	 * @param array $data Entry data (cannot be modified)
	 * 
	 */
	protected function ___savePageReady(Page $page, array $data) { }

	/**
	 * Hook called right after a page is saved
	 * 
	 * @param Page $page Page that was saved
	 * @param array $data Entry data that was populated to page
	 * @param bool $isNew Was it a new page before it was saved?
	 * @param null|array $onlyFields Saved field names present in this array. If omitted, all mapped field names were saved. Names are form field names.
	 * @return array Return entry data (probably not useful)
	 * 
	 */
	protected function ___savePageDone(Page $page, array $data, $isNew, $onlyFields) { return $data; }

	/**
	 * Email the form result to the administrator(s)
	 *
	 * @param InputfieldForm $form 
	 * @param array $data Entry data
	 * @param string $emailTo Alternate "to" email address, if something different than what’s defined in form settings. 
	 * @return bool Whether it was successful
	 *
	 */
	public function ___emailForm(InputfieldForm $form, array $data, $emailTo = '') {

		if(!strlen($emailTo)) $emailTo = $this->emailTo;
		if(!strlen($emailTo)) return false;		

		require_once(dirname(__FILE__) . '/FormBuilderEmail.php');
		
		$email = new FormBuilderEmail($form);
		$email->to = $emailTo;
		$email->replyTo = $this->emailFrom;
		$email->from = $this->emailFrom2;
		$email->subject = $this->emailSubject;
		$email->setRawFormData($data); 
		$email->setUseFileAttachments((bool) $this->emailFiles);

		$this->emailFormPopulateSkipFields($email, $form);
		$this->emailFormReady($form, $email);

		return $email->send('email-administrator');
	}
	
	/**
	 * Hook called before email is sent to administrator
	 *
	 * @param InputfieldForm $form
	 * @param FormBuilderEmail $email
	 *
	 */
	protected function ___emailFormReady(InputfieldForm $form, FormBuilderEmail $email) { }


	/**
	 * Email the form result to the sending (auto-responder)
	 *
	 * @param InputfieldForm $form 
	 * @param array $data
	 * @return bool Whether it was successful
	 *
	 */
	protected function ___emailFormResponder(InputfieldForm $form, array $data) {

		if(!strlen($this->responderTo)) return false;		
		
		require_once(dirname(__FILE__) . '/FormBuilderEmail.php');

		$email = new FormBuilderEmail($form);
		$email->from = $this->responderFrom;
		$email->subject = $this->responderSubject;
		$email->body = $this->responderBody;
		$email->setRawFormData($data);

		$this->emailFormPopulateSkipFields($email, $form);
		$this->emailFormResponderReady($form, $email);
		
		$numSent = 0;
		$numTotal = 0;
		
		foreach(explode(',', $this->responderTo) as $fieldName) {
			$field = $form->get($fieldName);
			if(!$field) continue;
			$responderTo = $this->wire('sanitizer')->email($field->attr('value'));
			if(!strlen($responderTo)) continue;
			$email->to = $responderTo;
			$email->setTemplateVar('emailField', $fieldName);
			if($email->send('email-autoresponder')) $numSent++;
			$numTotal++;
		}

		return $numSent == $numTotal;
	}

	/**
	 * Hook called before email is sent to autoresponder
	 *
	 * @param InputfieldForm $form
	 * @param FormBuilderEmail $email
	 *
	 */
	protected function ___emailFormResponderReady(InputfieldForm $form, FormBuilderEmail $email) { }

	/**
	 * Hookable method for populating fields that should be skipped in an email
	 * 
	 * @param FormBuilderEmail $email
	 * @param InputfieldForm $form
	 * 
	 */
	protected function ___emailFormPopulateSkipFields(FormBuilderEmail $email, InputfieldForm $form) {
		if($this->honeypot) $email->setSkipFieldName($this->honeypot);
	}


	/**
	 * Post a duplicate copy of the form to another URL
	 *
	 * @param array $data
	 * @return bool True on success, false on fail
	 * 
	 */
	protected function ___postAction2(array $data) {

		unset($data['id'], $data[$this->formName . '_submit']); 

		// remove fields
		foreach($this->action2_remove as $name) {
			unset($data[$name]); 
		}	
		// add fields
		foreach($this->action2_add as $name => $value) {
			$data[$name] = $value; 
		}
		// rename fields
		foreach($this->action2_rename as $name => $newName) {
			if(!array_key_exists($name, $data)) continue; 
			$value = $data[$name]; 
			unset($data[$name]); 
			$data[$newName] = $value; 
		}

		$url = $this->action2;
		$method = 'post';

		// allow for specifying the method as part of the URL
		// i.e. GET:http://www.domain.com/ (default is POST)
		if(preg_match('/^(GET|POST):(.+)$/i', $url, $matches)) {
			$url = $matches[2]; 
			$method = strtolower($matches[1]);
		}
		
		$headers = array(
			'referer' => $this->wire('page')->httpUrl(), 
			'User-Agent' => 'ProcessWire FormBuilder/3 (+https://processwire.com)'
		);

		// post the data
		$http = new WireHttp();
		$response = $this->postAction2Ready($http, $data, $method, $url, $headers);
		
		if($response === false) {
			$this->forms->formLog($this->form, "Failed HTTP $method to $url - " . $http->getError());
		}

		return $response !== false;
	}

	/**
	 * Called when postAction2 is ready to send
	 * 
	 * - You can hook BEFORE this to modify the arguments before they are used in the HTTP request.
	 * - You can hook AFTER this to analyze the returned $response.
	 * 
	 * @param WireHttp $http 
	 * @param array $data Array of data that is being sent
	 * @param string $method Send method of either "get" or "post"
	 * @param string $url URL that data is being sent to
	 * @param array $headers Additional HTTP headers to include in the request
	 * @return bool|string Returns response string on success or boolean false on fail
	 * 
	 */
	protected function ___postAction2Ready($http, array $data, $method, $url, array $headers) {
		
		foreach($headers as $name => $value) {
			$http->setHeader($name, $value);
		}
		
		if(strtolower($method) == 'get') {
			$response = $http->get($url, $data);
		} else {
			$response = $http->post($url, $data);
		}
		
		return $response;
	}
	
	/**
	 * Called upon successful form submission
	 *
	 * Intended for hooks to listen to. 
	 *
	 * @param InputfieldForm $form
	 *
	 */
	protected function ___formSubmitSuccess(InputfieldForm $form) {
		$this->submitted = true; 
	}

	/**
	 * Called upon a form submission error, for hooks to listen to.
	 *
	 * @param InputfieldForm $form
	 * @param array $errors Array of errors that occurred (strings)
	 *
	 */
	protected function ___formSubmitError(InputfieldForm $form, array $errors) {
		$this->submitted = false;
	}

	/**
	 * Render the given success message for output
	 *
	 * @param string $message
	 * @return string
	 *
	 */
	protected function ___renderSuccess($message) {
	
		$message = trim($message);
		$out = 'Success';
		$successUrl = '';

		if(ctype_digit("$message")) {
			$page = $this->pages->get((int) $message);
			if($page->id) $successUrl = $page->url;
			
		} else if(stripos($message, 'http://') === 0 || stripos($message, 'https://') === 0) {
			$successUrl = $this->wire('sanitizer')->url($message);

		} else if(strpos($message, 'markdown:') === 0 || strpos($message, 'html:') === 0 || strpos($message, 'text:') === 0) {
			$out = $this->renderSuccessMessage($message);

		} else {
			
			// With the regex below, we are sifting through the success message to determine if it is just text, a URL or a URL:field
			// Variable Positions: 1 ........... 2 . 3 ................. 4 .....
			if(!preg_match('{^(/[-_a-z0-9/]+|\d+)(:?)((?:[_a-zA-Z0-9]+)?)(\?.*)?$}', $message, $matches)) {
				// if not a path then populate a simple text success message
				$out = $this->renderSuccessMessage($message);
				
			} else if(strlen($matches[2]) && strlen($matches[3])) {
				// we have matched a $message is in the format: /path/to/page/ or /path/to/page/:field or 123:field
				// pull the field from /path/to/page
				$page = $this->pages->get($matches[1]); 
				$field = $matches[3]; 
				$value = $page->get($field); 
				if(strlen($value)) {
					$out = "<div class='InputfieldMarkup'><div class='InputfieldContent'>$value</div></div>";
				}
				
			} else {
				// just a redirect URL
				$successUrl = $matches[1]; 
				// page path
				if(strpos($successUrl, '?') === false) {
					// attempt to tie the path to page, in case site is running from subdir, path can start non-subdir
					$page = $this->pages->get($successUrl); 
					if($page->id) $successUrl = $page->url; 
				}
				if(isset($matches[4])) $successUrl .= $matches[4]; // opitonal query string
			}
		}

		if($successUrl) {
			// JS redirect required since we will be redirecting the parent window
			$out = $this->renderSuccessRedirect($successUrl);
		}

		return $out;
	}

	/**
	 * Render a success message
	 * 
	 * @param string $message Message to render
	 * @param string $markupTemplate Optional markup template containing {out} placeholder where message is inserted
	 * @return string
	 * 
	 */
	protected function ___renderSuccessMessage($message, $markupTemplate = '') {
		if(empty($markupTemplate)) {
			$markup = InputfieldWrapper::getMarkup();
			$markupTemplate = $markup['success'];
			if(empty($markupTemplate)) $markupTemplate = "<div>{out}</div>";
		}
		
		if(strpos($message, 'markdown:') === 0) {
			$format = 'markdown';
		} else if(strpos($message, 'html:') === 0) {
			$format = 'html';
		} else if(strpos($message, 'text:') === 0) {
			$format = 'text';
		} else {
			$format = '';
		}
		
		$isOriginal = $message == $this->successMessage;
	
		if($format) {
			list(,$message) = explode("$format:", $message);
		}
		
		if($isOriginal && $format === 'html') {
			// leave as-is
			$out = str_replace('{out}', $message, $markupTemplate); 
		} else if($isOriginal && $format === 'markdown') {
			$message = $this->wire('sanitizer')->entitiesMarkdown($message, true);
			$out = str_replace('{out}', $message, $markupTemplate); 
		} else {
			$message = htmlentities($message, ENT_QUOTES, "UTF-8");
			$out = nl2br(str_replace('{out}', $message, $markupTemplate)); 
		}
		
		return $out;
	}

	/**
	 * Render a success redirect
	 * 
	 * @param string $url URL to redirect to
	 * @return string By default returns a JS script tag to perform redirect
	 * 
	 */
	protected function ___renderSuccessRedirect($url) {
		return
			"<script type='text/javascript'>window.top.location.href='$url';</script>" .
			"<noscript><a href='$url'>$url</a></noscript>";
	}

	/**
	 * Render the given error messages for output
	 *
	 * @param array $errors Errors to render (default=auto detect)
	 * @return string
	 *
	 */
	protected function ___renderErrors($errors = array()) {

		$markup = InputfieldWrapper::getMarkup();
		$debug = InputfieldForm::debug; 
		$out = '';

		// prepend our standard error message to the top
		if(empty($errors)) {
			$errors = $this->getErrors($debug);
			array_unshift($errors, $this->errorMessage);
		}
		
		$errors = $this->renderErrorsReady($errors); 
	
		foreach($errors as $error) {
			$out .= $this->renderError($error, $markup['error']);
		}
		
		if(strlen($out)) {
			$out = "<div class='FormBuilderErrors'>$out</div>";
		}

		/*
		if($debug) {
			$tpl = $this->wire('forms')->markup_success;
			foreach($this->form->messages() as $message) {
				$message = htmlentities($message, ENT_QUOTES, "UTF-8"); 
				$out .= str_replace('{out}', $message, $tpl); 
			}
		}
		*/

		return $out; 
	}

	/**
	 * Called when errors about to be rendered
	 * 
	 * Hooks can optionally modify the $errors by modifying the $event->return value
	 * 
	 * @param array $errors
	 * @return array
	 * 
	 */
	protected function ___renderErrorsReady(array $errors) {
		return $errors;
	}

	/**
	 * Render an error message into markup
	 * 
	 * @param string $error Error message to render
	 * @param string $errorTemplate Markup template for error, has {out} where error message is inserted. Omit to use module setting.
	 * @return string
	 * 
	 */
	protected function ___renderError($error, $errorTemplate = '') {
		if(empty($errorTemplate)) {
			$markup = InputfieldWrapper::getMarkup();
			$errorTemplate = $markup['error'];
			if(empty($errorTemplate)) $errorTemplate = "<div>{out}</div>";
		}
		$error = htmlentities($error, ENT_QUOTES, "UTF-8");
		$out = str_replace('{out}', $error, $errorTemplate);
		return $out;
	}

	/**
	 * Given a form configuration array, create an InputfieldForm from it
	 *
	 * @param array $a Form configuration array
	 * @param InputfieldWrapper $inputfields For internal/recursive use only
	 * @return InputfieldForm
	 *
	 */
	protected function arrayToInputfields(array $a, $inputfields = null) {

		$language = null;
		if($this->wire('languages')) {
			$language = $this->wire('user')->language; 
			if($language && $language->isDefault()) $language = null;
		} 

		if(is_null($inputfields)) {
			// start a new form
			$inputfields = $this->wire('modules')->get('InputfieldForm'); 
			$inputfields->attr('method', $a['method']); 
			$inputfields->attr('action', $a['action']); 
			if(!empty($a['target'])) $inputfields->attr('target', $a['target']); 
		
			// make sure it starts where we expect
			if($a['type'] == 'Form') {
				$inputfields->attr('id+name', $a['name']); 
				$this->formName = $a['name'];
				foreach($a as $k => $v) {
					if($this->$k !== null) $this->set($k, $v); 
					if($language) {
						// swap language value with default, when applicable
						if(!empty($a["$k$language"])) $this->set($k, $a["$k$language"]); 
					}
				}
				$a = isset($a['children']) ? $a['children'] : array(); 
			}
			$isForm = true;
		} else $isForm = false;

		foreach($a as $name => $data) {

			if(!is_array($data) || empty($data['type'])) continue; 
			
			/** @var Inputfield|InputfieldWrapper $f */
			$f = $this->wire('modules')->get('Inputfield' . $data['type']); 		
			if(!$f) $f = $this->wire('modules')->get('InputfieldText'); 
			$f->attr('name', $name); 
			$f->attr('id', 'Inputfield_' . $name); 
			$f->set('formBuilder', true); // in case any Inputfields need to know this context
			$f->set('hasFieldtype', false); // in case any Inputfields need to know this context
			$f->setParent($inputfields); 

			if($f instanceof InputfieldFormBuilderInterface) {
				// set extra values to InputfieldFormBuilder derived Inputfields
				$f->set('processor', $this);
				$f->set('formID', $this->id); 
			}

			foreach($data as $key => $value) {
				if(in_array($key, array('type', 'children'))) continue; 
				$f->$key = $data[$key];
			}

			if($language) foreach(array('label', 'description', 'notes', 'placeholder') as $key) {
				$langKey = $key . $language->id; 
				$langVal = $f->$langKey;
				if(strlen($langVal)) $f->$key = $langVal;
			}

			if(!empty($data['children']) && $f instanceof InputfieldWrapper) {
				// this field contains children, convert them
				$this->arrayToInputfields($data['children'], $f);	

			} else if($this->allowPreset && !is_null($this->input->get($name))) {
				// a value is being pre-set from a GET var
				$f->processInput($this->input->get); 	
			}

			$inputfields->add($f); 
		}	

		if($isForm) {
			$submit = $this->wire('modules')->get('InputfieldSubmit');	
			$submit->attr('id+name', $this->formName . '_submit'); 
			$submit->attr('value', $this->submitText); 
			if($language) {
				$value = $this->get("submitText$language"); 
				if(strlen($value)) $submit->attr('value', $value); 
			}
			$inputfields->add($submit);
		}

		return $inputfields;
	}

	/**
	 * Get an array of all values from this form
	 *
	 * Should be called only after successful form submission, see isSubmitted() method
	 *
	 * @return array Values indexed by inputfield 'name' attribute
	 *
	 */
	public function getValues() {

		$values = array();
		$skipTypes = array(
			'InputfieldMarkup',
			'InputfieldWrapper',
			'InputfieldSubmit',
			);

		$inputfields = $this->form->getAll();

		foreach($inputfields as $f) {
			$skip = false;
			foreach($skipTypes as $type) if($f instanceof $type) $skip = true; // if(is_a($f, $type)) $skip = true; 
			if($skip) continue; 
			$name = $f->attr('name'); 
			$value = $f->attr('value'); 
			$values[$name] = $value; 
		}

		return $values; 
	}

	/**
	 * Was the form successfully submitted? 
	 *
	 * @return bool
	 *
	 */
	public function isSubmitted() {
		return $this->submitted; 
	}

	/**
	 * Get the constructed form 
	 *
	 * @return InputfieldForm
	 *
	 */
	public function getInputfieldsForm() {
		return $this->form; 
	}

	/**
	 * Get the array upon which this form is based (same as what was passed to constructor)
	 *
	 * @return array
	 *
	 */
	public function getFormArray() {
		return $this->formArray; 
	}

	/**
	 * Get the FormBuilderEntries object for this form
	 * 
	 * @return FormBuilderEntries
	 * 
	 */
	public function getEntries() {
		return $this->wire('forms')->get($this->formName)->entries();
	}

	/**
	 * Get the current entry ID, or 0 if not present
	 * 
	 * @return int
	 * 
	 */
	public function getEntryID() {
		return $this->entryID; 
	}

	/**
	 * Get the current form entry, or null if not present
	 * 
	 * @return array|null
	 * 
	 */
	public function getEntry() {
		return $this->entryID ? $this->getEntries()->get($this->entryID) : null;
	}

	/**
	 * Return an array of errors that occurred (strings)
	 *
	 * @param bool $all When true, all errors are included. When false, field-specific errors (displayed inline) are excluded.
	 * @return array Will be blank if no errors. 
	 *
	 */
	public function getErrors($all = true) {
		if($all) {
			$errors = $this->form->getErrors(); 
		} else {
			$errors = array();
		}
		// prepend any self generated errors
		foreach($this->errors as $error) {
			array_unshift($errors, $error); 
		}
		return $errors;
	}
}

