<?php
//get page id from input
$redirect = $sanitizer->name(wire('input')->get->redirect);
//get url from page id
$url = $pages->get($redirect)->url;

if($user->isLoggedin()) $session->logout();
$session->redirect($url);